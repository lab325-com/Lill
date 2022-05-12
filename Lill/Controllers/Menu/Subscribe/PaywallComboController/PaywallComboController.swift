
import UIKit

fileprivate let kLifetime50 = "com.lill.subscription.lifetime.50"
fileprivate let kYearly50 = "com.lill.subscription.yearly.50"
fileprivate let kYearly = "com.lill.subscription.yearly"
fileprivate let kWeekly = "com.lill.subscription.weekly"

class PaywallComboController: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var becomePremiumLabel: UILabel!
    @IBOutlet weak var unlimitedLabel: UILabel!
    @IBOutlet weak var planIdentifierLabel: UILabel!
    @IBOutlet weak var selectPlanLabel: UILabel!
    
    @IBOutlet weak var firstSubView: UIView!
    @IBOutlet weak var secondSubView: UIView!
    @IBOutlet weak var thirdSubView: UIView!
    @IBOutlet weak var lineView: UIView!
    
    @IBOutlet weak var bestChoiseImage: UIImageView!
    @IBOutlet weak var saveOffLabel: UILabel!
    @IBOutlet weak var firstSubNameLabel: UILabel!
    @IBOutlet weak var firstSubDiscountPriceLabel: UILabel!
    @IBOutlet weak var firstSubCurrentPriceLabel: UILabel!
    @IBOutlet weak var firstSubSubscribeButton: UIButton!
    
    @IBOutlet weak var secondSubNameLabel: UILabel!
    @IBOutlet weak var secondSubPriceLabel: UILabel!
    @IBOutlet weak var secondSubSubscribeButton: UIButton!
    
    @IBOutlet weak var thirdSubNameLabel: UILabel!
    @IBOutlet weak var thirdSubPriceLabel: UILabel!
    @IBOutlet weak var thirdSubSubscribeButton: UIButton!
    
    @IBOutlet weak var termsOfUserButton: UIButton!
    @IBOutlet weak var privacyButton: UIButton!
    @IBOutlet weak var restoreButton: UIButton!
    
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
        thirdSubView.isHidden = self.popupType == .pop2 ? true : false
        
        firstSubDiscountPriceLabel.alpha = 0.0
        firstSubCurrentPriceLabel.alpha = 0.0
        secondSubPriceLabel.alpha = 0.0
        thirdSubPriceLabel.alpha = 0.0
        lineView.alpha = 0.0
        
        switch PreferencesManager.sharedManager.languageCode {
        case .english: bestChoiseImage.image = UIImage(named: "best_choice_en_ic")
        case .spanish: bestChoiseImage.image = UIImage(named: "best_choice_es_ic")
        case .russian: bestChoiseImage.image = UIImage(named: "best_choice_ru_ic")
        }
        
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
        
        becomePremiumLabel.text = RLocalization.subscribe_year_premium.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        unlimitedLabel.text = RLocalization.subscribe_year_unlimited.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        planIdentifierLabel.text = RLocalization.subscribe_year_plant_identification.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        selectPlanLabel.text = RLocalization.subscribe_select_plan.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        firstSubNameLabel.text = popupType == .pop2 ? RLocalization.subscribe_lifetime.localized(PreferencesManager.sharedManager.languageCode.rawValue) : RLocalization.subscribe_year_one.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        secondSubNameLabel.text = popupType == .pop2 ? RLocalization.subscribe_year_one.localized(PreferencesManager.sharedManager.languageCode.rawValue) : RLocalization.subscribe_week_one.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        thirdSubNameLabel.text = RLocalization.subscribe_lifetime.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        let popup2ids = [kLifetime50, kYearly]
        let popup3ids = [kYearly50, kWeekly, kLifetime50]
        
        popupType == .pop2 ? id.formUnion(popup2ids) : id.formUnion(popup3ids)
        
        presenter.retriveProduct(id: id)
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func closeAction(_ sender: Any) {
        dismiss(animated: true)
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
        presenter.purchase(id: popupType == .pop2 ? kYearly : kWeekly, controller: controller) { [weak self] result, error in
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
            
            self.firstSubDiscountPriceLabel.alpha = 1.0
            self.firstSubCurrentPriceLabel.alpha = 1.0
            self.secondSubPriceLabel.alpha = 1.0
            self.thirdSubPriceLabel.alpha = 1.0
            self.lineView.alpha = 1.0
         
            let symbol = String(format: "%@ ", self.presenter.paymentsInfo.first?.currencySymbol ?? "")
            let currentPrice = self.popupType == .pop2 ? self.presenter.paymentsInfo.first(where: {$0.product == kLifetime50})?.prettyPrice ?? "" : self.presenter.paymentsInfo.first(where: {$0.product == kYearly50})?.prettyPrice ?? ""
            let discountPrice = self.popupType == .pop2 ? "119,99" : "29,99"
            let year = self.popupType == .pop2 ? "" : String(format: " / %@", RLocalization.subscribe_year.localized(PreferencesManager.sharedManager.languageCode.rawValue))
            
            self.firstSubCurrentPriceLabel.text = symbol + currentPrice + year
            self.firstSubDiscountPriceLabel.text = symbol + discountPrice + year
            
            self.secondSubPriceLabel.text = self.popupType == .pop2 ? self.presenter.paymentsInfo.first(where: {$0.product == kYearly})?.prettyPrice : self.presenter.paymentsInfo.first(where: {$0.product == kWeekly})?.prettyPrice
            self.thirdSubPriceLabel.text = self.presenter.paymentsInfo.first(where: {$0.product == kLifetime50})?.prettyPrice
        }
    }
    
    func failure(error: String) {
        
    }
}
