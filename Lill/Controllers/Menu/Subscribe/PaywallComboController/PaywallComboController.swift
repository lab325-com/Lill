
import UIKit

fileprivate let kLifetime50 = "com.lill.subscription.lifetime.50"
fileprivate let kYearly50 = "com.lill.subscription.yearly.50"
fileprivate let kYearly = "com.lill.subscription.yearly"
fileprivate let kMonth = "com.lill.subscription.monthly"
fileprivate let kWeekly = "com.lill.subscription.weekly"

class PaywallComboController: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var becomePremiumLabel: UILabel!
    @IBOutlet weak var unlimitedLabel: UILabel!
    @IBOutlet weak var planIdentifierLabel: UILabel!
    @IBOutlet weak var selectPlanLabel: UILabel!
    
    @IBOutlet weak var trialSubView: UIView!
    @IBOutlet weak var firstSubView: UIView!
    @IBOutlet weak var secondSubView: UIView!
    @IBOutlet weak var thirdSubView: UIView!
    @IBOutlet weak var lineView: UIView!
    
    @IBOutlet weak var bottomStackView: UIStackView!
    @IBOutlet weak var bestChoiseTrialImage: UIImageView!
    @IBOutlet weak var bestChoiseImage: UIImageView!
    @IBOutlet weak var saveOffLabel: UILabel!
    @IBOutlet weak var trialSubNameLabel: UILabel!
    @IBOutlet weak var firstSubNameLabel: UILabel!
    @IBOutlet weak var firstSubDiscountPriceLabel: UILabel!
    @IBOutlet weak var firstSubCurrentPriceLabel: UILabel!
    @IBOutlet weak var firstSubSubscribeButton: UIButton!
    
    @IBOutlet weak var trialPriceLabel: UILabel!
    @IBOutlet weak var secondSubNameLabel: UILabel!
    @IBOutlet weak var secondSubPriceLabel: UILabel!
    @IBOutlet weak var secondSubSubscribeButton: UIButton!
    
    @IBOutlet weak var trialSubLabel: UILabel!
    @IBOutlet weak var trialSubscribeButton: UIButton!
    @IBOutlet weak var trialUnsubscribeLabel: UILabel!
    
    @IBOutlet weak var thirdSubNameLabel: UILabel!
    @IBOutlet weak var thirdSubPriceLabel: UILabel!
    @IBOutlet weak var thirdSubSubscribeButton: UIButton!
    
    @IBOutlet weak var termsOfUserButton: UIButton!
    @IBOutlet weak var privacyButton: UIButton!
    @IBOutlet weak var restoreButton: UIButton!
    
    @IBOutlet weak var trialActivityIndicato: UIActivityIndicatorView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private lazy var presenter = SubscribePresenter(view: self)
    private var id: Set<String> = []
    
    //----------------------------------------------
    // MARK: - Public property
    //----------------------------------------------
    
    var controller: String
    var popupType: PopupType
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(popupType: PopupType ,controller: String) {
        self.popupType = popupType
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
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    func setup() {
        switch popupType {
        case .pop3:
            trialSubView.isHidden = true
            firstSubView.isHidden = false
            secondSubView.isHidden = false
            thirdSubView.isHidden = false
            bottomStackView.isHidden = false
        case .pop2:
            trialSubView.isHidden = true
            firstSubView.isHidden = false
            secondSubView.isHidden = false
            thirdSubView.isHidden = true
            bottomStackView.isHidden = false
        case .weekTrial:
            trialSubView.isHidden = false
            firstSubView.isHidden = true
            secondSubView.isHidden = true
            thirdSubView.isHidden = true
            bottomStackView.isHidden = true
        }
        
        trialSubLabel.alpha = 0.0
        trialPriceLabel.alpha = 0.0
        
        firstSubDiscountPriceLabel.alpha = 0.0
        firstSubCurrentPriceLabel.alpha = 0.0
        secondSubPriceLabel.alpha = 0.0
        thirdSubPriceLabel.alpha = 0.0
        lineView.alpha = 0.0
        
        switch PreferencesManager.sharedManager.languageCode {
        case .english:
            bestChoiseTrialImage.image = UIImage(named: "sub_trial_line_en_ic")
            bestChoiseImage.image = UIImage(named: "best_choice_en_ic")
        case .spanish:
            bestChoiseImage.image = UIImage(named: "best_choice_es_ic")
            bestChoiseTrialImage.image = UIImage(named: "sub_trial_line_es_ic")
        case .russian:
            bestChoiseImage.image = UIImage(named: "best_choice_ru_ic")
            bestChoiseTrialImage.image = UIImage(named: "sub_trial_line_ru_ic")
        }
        
        termsOfUserButton.setTitle(RLocalization.subscription_terms.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        privacyButton.setTitle(RLocalization.subscription_privacy.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        restoreButton.setTitle(RLocalization.subscription_restore.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        trialSubView.layer.borderWidth = 2.0
        trialSubView.layer.borderColor = UIColor(rgb: 0x7CDAA3).cgColor
        
        firstSubView.layer.borderWidth = 2.0
        firstSubView.layer.borderColor = UIColor(rgb: 0x7CDAA3).cgColor
        
        secondSubView.layer.borderWidth = 1.0
        secondSubView.layer.borderColor = UIColor(rgb: 0x7CDAA3).cgColor
        
        thirdSubView.layer.borderWidth = 1.0
        thirdSubView.layer.borderColor = UIColor(rgb: 0x7CDAA3).cgColor
        
        secondSubSubscribeButton.layer.borderWidth = 1.0
        secondSubSubscribeButton.layer.borderColor = UIColor(rgb: 0x7CDAA3).cgColor
        
        thirdSubSubscribeButton.layer.borderWidth = 1.0
        thirdSubSubscribeButton.layer.borderColor = UIColor(rgb: 0x7CDAA3).cgColor
        
        saveOffLabel.text = RLocalization.subscribe_year_save.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        becomePremiumLabel.text = RLocalization.subscribe_year_premium.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        unlimitedLabel.text = RLocalization.subscribe_year_unlimited.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        planIdentifierLabel.text = RLocalization.subscribe_year_plant_identification.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        if popupType == .weekTrial {
            selectPlanLabel.text = ""
        } else {
            selectPlanLabel.text = RLocalization.subscribe_select_plan.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
        
        trialUnsubscribeLabel.text = RLocalization.subscribe_trial_unsubscribe.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        trialSubscribeButton.setTitle(RLocalization.subscribe_trial_try_free.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        trialSubNameLabel.text = RLocalization.subscribe_trial_weekly.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        firstSubNameLabel.text = popupType == .pop2 ? RLocalization.subscribe_lifetime.localized(PreferencesManager.sharedManager.languageCode.rawValue) : RLocalization.subscribe_year_one.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        secondSubNameLabel.text = popupType == .pop2 ? RLocalization.subscribe_year_one.localized(PreferencesManager.sharedManager.languageCode.rawValue) : RLocalization.subscribe_month_upper.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        thirdSubNameLabel.text = RLocalization.subscribe_lifetime.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        let popup2ids = [kLifetime50, kYearly]
        let popup3ids = [kYearly50, kMonth, kLifetime50]
        let popupTrial = [kWeekly]
        
        switch popupType {
        case .pop3:
            id.formUnion(popup3ids)
        case .pop2:
            id.formUnion(popup2ids)
        case .weekTrial:
            id.formUnion(popupTrial)
        }
        
        presenter.retriveProduct(id: id)
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func closeAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func trialSubscribeAction(_ sender: UIButton) {
        presenter.purchase(id: kWeekly, controller: controller) { [weak self] result, error in
            guard let `self` = self else { return }
            if result {
                self.dismiss(animated: true, completion: nil)
            } else {
                self.view.makeToast(error)
            }
        }
    }
    
    @IBAction func firstSubSubscribeAction(_ sender: Any) {
        presenter.purchase(id: popupType == .pop2 ? kLifetime50 : kYearly50, controller: controller) { [weak self] result, error in
            guard let `self` = self else { return }
            if result {
                self.dismiss(animated: true, completion: nil)
            } else {
                self.view.makeToast(error)
            }
        }
    }
    
    @IBAction func secondSubSubscribeAction(_ sender: Any) {
        presenter.purchase(id: popupType == .pop2 ? kYearly : kMonth, controller: controller) { [weak self] result, error in
            guard let `self` = self else { return }
            if result {
                self.dismiss(animated: true, completion: nil)
            } else {
                self.view.makeToast(error)
            }
        }
    }
    
    @IBAction func thirdSubSubscribeAction(_ sender: Any) {
        presenter.purchase(id: kLifetime50, controller: controller) { [weak self] result, error in
            guard let `self` = self else { return }
            if result {
                self.dismiss(animated: true, completion: nil)
            } else {
                self.view.makeToast(error)
            }
        }
    }
    
    @IBAction func actionRestore(_ sender: UIButton) {
        presenter.restore { [weak self] result in
            guard let `self` = self else { return }
            if result {
                self.dismiss(animated: true, completion: nil)
            }
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

extension PaywallComboController: SubscribeOutputProtocol {
    func successRetrive() {
        UIView.animate(withDuration: 0.3) { [weak self] in
            guard let `self` = self else { return }

            self.activityIndicator.isHidden = true
            self.trialActivityIndicato.isHidden = true
            
            self.firstSubDiscountPriceLabel.alpha = 1.0
            self.firstSubCurrentPriceLabel.alpha = 1.0
            self.secondSubPriceLabel.alpha = 1.0
            self.thirdSubPriceLabel.alpha = 1.0
            self.lineView.alpha = 1.0
            
            self.trialSubLabel.alpha = 1.0
            self.trialPriceLabel.alpha = 1.0
            
            let symbol = String(format: "%@ ", self.presenter.paymentsInfo.first?.currencySymbol ?? "")
            let currentPrice = self.popupType == .pop2 ? self.presenter.paymentsInfo.first(where: {$0.product == kLifetime50})?.prettyPrice ?? "" : self.presenter.paymentsInfo.first(where: {$0.product == kYearly50})?.prettyPrice ?? ""
            
            let discount = self.popupType == .pop2 ? self.presenter.paymentsInfo.first(where: {$0.product == kLifetime50})?.price ?? 0 : self.presenter.paymentsInfo.first(where: {$0.product == kYearly50})?.price ?? 0
            
            let discountPrice = "\(Int(discount / 2)),99"
            let year = self.popupType == .pop2 ? "" : String(format: " / %@", RLocalization.subscribe_year.localized(PreferencesManager.sharedManager.languageCode.rawValue))
            
            self.firstSubCurrentPriceLabel.text = symbol + currentPrice + year
            self.firstSubDiscountPriceLabel.text = symbol + discountPrice + year
            
            self.secondSubPriceLabel.text = self.popupType == .pop2 ? self.presenter.paymentsInfo.first(where: {$0.product == kYearly})?.prettyPrice : self.presenter.paymentsInfo.first(where: {$0.product == kMonth})?.prettyPrice
            self.thirdSubPriceLabel.text = self.presenter.paymentsInfo.first(where: {$0.product == kLifetime50})?.prettyPrice
            
            self.trialPriceLabel.text = self.presenter.paymentsInfo.first(where: {$0.product == kWeekly})?.prettyPrice ?? ""
            
            self.trialSubLabel.text = RLocalization.subscribe_trial_with_days(self.presenter.paymentsInfo.first(where: {$0.product == kWeekly})?.daysTrial?.lowercased() ?? "0", preferredLanguages: [PreferencesManager.sharedManager.languageCode.rawValue])
            
        }
    }
    
    func failure(error: String) {
        
    }
}
