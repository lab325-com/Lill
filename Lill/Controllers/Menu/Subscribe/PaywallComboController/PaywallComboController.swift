
import UIKit

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
    
    //----------------------------------------------
    // MARK: - Public property
    //----------------------------------------------
    
    var controller: String
    
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
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    func setup() {
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
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func closeAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func firstSubSubscribeAction(_ sender: Any) {
        
    }
    
    @IBAction func secondSubSubscribeAction(_ sender: Any) {
        
    }
    
    @IBAction func thirdSubSubscribeAction(_ sender: Any) {
        
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
//            self.discountPriceLabel.alpha = 1.0
//            self.currentPriceLabel.alpha = 1.0

//            self.currentPriceLabel.text = self.presenter.paymentsInfo.first?.prettyPrice ?? ""

//            if let paymentsInfo = self.presenter.paymentsInfo.first {
//                self.currentPriceLabel.text = paymentsInfo.prettyPrice
//                self.discountPriceLabel.text = String(format: "%.2f %@", (paymentsInfo.price * 2), paymentsInfo.currencySymbol ?? "")
//            }
        }
    }
    
    func failure(error: String) {
        
    }
}
