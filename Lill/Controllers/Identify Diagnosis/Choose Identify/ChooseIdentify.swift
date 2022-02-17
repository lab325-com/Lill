
import UIKit

protocol ChooseIdentifyDelegate: AnyObject {
    func didPressedAddUniquePlant()
}

class ChooseIdentify: BaseController {
    
    //----------------------------------------------
    // MARK: - @IBOutlets
    //----------------------------------------------
    
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var identifyView: GradientView!
    @IBOutlet weak var identifyCountView: GradientView!
    @IBOutlet weak var diagnosisView: UIView!
    @IBOutlet weak var premiumView: GradientView!
    
    @IBOutlet weak var identifyLabel: UILabel!
    @IBOutlet weak var identifyCountLabel: UILabel!
    @IBOutlet weak var diagnosisLabel: UILabel!
    @IBOutlet weak var premiumLabel: UILabel!
    @IBOutlet weak var addUniqueLabel: UILabel!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var bottomLayoutCancelButton: NSLayoutConstraint!
    
    weak var delegate: ChooseIdentifyDelegate?
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animate(isHidden: false) {
            
        }
        AnalyticsHelper.sendFirebaseScreenEvent(screen: .photo_select)
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    func configureView() {
        backView.backgroundColor = UIColor.clear
        
        identifyLabel.text = RLocalization.choose_identify_identify()
        diagnosisLabel.text = RLocalization.choose_identify_diagnosis()
        premiumLabel.text = RLocalization.choose_identify_premium()
        
        cancelButton.setTitle(RLocalization.choose_identify_cancel(), for: .normal)
        
        guard let meModel = KeychainService.standard.me else { return }
        identifyCountView.isHidden = meModel.access.isPremium
        premiumView.isHidden = meModel.access.isPremium
        identifyCountLabel.text = "\(meModel.access.identifyUsed)" + "/" + "\(meModel.access.identifyTotal ?? 0)"
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func cancelAction(_ sender: Any) {
        AnalyticsHelper.sendFirebaseEvents(events: .cancel_photo)
        animate(isHidden: true) { [weak self] in
            self?.dismiss(animated: false)
        }
        
    }
    
    @IBAction func identifyAction(_ sender: Any) {
        AnalyticsHelper.sendFirebaseEvents(events: .identify)
        guard let meModel = KeychainService.standard.me else { return }
        
        dismiss(animated: false) {
            let currentNavigationController = RootRouter.sharedInstance.topViewController?.navigationController
            
            guard let total = meModel.access.identifyTotal else {
                PlantsRouter(presenter: currentNavigationController).presentIdentify()
                return
            }
            
            if meModel.access.identifyUsed < total {
                PlantsRouter(presenter: currentNavigationController).presentIdentify()
            } else {
                if StoreKitManager.sharedInstance.isYearly50() {
                    MenuRouter(presenter: currentNavigationController).presentYearPaywall(delegate: nil)
                } else {
                    MenuRouter(presenter: currentNavigationController).presentSubscription()
                }
            }
        }
    }
    
    @IBAction func diagnosisAction(_ sender: Any) {
        AnalyticsHelper.sendFirebaseEvents(events: .diagnose)
        guard let meModel = KeychainService.standard.me else { return }
        dismiss(animated: false) {
            let currentNavigationController = RootRouter.sharedInstance.topViewController?.navigationController
            
            guard let total = meModel.access.diagnosisTotal else {
                PlantsRouter(presenter: currentNavigationController).presentDiagnosis()
                return
            }
            
            if meModel.access.diagnosisUsed < total {
                PlantsRouter(presenter: currentNavigationController).presentDiagnosis()
            } else {
                if StoreKitManager.sharedInstance.isYearly50() {
                    MenuRouter(presenter: currentNavigationController).presentYearPaywall(delegate: nil)
                } else {
                    MenuRouter(presenter: currentNavigationController).presentSubscription()
                }
            }
        }
    }
    
    @IBAction func addUniqueAction(_ sender: Any) {
        dismiss(animated: false) { [weak self] in
            guard let `self` = self else { return }
            self.delegate?.didPressedAddUniquePlant()
        }
    }
    
    private func animate(isHidden: Bool, completion: @escaping () -> ()) {
        UIView.animate(withDuration: 0.4) { [weak self] in
            guard let `self` = self else { return }
            self.backView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: isHidden ? 0.0 : 0.7)
            self.bottomLayoutCancelButton.constant = isHidden ? -200 : 25
            self.view.layoutIfNeeded()
        } completion: { result in
            completion()
        }
    }
}
