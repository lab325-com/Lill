
import UIKit
import Toast
import SwiftyStoreKit

// Specify the decimal place to round to using an enum
public enum RoundingPrecision {
    case ones
    case tenths
    case hundredths
}

// Round to the specific decimal place
public func preciseRound(
    _ value: Double,
    precision: RoundingPrecision = .ones) -> Double
{
    switch precision {
    case .ones:
        return round(value)
    case .tenths:
        return round(value * 10) / 10.0
    case .hundredths:
        return round(value * 100) / 100.0
    }
}

enum SubscribeType: String, CaseIterable {
    case yearProduct = "com.lill.subscription.yearly"
    case monthProduct = "com.lill.subscription.monthly"
    
    
    func priceLabel(sub: PaymentsModel) -> String {
        switch self {
        case .yearProduct:
            return "\(sub.currencySymbol ?? "$") \(String(format: "%.2f", sub.price))"
        case .monthProduct:
            return "\(sub.currencySymbol ?? "$") \(String(format: "%.2f", sub.price))"
        }
    }
    
    func billed(sub: PaymentsModel) -> String {
        switch self {
        case .yearProduct:
            return  RLocalization.subscription_recurring_yearly.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .monthProduct:
            return RLocalization.subscription_recurring.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
    }
}

class SubcribeController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var yearView: ShadowView!
    @IBOutlet weak var mounthView: ShadowView!
    
    @IBOutlet weak var paywallTitleLabel: UILabel!
    @IBOutlet weak var paywallSubLabel: UILabel!
    
    @IBOutlet weak var yearTitleLabel: UILabel!
    @IBOutlet weak var yearPriceLabel: UILabel!
    @IBOutlet weak var yearBilledLabel: UILabel!
    @IBOutlet weak var yearSaveLabel: UILabel!
    @IBOutlet weak var yearSubscribeButton: UIButton!
    
    @IBOutlet weak var monthTitleLabel: UILabel!
    @IBOutlet weak var monthPriceLabel: UILabel!
    @IBOutlet weak var monthRecuringLabel: UILabel!
    @IBOutlet weak var monthSubscribeButton: UIButton!
    
    @IBOutlet weak var cancelAnyTimeLabel: UILabel!
    @IBOutlet weak var restoreButton: UIButton!
    
    @IBOutlet weak var orChangeLabel: UILabel!
    @IBOutlet weak var termsButton: UIButton!
    @IBOutlet weak var privacyButton: UIButton!
    
    @IBOutlet weak var rulesLabel: UILabel!
    
    @IBOutlet weak var saveViewFirst: UIView!
    @IBOutlet weak var saveViewSecond: UIView!
    
    @IBOutlet weak var unsubscribeView: UIView!
    @IBOutlet weak var unsubscribeButton: UIButton!
    @IBOutlet weak var activeView: UIView!
    @IBOutlet weak var activeLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private lazy var presenter = SubscribePresenter(view: self)
    private var fistSub = SubscribeType.yearProduct
    private var secondSub = SubscribeType.monthProduct
    var controller: String
    
    private let yourAttributes: [NSAttributedString.Key: Any] = [
        .font: UIFont.systemFont(ofSize: 13),
        .foregroundColor: UIColor.black,
        .underlineStyle: NSUnderlineStyle.single.rawValue
    ]
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(controller: String) {
        self.controller = controller
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AnalyticsHelper.sendFirebaseScreenEvent(screen: .purchase_screen)
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        unsubscribeButton.setTitle(RLocalization.subscription_unsubscribe.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        activeLabel.text = RLocalization.subscription_active.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        unsubscribeView.layer.borderColor = UIColor.white.cgColor
        unsubscribeView.layer.borderWidth = 1
        
        yearView.alpha = 0.0
        mounthView.alpha = 0.0
        
        presenter.retriveProduct(id: [SubscribeType.yearProduct.rawValue, SubscribeType.monthProduct.rawValue])
        
        let attributeString = NSMutableAttributedString(
            string: RLocalization.subscription_restore.localized(PreferencesManager.sharedManager.languageCode.rawValue),
            attributes: yourAttributes
        )
        restoreButton.setAttributedTitle(attributeString, for: .normal)
        
    
        yearSaveLabel.text = RLocalization.subscription_save_33.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        yearSubscribeButton.setTitle(RLocalization.subscription_subscribe.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        monthSubscribeButton.setTitle(RLocalization.subscription_subscribe.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        cancelAnyTimeLabel.text = RLocalization.subscription_cancel_any_time.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        termsButton.setTitle(RLocalization.subscription_terms.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        privacyButton.setTitle(RLocalization.subscription_privacy.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        restoreButton.setTitle(RLocalization.subscription_restore.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        rulesLabel.text = RLocalization.subscription_description.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        checkSubscribeUI()
    }
    
    private func checkSubscribeUI() {
        if KeychainService.standard.me?.access.subscription?.name != nil {
            paywallTitleLabel.text = RLocalization.subscription_your_plan.localized(PreferencesManager.sharedManager.languageCode.rawValue)
            paywallSubLabel.text = RLocalization.subscription_thanks_subscription.localized(PreferencesManager.sharedManager.languageCode.rawValue)
            
            cancelAnyTimeLabel.isHidden = true
            restoreButton.isHidden = true
            orChangeLabel.isHidden = false
        } else {
            paywallTitleLabel.text = RLocalization.subscription_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
            paywallSubLabel.text = RLocalization.subscription_sub_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
            
            cancelAnyTimeLabel.isHidden = false
            restoreButton.isHidden = false
            orChangeLabel.isHidden = true
        }
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func actionUnsubscribe(_ sender: UIButton) {
        AnalyticsHelper.sendFirebaseEvents(events: .unsubscribe)
        
        guard let urlSubscriptions = URL(string: "https://apps.apple.com/account/subscriptions") else { return }
        UIApplication.shared.open(urlSubscriptions)
    }
    
    @IBAction func closeAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func actionYearSubscription(_ sender: UIButton) {
        AnalyticsHelper.sendFirebaseEvents(events: .start_subscription_process, params: ["subscription_type": "year"])
        AnalyticsHelper.sendAppsFlyerEvent(event: .appsflyer_start_subscription_process, values: ["subscription_type": "year"])
        AnalyticsHelper.sendFacebookEvent(event: .fb_start_subscription_process, values: ["subscription_type": "year"])
        
        presenter.purchase(id: self.fistSub.rawValue, controller: String(describing: SubcribeController.self)) { [weak self] result, error in
            if result {
                self?.dismiss(animated: true, completion: nil)
            } else {
                self?.view.makeToast(error)
            }
        }
    }
    
    @IBAction func actionMonthSubscription(_ sender: UIButton) {
        AnalyticsHelper.sendFirebaseEvents(events: .start_subscription_process, params: ["subscription_type": "mounth"])
        AnalyticsHelper.sendAppsFlyerEvent(event: .appsflyer_start_subscription_process, values: ["subscription_type": "mounth"])
        AnalyticsHelper.sendFacebookEvent(event: .fb_start_subscription_process, values: ["subscription_type": "mounth"])
        
        presenter.purchase(id: self.secondSub.rawValue, controller: String(describing: SubcribeController.self)) { [weak self] result, error in
            self?.checkSubscribeUI()
            if result {
                self?.dismiss(animated: true, completion: nil)
            } else {
                self?.view.makeToast(error)
            }
        }
    }
    
    @IBAction func actionRestore(_ sender: UIButton) {
        presenter.restore { [weak self] result in
            self?.checkSubscribeUI()
        }
    }
    
    @IBAction func actionTerms(_ sender: UIButton) {
        if let url = URL(string: "https://mob325.com/lill/terms_and_conditions.html") {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func actionPrivacy(_ sender: UIButton) {
        if let url = URL(string: "https://mob325.com/lill/privacy_policy.html") {
            UIApplication.shared.open(url)
        }
    }
}

//----------------------------------------------
// MARK: - SubscribeOutputProtocol
//----------------------------------------------

extension SubcribeController: SubscribeOutputProtocol {
    func successRetrive() {
        UIView.animate(withDuration: 0.3) { [weak self] in
            guard let `self` = self else { return }
            
            var selectedSub: SubscribeType?
            
            self.unsubscribeView.isHidden = true
            self.activeView.isHidden = true
            
            if let name = KeychainService.standard.me?.access.subscription?.name, let buyType = SubscribeType(rawValue: name) {
                self.unsubscribeView.isHidden = false
                self.activeView.isHidden = false
                selectedSub = buyType
                self.fistSub = buyType
                self.yearSubscribeButton.isHidden = true
                
                if buyType == self.secondSub {
                    self.secondSub = SubscribeType.yearProduct
                }
            }
            
            self.saveViewFirst.isHidden = self.fistSub == .monthProduct ? true : false
            self.saveViewSecond.isHidden = self.secondSub == .monthProduct ? true : false

            self.yearView.backgroundColor = self.fistSub == selectedSub ? UIColor(rgb: 0x7CDAA3) : UIColor.white.withAlphaComponent(0.7)
            self.mounthView.backgroundColor = self.secondSub == selectedSub ? UIColor(rgb: 0x7CDAA3) : UIColor.white.withAlphaComponent(0.7)
            
            self.yearTitleLabel.textColor = self.fistSub == selectedSub ? UIColor.white : UIColor.black
            self.yearTitleLabel.font = self.fistSub == selectedSub ? UIFont.boldSystemFont(ofSize: 17) : UIFont.systemFont(ofSize: 15)
            
            if selectedSub == .yearProduct {
                self.saveViewFirst.isHidden = true
            }
            
            if let sub = self.presenter.paymentsInfo.first(where: {$0.product == self.fistSub.rawValue}) {
                
                self.yearTitleLabel.text = "\(sub.number) \(sub.period.capitalized)"
                self.yearBilledLabel.text = self.fistSub.billed(sub: sub)
                
                self.yearPriceLabel.text = SubscribeType.yearProduct.priceLabel(sub: sub)
                self.yearView.alpha = 1.0
            }
            
            if let sub = self.presenter.paymentsInfo.first(where: {$0.product == self.secondSub.rawValue}) {
                self.monthTitleLabel.text = "\(sub.number) \(sub.period.capitalized)"
                
                self.monthPriceLabel.text = SubscribeType.monthProduct.priceLabel(sub: sub)
                self.monthRecuringLabel.text = self.secondSub.billed(sub: sub)
                self.mounthView.alpha = 1.0
            }
        }
    }
    
    func failure(error: String) {
        
    }
}
