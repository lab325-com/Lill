
import UIKit

class GardenChooseAddPlantController: BaseController {
    
    //----------------------------------------------
    // MARK: - @IBOutlets
    //----------------------------------------------
    
    @IBOutlet weak var identifyShadowView: ShadowView!
    @IBOutlet weak var identifyGradientView: GradientView!
    @IBOutlet weak var catalogShadowView: ShadowView!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var identifyLabel: UILabel!
    @IBOutlet weak var catalogLabel: UILabel!
    
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
//        identifyLabel.text = RLocalization.garden_choose_add_plant_identify.localized(PreferencesManager.sharedManager.languageCode.rawValue)
//        catalogLabel.text = RLocalization.garden_choose_add_plant_catalog.localized(PreferencesManager.sharedManager.languageCode.rawValue)
//        cancelButton.setTitle(RLocalization.garden_choose_add_plant_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func identifyAction(_ sender: Any) {
        dismiss(animated: false) {
            let currentController = RootRouter.sharedInstance.topViewController?.navigationController
            PlantsRouter(presenter: currentController).presentIdentify()
        }
    }
    
    @IBAction func catalogAction(_ sender: Any) {
        dismiss(animated: false) {
            let currentController = RootRouter.sharedInstance.topViewController?.navigationController
            currentController?.tabBarController?.selectedIndex = 0
        }
    }
    
    @IBAction func cancelAction(_ sender: Any) {
        dismiss(animated: false)
    }
}
