
import UIKit

class SplashController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            RootRouter.sharedInstance.loadOnboarding(toWindow: RootRouter.sharedInstance.window!)
        }
    }
}
