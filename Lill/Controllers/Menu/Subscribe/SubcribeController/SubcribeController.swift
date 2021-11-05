
import UIKit

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
    
    @IBOutlet weak var termsButton: UIButton!
    @IBOutlet weak var privacyButton: UIButton!
    
    @IBOutlet weak var rulesLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private lazy var presenter = SubscribePresenter(view: self)
    
    private let yourAttributes: [NSAttributedString.Key: Any] = [
        .font: UIFont.systemFont(ofSize: 13),
        .foregroundColor: UIColor.black,
        .underlineStyle: NSUnderlineStyle.single.rawValue
    ]
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        yearView.alpha = 1.0
        mounthView.alpha = 1.0
        
        presenter.retriveProduct(id: ["com.lill.subscription.yearly"])
        
        let attributeString = NSMutableAttributedString(
            string: RLocalization.subscription_restore.localized(PreferencesManager.sharedManager.languageCode.rawValue),
            attributes: yourAttributes
        )
        restoreButton.setAttributedTitle(attributeString, for: .normal)
        
        paywallTitleLabel.text = RLocalization.subscription_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        paywallSubLabel.text = RLocalization.subscription_sub_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        yearSaveLabel.text = RLocalization.subscription_save_33.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        yearSubscribeButton.setTitle(RLocalization.subscription_subscribe.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        monthSubscribeButton.setTitle(RLocalization.subscription_subscribe.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        monthRecuringLabel.text = RLocalization.subscription_recurring.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        cancelAnyTimeLabel.text = RLocalization.subscription_cancel_any_time.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        termsButton.setTitle(RLocalization.subscription_terms.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        privacyButton.setTitle(RLocalization.subscription_privacy.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        restoreButton.setTitle(RLocalization.subscription_restore.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        rulesLabel.text = RLocalization.subscription_description.localized(PreferencesManager.sharedManager.languageCode.rawValue)
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func closeAction(_ sender: Any) {
        dismiss(animated: true)
    }
}

//----------------------------------------------
// MARK: - SubscribeOutputProtocol
//----------------------------------------------

extension SubcribeController: SubscribeOutputProtocol {
    func successRetrive() {
        UIView.animate(withDuration: 0.3) { [weak self] in
            self?.yearView.alpha = 1.0
            self?.mounthView.alpha = 1.0
        }
    }
    
    func failure(error: String) {
        
    }
}
