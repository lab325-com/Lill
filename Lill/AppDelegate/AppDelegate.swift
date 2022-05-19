
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
import AppsFlyerLib
import SwiftUI
import AppTrackingTransparency

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
        
        // SKPaymentQueue.default().add(StoreKitManager.sharedInstance)
        
        //Firebase analytics
        
        FirebaseApp.configure()
        
        //Facebook analytics
        
        ApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
        AppEvents.shared.activateApp()
        
        if #available(iOS 14, *) {
            if ATTrackingManager.trackingAuthorizationStatus == .authorized {
                Settings.shared.isAdvertiserIDCollectionEnabled = true
                Settings.shared.isAdvertiserTrackingEnabled = true
            } else {
                Settings.shared.isAdvertiserIDCollectionEnabled = false
                Settings.shared.isAdvertiserTrackingEnabled = false
            }
        }
        
        //AppsFlyer analytics
        
        AppsFlyerLib.shared().appsFlyerDevKey = "sapALRVCHUnGS6xNLJQPjS"
        AppsFlyerLib.shared().appleAppID = "1586099684"
        AppsFlyerLib.shared().delegate = self
        AppsFlyerLib.shared().isDebug = true
        AppsFlyerLib.shared().useReceiptValidationSandbox = true
        AppsFlyerLib.shared().useUninstallSandbox = true
        
        checkingPurchase()
        forceUpdate()
        loadConfig()
        
        SwiftyStoreKit.shouldAddStorePaymentHandler = { (_ payment: SKPayment, _ product: SKProduct) in
            if let controller = RootRouter.sharedInstance.topViewController as? BaseController {
                controller.startLoader()
            }
            return true // or false if user shall not purchase the product yet
        }
        
        Messaging.messaging().delegate = self
        
        UIApplication.shared.applicationIconBadgeNumber = 0
        
        // For iOS 10 display notification (sent via APNS)
        UNUserNotificationCenter.current().delegate = self
        
        DispatchQueue.main.async {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                if #available(iOS 14, *) {
                    ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
                        switch status {
                        case .authorized:
                            Settings.shared.isAdvertiserIDCollectionEnabled = true
                            Settings.shared.isAdvertiserTrackingEnabled = true
                            break
                        case .denied:
                            Settings.shared.isAdvertiserIDCollectionEnabled = false
                            Settings.shared.isAdvertiserTrackingEnabled = false
                            break
                        case .notDetermined:
                            // Tracking authorization dialog has not been shown
                            print("Not Determined")
                        case .restricted:
                            Settings.shared.isAdvertiserIDCollectionEnabled = false
                            Settings.shared.isAdvertiserTrackingEnabled = false
                            print("Restricted")
                        @unknown default:
                            print("Unknown")
                        }
                    })
                }
            }
        }
        application.registerForRemoteNotifications()
        SKAdNetwork.registerAppForAdNetworkAttribution()
        
        return RootRouter.sharedInstance.application(didFinishLaunchingWithOptions: launchOptions as [UIApplication.LaunchOptionsKey: Any]?, window: window ?? UIWindow(frame: UIScreen.main.bounds))
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        AppsFlyerLib.shared().start()
    }
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        AppsFlyerLib.shared().continue(userActivity, restorationHandler: nil)
        return true
    }
    
    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        AppsFlyerLib.shared().handleOpen(url, sourceApplication: sourceApplication, withAnnotation: annotation)
        return true
    }
    
    func application(_ app: UIApplication,
                     open url: URL,
                     options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        
        AppsFlyerLib.shared().handleOpen(url, options: options)
        
        ApplicationDelegate.shared.application(app,
                                               open: url,
                                               sourceApplication: options[UIApplication.OpenURLOptionsKey.sourceApplication] as? String,
                                               annotation: options[UIApplication.OpenURLOptionsKey.annotation])
        
        return true
    }
    
    private func checkingPurchase() {
        SwiftyStoreKit.completeTransactions(atomically: true) { purchases in
            if let controller = RootRouter.sharedInstance.topViewController as? BaseController {
                controller.stopLoading()
            }
            
            for purchase in purchases {
                switch purchase.transaction.transactionState {
                case .purchased:
                    if let _ = KeychainService.standard.newAuthToken?.token {
                        let receiptData = SwiftyStoreKit.localReceiptData
                        if let receiptString = receiptData?.base64EncodedString(options: []) {
                            let mutation = OrderCreateMutation(receipt: receiptString)
                            let _ = Network.shared.mutation(model: OrderCreate.self, mutation, controller: nil, successHandler: { model in
                                let _ = Network.shared.query(model: MeDataModel.self, MeQuery(), controller: nil) { model in
                                    KeychainService.standard.me = model.me
                                } failureHandler: { _ in
                                }
                                
                            }, failureHandler: { _ in
                                PreferencesManager.sharedManager.isNeedSendReceipts = true
                            })
                        }
                    } else {
                        PreferencesManager.sharedManager.isNeedSendReceipts = true
                    }
                    
                    if purchase.needsFinishTransaction {
                        // Deliver content from server, then:
                        SwiftyStoreKit.finishTransaction(purchase.transaction)
                    }
                case .restored:
                    if purchase.needsFinishTransaction {
                        // Deliver content from server, then:
                        SwiftyStoreKit.finishTransaction(purchase.transaction)
                    }
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
        
        AppsFlyerLib.shared().handlePushNotification(userInfo)
    }
    
    private func loadConfig() {
        PreferencesManager.sharedManager.isLoadConfig = false
        
        let remoteConfig = RemoteConfig.remoteConfig()
        let fetchDuration: TimeInterval = 43200 // 12 hours
        remoteConfig.fetch(withExpirationDuration: fetchDuration) { (result, error) in
            remoteConfig.activate() { (changed, error) in
                DispatchQueue.main.async { [weak self] in
                    PreferencesManager.sharedManager.isLoadConfig = true
                    
                    if let isShowFirstOnboarding = RemoteConfigParameters.isShowFirstOnboarding.value as? Bool {
                        PreferencesManager.sharedManager.isShowFirstOnboarding = isShowFirstOnboarding
                    }
                    
                    PreferencesManager.sharedManager.currentPopUp = RemoteConfigParameters.currentPopUp.value as? PopupType
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        NotificationCenter.default.post(name: Constants.Notifications.endRemoteConfigEndNotification,
                                                        object: self,
                                                        userInfo: nil)
                    }
                }
            }
        }
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
        
        guard let meModel = KeychainService.standard.me else { return }
        
        let controller = RootRouter.sharedInstance.topViewController as? BaseController
        
        if !meModel.access.isPremium {
            if var subscription = userInfo["Subscription"] as? String {
                if subscription == "All" {
                    MenuRouter(presenter: controller?.navigationController).presentSubscription(controller: "Push")
                } else if subscription.contains(".immediately") {
                    if let range = subscription.range(of: ".immediately") {
                        subscription.removeSubrange(range)
                    }
                    purchase(id: subscription, controller: "Push")
                } else if subscription.contains(SubscribeType.lifetime50Product.rawValue) {
                    MenuRouter(presenter: controller?.navigationController).presentLifetimePayWall(controller: "Push")
                } else if subscription.contains(SubscribeType.year50Product.rawValue) {
                    MenuRouter(presenter: controller?.navigationController).presentYearPaywall(delegate: nil, controller: "Push")
                } else if subscription.contains("combo") {
                    if let currentPopUp = PreferencesManager.sharedManager.currentPopUp {
                        MenuRouter(presenter: controller?.navigationController).presentComboPaywall(popupType: currentPopUp, controller: "Push")
                    }
                }
            }
        }
        
        completionHandler()
    }
    
    func purchase(id: String, controller: String) {
        LillActivityIndicator.shared.show()
        
        AnalyticsHelper.sendFirebaseEvents(events: .subscribe_start, params: ["id": id, "controller": controller])
        
        SwiftyStoreKit.purchaseProduct(id, quantity: 1, atomically: true) { result in
            switch result {
            case .success(let product):
                AnalyticsHelper.sendFirebaseEvents(events: .purchase_success, params: ["id": id, "controller": controller])
                AnalyticsHelper.sendAppsFlyerEvent(event: .appsflyer_purchase_success, values: ["id": id])
                AnalyticsHelper.sendFacebookEvent(event: .fb_purchase_success, values: ["id": id])
                
                // fetch content from your server, then:
                if product.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(product.transaction)
                }
                print("Purchase Success: \(product.productId)")
                
                let receiptData = SwiftyStoreKit.localReceiptData
                if let receiptString = receiptData?.base64EncodedString(options: []) {
                    let mutation = OrderCreateMutation(receipt: receiptString)
                    let _ = Network.shared.mutation(model: OrderCreate.self, mutation, controller: nil, successHandler: { model in
                        let _ = Network.shared.query(model: MeDataModel.self, MeQuery(), controller: nil) { model in
                            KeychainService.standard.me = model.me
                            LillActivityIndicator.shared.hide()
                        } failureHandler: { error in
                            LillActivityIndicator.shared.hide()
                        }
                        
                    }, failureHandler: { error in
                        LillActivityIndicator.shared.hide()
                    })
                } else {
                    LillActivityIndicator.shared.hide()
                }
                
            case .error(let error):
                LillActivityIndicator.shared.hide()
                var errorMessage = ""
                switch error.code {
                case .unknown: errorMessage = "Unknown error. Please contact support"
                case .clientInvalid: errorMessage = "Not allowed to make the payment"
                case .paymentCancelled:
                    AnalyticsHelper.sendFirebaseEvents(events: .purchase_cancel, params: ["id": id])
                    return
                case .paymentInvalid: errorMessage = "The purchase identifier was invalid"
                case .paymentNotAllowed: errorMessage = "The device is not allowed to make the payment"
                case .storeProductNotAvailable: errorMessage = "The product is not available in the current storefront"
                case .cloudServicePermissionDenied: errorMessage = "Access to cloud service information is not allowed"
                case .cloudServiceNetworkConnectionFailed: errorMessage = "Could not connect to the network"
                case .cloudServiceRevoked: errorMessage = "User has revoked permission to use this cloud service"
                default: errorMessage = (error as NSError).localizedDescription
                }
                
                AnalyticsHelper.sendFirebaseEvents(events: .purchase_error, params: ["message": errorMessage])
            }
        }
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

//----------------------------------------------
// MARK: - AppsFlyerLibDelegate
//----------------------------------------------

extension AppDelegate: AppsFlyerLibDelegate {
    
    func onConversionDataSuccess(_ data: [AnyHashable: Any]) {
        print("onConversionDataSuccess data:")
        for (key, value) in data {
            print(key, ":", value)
        }
        if let status = data["af_status"] as? String {
            if (status == "Non-organic") {
                if let sourceID = data["media_source"],
                   let campaign = data["campaign"] {
                    print("This is a Non-Organic install. Media source: \(sourceID)  Campaign: \(campaign)")
                }
            } else {
                print("This is an organic install.")
            }
            if let is_first_launch = data["is_first_launch"] as? Bool,
               is_first_launch {
                print("First Launch")
            } else {
                print("Not First Launch")
            }
        }
    }
    
    func onConversionDataFail(_ error: Error) {
        print("\(error)")
    }
    
    func onAppOpenAttribution(_ attributionData: [AnyHashable: Any]) {
        print("onAppOpenAttribution data:")
        for (key, value) in attributionData {
            print(key, ":",value)
        }
    }
    
    func onAppOpenAttributionFailure(_ error: Error) {
        print("\(error)")
    }
}
