
import UIKit

class SplashController: BaseController {

    @IBOutlet weak var infoLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
    
        infoLabel.text = RLocalization.login_info.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            if let _ = KeychainService.standard.newAuthToken {
                RootRouter.sharedInstance.loadPlants(toWindow: RootRouter.sharedInstance.window!)
            } else {
                RootRouter.sharedInstance.loadLogin(toWindow: RootRouter.sharedInstance.window!)
            }
        }
    }
}
