
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
    // MARK: - Private property
    //----------------------------------------------

    

    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
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
        identifyCountLabel.text = "\(meModel.access.identifyUsed)" + "/" + "\(meModel.access.identifyTotal)"
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func cancelAction(_ sender: Any) {
        dismiss(animated: false)
    }
    
    @IBAction func identifyAction(_ sender: Any) {
        guard let meModel = KeychainService.standard.me else { return }
        dismiss(animated: false) {
            let currentNavigationController = RootRouter.sharedInstance.topViewController?.navigationController
            if meModel.access.isPremium || meModel.access.identifyUsed < 3 {
                PlantsRouter(presenter: currentNavigationController).presentIdentify()
            } else {
                PlantsRouter(presenter: currentNavigationController).presentSubscribe()
            }
        }
    }
    
    @IBAction func diagnosisAction(_ sender: Any) {
        guard let meModel = KeychainService.standard.me else { return }
        dismiss(animated: false) {
            let currentNavigationController = RootRouter.sharedInstance.topViewController?.navigationController
            if meModel.access.isPremium {
                PlantsRouter(presenter: currentNavigationController).presentDiagnosis()
            } else {
                PlantsRouter(presenter: currentNavigationController).presentSubscribe()
            }
        }
    }
}
