
import UIKit
import Rswift
import FBSDKCoreKit
import GoogleSignIn
import Firebase
import SwiftyStoreKit

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
        
        FirebaseApp.configure()
                
        ApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
        
        checkingPurchase()
        return RootRouter.sharedInstance.application(didFinishLaunchingWithOptions: launchOptions as [UIApplication.LaunchOptionsKey: Any]?, window: window ?? UIWindow(frame: UIScreen.main.bounds))
    }
    
    func application(_ app: UIApplication,
                     open url: URL,
                     options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        
        ApplicationDelegate.shared.application(app,
                                               open: url,
                                               sourceApplication: options[UIApplication.OpenURLOptionsKey.sourceApplication] as? String,
                                               annotation: options[UIApplication.OpenURLOptionsKey.annotation])
    }
    
    private func checkingPurchase() {
        SwiftyStoreKit.completeTransactions(atomically: true) { purchases in
            for purchase in purchases {
                switch purchase.transaction.transactionState {
                case .purchased, .restored:
                    if purchase.needsFinishTransaction {
                        // Deliver content from server, then:
                        SwiftyStoreKit.finishTransaction(purchase.transaction)
                    }
                // Unlock content
                case .failed, .purchasing, .deferred:
                    break // do nothing
                default:
                    break
                }
            }
        }
    }
}
