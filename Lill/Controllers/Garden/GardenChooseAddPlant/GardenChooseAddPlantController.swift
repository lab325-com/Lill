
import UIKit

protocol GardenChooseAddPlantDelegate: AnyObject {
    func didPressedAddUniquePlant()
}

class GardenChooseAddPlantController: BaseController {
    
    //----------------------------------------------
    // MARK: - @IBOutlets
    //----------------------------------------------
    
    @IBOutlet weak var identifyShadowView: ShadowView!
    @IBOutlet weak var identifyGradientView: GradientView!
    @IBOutlet weak var identifyCountView: GradientView!
    @IBOutlet weak var catalogShadowView: ShadowView!
    
    @IBOutlet weak var identifyLabel: UILabel!
    @IBOutlet weak var catalogLabel: UILabel!
    @IBOutlet weak var identifyCountLabel: UILabel!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Global property
    //----------------------------------------------
    
    weak var delegate: GardenChooseAddPlantDelegate?

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
        identifyLabel.text = RLocalization.garden_choose_add_plant_identify.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        catalogLabel.text = RLocalization.garden_choose_add_plant_catalog.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        cancelButton.setTitle(RLocalization.garden_choose_add_plant_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        guard let meModel = KeychainService.standard.me else { return }
        identifyCountView.isHidden = meModel.access.isPremium
        identifyCountLabel.text = "\(meModel.access.identifyUsed)" + "/" + "\(meModel.access.identifyTotal ?? 0)"
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
    
    @IBAction func addUniqueAction(_ sender: Any) {
        dismiss(animated: false) { [weak self] in
            guard let `self` = self else { return }
            self.delegate?.didPressedAddUniquePlant()
        }
    }
    
    @IBAction func cancelAction(_ sender: Any) {
        dismiss(animated: false)
    }
}
