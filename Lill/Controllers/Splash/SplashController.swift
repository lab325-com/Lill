
import UIKit

class SplashController: BaseController {

    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
    
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            if let _ = KeychainService.standard.newAuthToken {
                RootRouter.sharedInstance.loadPlants(toWindow: RootRouter.sharedInstance.window!)
            } else {
                RootRouter.sharedInstance.loadLogin(toWindow: RootRouter.sharedInstance.window!)
            }
        }
    }
}
