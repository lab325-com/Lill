
import UIKit
import Rswift
import FBSDKCoreKit
import GoogleSignIn
import UserNotifications
import Firebase
import FirebaseMessaging
import SwiftyStoreKit
import StoreKit
import Siren

//----------------------------------------------
// MARK: - Typealias
//----------------------------------------------
typealias RLocalization = R.string.localizable
typealias RImage = R.image
typealias RColor = R.color

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    let gcmMessageIDKey = "gcm.message_id"
    var window: UIWindow?
        
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
                
        ApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
        
        checkingPurchase()
        forceUpdate()
        
        UIApplication.shared.applicationIconBadgeNumber = 0
        
        Messaging.messaging().delegate = self
        
        // For iOS 10 display notification (sent via APNS)
        UNUserNotificationCenter.current().delegate = self
        
        let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter.current().requestAuthorization(
            options: authOptions,
            completionHandler: {(granted, error) in
                DispatchQueue.main.async {
                    if (granted) {
                        application.registerForRemoteNotifications()
                    }
                    else {
                        //Do stuff if unsuccessful...
                    }
                }
            })
        
        SKAdNetwork.registerAppForAdNetworkAttribution()
        
        application.registerForRemoteNotifications()
        
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
    
    private func forceUpdate() {
        let siren = Siren.shared
        let rules = Rules(promptFrequency: .immediately, forAlertType: .force)
        siren.rulesManager = RulesManager(globalRules: rules)
        siren.wail(performCheck: .onForeground) { (results) in
            switch results {
            case .success(let updateResults):
                if updateResults.alertAction == .appStore {
                    guard let url = URL(string: "itms-apps://itunes.apple.com/app/id1586099684") else { return }
                    if #available(iOS 10, *) {
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    } else {
                        UIApplication.shared.openURL(url)
                    }
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any],
                     fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
        //Messaging.messaging().appDidReceiveMessage(userInfo)
        
        if let messageID = userInfo[gcmMessageIDKey] {
            print("Message ID: \(messageID)")
        }
        
        print(userInfo)
        
        completionHandler(UIBackgroundFetchResult.newData)
    }
}

//----------------------------------------------
// MARK: - UNUserNotificationCenterDelegate
//----------------------------------------------

extension AppDelegate : UNUserNotificationCenterDelegate {
    
    // Receive displayed notifications for iOS 10 devices.
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                willPresent notification: UNNotification,
                                withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        
        let userInfo = notification.request.content.userInfo
        
        if let messageID = userInfo[gcmMessageIDKey] {
            print("Message ID: \(messageID)")
        }
        
        // With swizzling disabled you must let Messaging know about the message, for Analytics
        //Messaging.messaging().appDidReceiveMessage(userInfo)
        
        print(userInfo)
        
        // Change this to your preferred presentation option
        if #available(iOS 14.0, *) {
            completionHandler([[.banner, .badge, .sound]])
        } else {
            completionHandler([[.badge, .sound]])
        }
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        var token = ""
        for i in 0..<deviceToken.count {
            token = token + String(format: "%02.2hhx", arguments: [deviceToken[i]])
        }
        print("Device token: \(token)")
    }
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        debugPrint("didFailToRegisterForRemoteNotificationsWithError: \(error)")
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                didReceive response: UNNotificationResponse,
                                withCompletionHandler completionHandler: @escaping () -> Void) {
        
        let userInfo = response.notification.request.content.userInfo
        
        if let messageID = userInfo[gcmMessageIDKey] {
            print("Message ID from userNotificationCenter didReceive: \(messageID)")
        }
        
        print(userInfo)
        
        completionHandler()
    }
}

//----------------------------------------------
// MARK: - MessagingDelegate
//----------------------------------------------

extension AppDelegate: MessagingDelegate {
    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
        PreferencesManager.sharedManager.fcmToken = fcmToken
        let deviceToken:[String: String] = ["token": fcmToken ?? ""]
        print("Device token: ", deviceToken) // This token can be used for testing notifications on FCM
    }
}
