
import UIKit
import Toast

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
    
    private let yearProduct = "com.lill.subscription.yearly"
    
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
        yearView.alpha = 0.0
        mounthView.alpha = 0.0
        
        presenter.retriveProduct(id: [yearProduct])
        
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
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func closeAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func actionYearSubscription(_ sender: UIButton) {
        presenter.purchase(id: yearProduct) { [weak self] result, error in
            if result {
                self?.dismiss(animated: true, completion: nil)
            } else {
                self?.view.makeToast(error)
            }
        }
    }
    
    @IBAction func actionMonthSubscription(_ sender: UIButton) {
    }
}

//----------------------------------------------
// MARK: - SubscribeOutputProtocol
//----------------------------------------------

extension SubcribeController: SubscribeOutputProtocol {
    func successRetrive() {
        UIView.animate(withDuration: 0.3) { [weak self] in
            guard let `self` = self else { return }
            if let yearSub = self.presenter.paymentsInfo.first(where: {$0.product == self.yearProduct}) {
                self.yearTitleLabel.text = yearSub.period
                self.yearBilledLabel.text = RLocalization.subscription_billed_with("\(yearSub.period) - \(yearSub.prettyPrice)")
                
                let value = yearSub.price / 12
                
                self.yearPriceLabel.text = "\(yearSub.currencySymbol ?? "$") \(self.preciseRound(value, precision: .tenths) - 0.01)/month"
                self.yearView.alpha = 1.0
            }
           
            self.mounthView.alpha = 1.0
        }
        
        
    }
    
    func failure(error: String) {
        
    }
}
