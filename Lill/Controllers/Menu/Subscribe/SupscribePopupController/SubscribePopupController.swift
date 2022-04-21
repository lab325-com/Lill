
import UIKit

class SubscribePopupController: BaseController {
    
    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var offerView: UIView!
    
    @IBOutlet weak var becomePremiumLabel: UILabel!
    @IBOutlet weak var periodLabel: UILabel!
    @IBOutlet weak var saveOffLabel: UILabel!
    @IBOutlet weak var unlimitedLabel: UILabel!
    @IBOutlet weak var planIdentifierLabel: UILabel!
    
    @IBOutlet weak var subscribeButton: UIButton!
    
    @IBOutlet weak var termsOfUserButton: UIButton!
    @IBOutlet weak var privacyButton: UIButton!
    @IBOutlet weak var restoreButton: UIButton!
    
    @IBOutlet weak var discountPriceLabel: UILabel!
    @IBOutlet weak var currentPriceLabel: UILabel!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private lazy var presenter = SubscribePresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Public property
    //----------------------------------------------
    
    var id: Set<String>
    var controller: String
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(id: Set<String>, controller: String) {
        self.id = id
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
    
    private func setup() {
        if let id = id.first, !id.isEmpty {
            if id == "com.lill.subscription.yearly.50" {
                bgImageView.image = UIImage(named: "sub_oneyear_back_ic")
                offerView.backgroundColor = UIColor(rgb: 0xFFCD4A)
                saveOffLabel.textColor = .black
                periodLabel.text = RLocalization.subscribe_year_one.localized(PreferencesManager.sharedManager.languageCode.rawValue)
            }
            else if id == "com.lill.subscription.lifetime.50" {
                bgImageView.image = UIImage(named: "sub_lifetime_ic")
                offerView.backgroundColor = UIColor(rgb: 0xF96161)
                saveOffLabel.textColor = .white
                periodLabel.text = RLocalization.subscribe_lifetime.localized(PreferencesManager.sharedManager.languageCode.rawValue)
            }
        }
        
        discountPriceLabel.alpha = 0.0
        currentPriceLabel.alpha = 0.0
        
        becomePremiumLabel.text = RLocalization.subscribe_year_premium.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        saveOffLabel.text = RLocalization.subscribe_year_save.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        unlimitedLabel.text = RLocalization.subscribe_year_unlimited.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        planIdentifierLabel.text = RLocalization.subscribe_year_plant_identification.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        subscribeButton.setTitle(RLocalization.subscribe_year_subscribe.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        termsOfUserButton.setTitle(RLocalization.subscription_terms.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        privacyButton.setTitle(RLocalization.subscription_privacy.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        restoreButton.setTitle(RLocalization.subscription_restore.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        presenter.retriveProduct(id: id)
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func closeAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func actionSubscription(_ sender: UIButton) {
        presenter.purchase(id: self.id.first!, controller: controller) { [weak self] result, error in
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

extension SubscribePopupController: SubscribeOutputProtocol {
    func successRetrive() {
        UIView.animate(withDuration: 0.3) { [weak self] in
            guard let `self` = self else { return }
            
            self.activityIndicator.isHidden = true
            self.discountPriceLabel.alpha = 1.0
            self.currentPriceLabel.alpha = 1.0
            
//            self.currentPriceLabel.text = self.presenter.paymentsInfo.first?.prettyPrice ?? ""
            
            if let paymentsInfo = self.presenter.paymentsInfo.first {
                self.currentPriceLabel.text = paymentsInfo.prettyPrice
                self.discountPriceLabel.text = String(format: "%.2f %@", (paymentsInfo.price * 2), paymentsInfo.currencySymbol ?? "")
            }
        }
    }
    
    func failure(error: String) {
        
    }
}
