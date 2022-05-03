
import UIKit

class SplashController: BaseController {

    @IBOutlet weak var infoLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        infoLabel.text = RLocalization.login_info.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
       
        NotificationCenter.default.addObserver(self, selector:#selector(self.endLoadConfigNotification),
                                               name: Constants.Notifications.endRemoteConfigEndNotification,
                                               object: nil)
    }
    
    @objc func endLoadConfigNotification(_ notification: Notification) {
        NotificationCenter.default.removeObserver(self)
        if let _ = KeychainService.standard.newAuthToken {
            RootRouter.sharedInstance.loadPlants(toWindow: RootRouter.sharedInstance.window!)
        } else {
            RootRouter.sharedInstance.loadLogin(toWindow: RootRouter.sharedInstance.window!)
        }
    }
}
