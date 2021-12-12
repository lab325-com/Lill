
import UIKit

class ChooseIdentifyController: BaseController {
    
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
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AnalyticsHelper.sendFirebaseScreenEvent(screen: .photo_select)
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    func configureView() {        
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
        dismiss(animated: false)
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
                PlantsRouter(presenter: currentNavigationController).presentSubscribe()
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
            
//            if meModel.access.diagnosisUsed < total {
//                PlantsRouter(presenter: currentNavigationController).presentDiagnosis()
//            } else {
//                PlantsRouter(presenter: currentNavigationController).presentSubscribe()
//            }
            PlantsRouter(presenter: currentNavigationController).presentDiagnosis()
        }
    }
}
