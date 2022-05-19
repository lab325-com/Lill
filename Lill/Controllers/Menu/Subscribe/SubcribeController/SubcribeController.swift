
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
    case lifetime50Product = "com.lill.subscription.lifetime.50"
    case year50Product = "com.lill.subscription.yearly.50"
    case yearProduct = "com.lill.subscription.yearly"
    case monthProduct = "com.lill.subscription.monthly"
    case weekProduct = "com.lill.subscription.weekly"
    
    func priceLabel(sub: PaymentsModel) -> String {
        switch self {
        case .lifetime50Product:
            return "\(sub.currencySymbol ?? "$") \(String(format: "%.2f", sub.price))"
        case .year50Product, .yearProduct:
            return "\(sub.currencySymbol ?? "$") \(String(format: "%.2f/%@", sub.price, RLocalization.subscribe_year.localized(PreferencesManager.sharedManager.languageCode.rawValue)))"
        case .monthProduct:
            return "\(sub.currencySymbol ?? "$") \(String(format: "%.2f/%@", sub.price, RLocalization.subscribe_month.localized(PreferencesManager.sharedManager.languageCode.rawValue)))"
        case .weekProduct:
            return "\(sub.currencySymbol ?? "$") \(String(format: "%.2f/%@", sub.price, RLocalization.subscribe_week.localized(PreferencesManager.sharedManager.languageCode.rawValue)))"
        }
    }
    
    func infoLabel(sub: PaymentsModel) -> String {
        switch self {
        case .lifetime50Product:
            return RLocalization.subscription_one_time.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .year50Product, .yearProduct:
            return RLocalization.subscription_recurring_yearly.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .monthProduct:
            return RLocalization.subscription_recurring_mounthly.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .weekProduct:
            return RLocalization.subscription_recurring_weekly.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
    }
}

class SubcribeController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var lifetimeView: ShadowView!
    @IBOutlet weak var yearView: ShadowView!
    @IBOutlet weak var mounthView: ShadowView!
    @IBOutlet weak var weekView: ShadowView!
    
    @IBOutlet weak var paywallTitleLabel: UILabel!
    @IBOutlet weak var paywallSubLabel: UILabel!
    
    @IBOutlet weak var lifetimeTitleLabel: UILabel!
    @IBOutlet weak var lifetimePriceLabel: UILabel!
    @IBOutlet weak var lifetimeInfoLabel: UILabel!
    @IBOutlet weak var lifetimeSaveLabel: UILabel!
    @IBOutlet weak var lifetimeSubscribeButton: UIButton!
    @IBOutlet weak var lifetimeActiveView: UIView!
    
    @IBOutlet weak var yearTitleLabel: UILabel!
    @IBOutlet weak var yearPriceLabel: UILabel!
    @IBOutlet weak var yearInfoLabel: UILabel!
    @IBOutlet weak var yearSaveLabel: UILabel!
    @IBOutlet weak var yearSubscribeButton: UIButton!
    @IBOutlet weak var yearUnsubscribeView: UIView!
    @IBOutlet weak var yearActiveView: UIView!
    
    @IBOutlet weak var monthTitleLabel: UILabel!
    @IBOutlet weak var monthPriceLabel: UILabel!
    @IBOutlet weak var monthInfoLabel: UILabel!
    @IBOutlet weak var monthSubscribeButton: UIButton!
    @IBOutlet weak var monthUnsubscribeView: UIView!
    @IBOutlet weak var monthActiveView: UIView!
    
    @IBOutlet weak var weekTitleLabel: UILabel!
    @IBOutlet weak var weekPriceLabel: UILabel!
    @IBOutlet weak var weekInfoLabel: UILabel!
    @IBOutlet weak var weekSubscribeButton: UIButton!
    @IBOutlet weak var weekUnsubscribeView: UIView!
    @IBOutlet weak var weekActiveView: UIView!
    
    @IBOutlet weak var cancelAnyTimeLabel: UILabel!
    @IBOutlet weak var restoreButton: UIButton!
    
    @IBOutlet weak var termsButton: UIButton!
    @IBOutlet weak var privacyButton: UIButton!
    
    @IBOutlet weak var rulesLabel: UILabel!
    
    @IBOutlet weak var saveView: UIView!

    @IBOutlet weak var unsubscribeButton: UIButton!
    @IBOutlet weak var activeLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private lazy var presenter = SubscribePresenter(view: self)
    private var lifetime50Sub = SubscribeType.lifetime50Product
    private var year50Sub = SubscribeType.year50Product
    private var yearSub = SubscribeType.yearProduct
    private var mounthSub = SubscribeType.monthProduct
    private var weekSub = SubscribeType.weekProduct
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
        
        yearUnsubscribeView.layer.borderColor = UIColor.white.cgColor
        yearUnsubscribeView.layer.borderWidth = 1
        monthUnsubscribeView.layer.borderColor = UIColor.white.cgColor
        monthUnsubscribeView.layer.borderWidth = 1
        
        lifetimeView.alpha = 0.0
        yearView.alpha = 0.0
        mounthView.alpha = 0.0
        
        let attributeString = NSMutableAttributedString(
            string: RLocalization.subscription_restore.localized(PreferencesManager.sharedManager.languageCode.rawValue),
            attributes: yourAttributes
        )
        restoreButton.setAttributedTitle(attributeString, for: .normal)
        
        lifetimeTitleLabel.text = RLocalization.subscribe_lifetime.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        lifetimeSaveLabel.text = RLocalization.subscription_save_50.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        lifetimeSubscribeButton.setTitle(RLocalization.subscription_subscribe.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    
        yearTitleLabel.text = RLocalization.subscribe_year_one.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        yearSubscribeButton.setTitle(RLocalization.subscription_subscribe.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        monthTitleLabel.text = RLocalization.subscribe_month_one.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        monthSubscribeButton.setTitle(RLocalization.subscription_subscribe.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        weekTitleLabel.text = RLocalization.subscribe_week_one.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        weekSubscribeButton.setTitle(RLocalization.subscription_subscribe.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        cancelAnyTimeLabel.text = RLocalization.subscription_cancel_any_time.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        termsButton.setTitle(RLocalization.subscription_terms.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        privacyButton.setTitle(RLocalization.subscription_privacy.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        restoreButton.setTitle(RLocalization.subscription_restore.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        rulesLabel.text = RLocalization.subscription_description.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        retriveProduct()
        checkSubscribeUI()
    }
    
    private func retriveProduct() {
        presenter.retriveProduct(id: [SubscribeType.lifetime50Product.rawValue, SubscribeType.yearProduct.rawValue, SubscribeType.monthProduct.rawValue, SubscribeType.weekProduct.rawValue])
    }
    
    private func checkSubscribeUI() {
        if KeychainService.standard.me?.access.subscription?.name != nil {
            paywallTitleLabel.text = RLocalization.subscription_your_plan.localized(PreferencesManager.sharedManager.languageCode.rawValue)
            paywallSubLabel.text = RLocalization.subscription_thanks_subscription.localized(PreferencesManager.sharedManager.languageCode.rawValue)

            cancelAnyTimeLabel.isHidden = true
            restoreButton.isHidden = true
        } else {
            paywallTitleLabel.text = RLocalization.subscription_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
            paywallSubLabel.text = RLocalization.subscription_sub_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)

            cancelAnyTimeLabel.isHidden = false
            restoreButton.isHidden = false
        }
    }
    
    private func updatePrices() {
        if let sub = self.presenter.paymentsInfo.first(where: {$0.product == self.lifetime50Sub.rawValue}) {
            self.lifetimePriceLabel.text = SubscribeType.lifetime50Product.priceLabel(sub: sub)
            self.lifetimeInfoLabel.text = SubscribeType.lifetime50Product.infoLabel(sub: sub)
        }
        
        if let sub = self.presenter.paymentsInfo.first(where: {$0.product == self.yearSub.rawValue}) {
            self.yearPriceLabel.text = SubscribeType.yearProduct.priceLabel(sub: sub)
            self.yearInfoLabel.text = SubscribeType.yearProduct.infoLabel(sub: sub)
        }
        
        if let sub = self.presenter.paymentsInfo.first(where: {$0.product == self.mounthSub.rawValue}) {
            self.monthPriceLabel.text = SubscribeType.monthProduct.priceLabel(sub: sub)
            self.monthInfoLabel.text = SubscribeType.monthProduct.infoLabel(sub: sub)
        }
        
        if let sub = self.presenter.paymentsInfo.first(where: {$0.product == self.weekSub.rawValue}) {
            self.weekPriceLabel.text = SubscribeType.weekProduct.priceLabel(sub: sub)
            self.weekInfoLabel.text = SubscribeType.weekProduct.infoLabel(sub: sub)
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
    
    @IBAction func actionLifetimeSubscription(_ sender: UIButton) {
        AnalyticsHelper.sendFirebaseEvents(events: .start_subscription_process, params: ["subscription_type": "lifetime"])
        AnalyticsHelper.sendAppsFlyerEvent(event: .appsflyer_start_subscription_process, values: ["subscription_type": "lifetime"])
        AnalyticsHelper.sendFacebookEvent(event: .fb_start_subscription_process, values: ["subscription_type": "lifetime"])
        
        presenter.purchase(id: self.lifetime50Sub.rawValue, controller: String(describing: SubcribeController.self)) { [weak self] result, error in
            if result {
                self?.successRetrive()
            } else {
                self?.view.makeToast(error)
            }
        }
    }
    
    @IBAction func actionYearSubscription(_ sender: UIButton) {
        AnalyticsHelper.sendFirebaseEvents(events: .start_subscription_process, params: ["subscription_type": "year"])
        AnalyticsHelper.sendAppsFlyerEvent(event: .appsflyer_start_subscription_process, values: ["subscription_type": "year"])
        AnalyticsHelper.sendFacebookEvent(event: .fb_start_subscription_process, values: ["subscription_type": "year"])
        
        presenter.purchase(id: self.yearSub.rawValue, controller: String(describing: SubcribeController.self)) { [weak self] result, error in
            if result {
                self?.successRetrive()
            } else {
                self?.view.makeToast(error)
            }
        }
    }
    
    @IBAction func actionMonthSubscription(_ sender: UIButton) {
        AnalyticsHelper.sendFirebaseEvents(events: .start_subscription_process, params: ["subscription_type": "mounth"])
        AnalyticsHelper.sendAppsFlyerEvent(event: .appsflyer_start_subscription_process, values: ["subscription_type": "mounth"])
        AnalyticsHelper.sendFacebookEvent(event: .fb_start_subscription_process, values: ["subscription_type": "mounth"])
        
        presenter.purchase(id: self.mounthSub.rawValue, controller: String(describing: SubcribeController.self)) { [weak self] result, error in
            if result {
                self?.successRetrive()
            } else {
                self?.view.makeToast(error)
            }
        }
    }
    
    @IBAction func actionWeekSubscription(_ sender: UIButton) {
        AnalyticsHelper.sendFirebaseEvents(events: .start_subscription_process, params: ["subscription_type": "week"])
        AnalyticsHelper.sendAppsFlyerEvent(event: .appsflyer_start_subscription_process, values: ["subscription_type": "week"])
        AnalyticsHelper.sendFacebookEvent(event: .fb_start_subscription_process, values: ["subscription_type": "week"])
        
        presenter.purchase(id: self.weekSub.rawValue, controller: String(describing: SubcribeController.self)) { [weak self] result, error in
            if result {
                self?.successRetrive()
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
                        
            self.lifetimeView.alpha = 1.0
            self.yearView.alpha = 1.0
            self.mounthView.alpha = 1.0
            
            self.updatePrices()
            
            if let name = KeychainService.standard.me?.access.subscription?.name, let currentSub = SubscribeType(rawValue: name) {
                self.lifetimeView.backgroundColor = currentSub == self.lifetime50Sub ? UIColor(rgb: 0x7CDAA3) : UIColor(rgb: 0xFFF5DA)
                self.lifetimeTitleLabel.font = currentSub == self.lifetime50Sub ? UIFont.boldSystemFont(ofSize: 17) : UIFont.systemFont(ofSize: 15)
                self.lifetimeTitleLabel.textColor = currentSub == self.lifetime50Sub ? .white : .black
                self.lifetimeSubscribeButton.isHidden = currentSub == self.lifetime50Sub ? true : false
                self.lifetimeActiveView.isHidden = currentSub == self.lifetime50Sub ? false : true
                self.saveView.isHidden = currentSub == self.lifetime50Sub ? true : false
                
                self.yearView.backgroundColor = currentSub == self.yearSub ? UIColor(rgb: 0x7CDAA3) : .white
                self.yearTitleLabel.font = currentSub == self.yearSub ? UIFont.boldSystemFont(ofSize: 17) : UIFont.systemFont(ofSize: 15)
                self.yearTitleLabel.textColor = currentSub == self.yearSub ? .white : .black
                self.yearSubscribeButton.isHidden = currentSub == self.yearSub ? true : false
                self.yearUnsubscribeView.isHidden = currentSub == self.yearSub ? false : true
                self.yearActiveView.isHidden = currentSub == self.yearSub ? false : true
                
                self.mounthView.backgroundColor = currentSub == self.mounthSub ? UIColor(rgb: 0x7CDAA3) : .white
                self.monthTitleLabel.font = currentSub == self.mounthSub ? UIFont.boldSystemFont(ofSize: 17) : UIFont.systemFont(ofSize: 15)
                self.monthTitleLabel.textColor = currentSub == self.mounthSub ? .white : .black
                self.monthSubscribeButton.isHidden = currentSub == self.mounthSub ? true : false
                self.monthUnsubscribeView.isHidden = currentSub == self.mounthSub ? false : true
                self.monthActiveView.isHidden = currentSub == self.mounthSub ? false : true
                
                self.weekView.backgroundColor = currentSub == self.weekSub ? UIColor(rgb: 0x7CDAA3) : .white
                self.weekTitleLabel.font = currentSub == self.weekSub ? UIFont.boldSystemFont(ofSize: 17) : UIFont.systemFont(ofSize: 15)
                self.weekTitleLabel.textColor = currentSub == self.weekSub ? .white : .black
                self.weekSubscribeButton.isHidden = currentSub == self.weekSub ? true : false
                self.weekUnsubscribeView.isHidden = currentSub == self.weekSub ? false : true
                self.weekActiveView.isHidden = currentSub == self.weekSub ? false : true
            }
        }
    }
    
    func failure(error: String) {
        
    }
}
