
import UIKit
import Rswift
//----------------------------------------------
// MARK: - Typealias
//----------------------------------------------
typealias RLocalization = R.string.localizable
typealias RImage = R.image
typealias RColor = R.color

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        return RootRouter.sharedInstance.application(didFinishLaunchingWithOptions: launchOptions as [UIApplication.LaunchOptionsKey: Any]?, window: window ?? UIWindow(frame: UIScreen.main.bounds))
    }
}

