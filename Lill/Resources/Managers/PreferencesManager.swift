
import Foundation

class PreferencesManager : NSObject {
    
    private lazy var jsonDecoder = JSONDecoder()
    private lazy var jsonEncoder = JSONEncoder()
    
    //MARK: - Keys
    static let isFirstRun = "isFirstRun"
    static let languageCode = "languageCode"
    static let fcmToken = "fcmToken"
    static let isNeedSendReceipts = "isNeedSendReceipts"
    static let datePaywall = "datePaywall"
    static let firstPaywall = "firstPaywall"
    static let countInDatePaywall = "countInDatePaywall"
    
    static let isLoadConfig = "isLoadConfig"
    static let isShowFirstOnboarding = "isShowFirstOnboarding"
    static let currentPopUp = "currentPopUp"
    static let paywallType = "paywallType"
    
    var userDefaults: UserDefaults
    
    required override init() {
        userDefaults = UserDefaults.standard
    }
    
    static let sharedManager: PreferencesManager = {
        let sharedInstance = PreferencesManager()
        return sharedInstance
    }()
    
    
    /// Set the models of the specified key
    ///
    /// - Parameters:
    ///   - models: The objects models to store in the defaults database
    ///   - key: The keys with which to associate the value.
    @discardableResult
    func set<Model: Codable>(_ models: [Model], forKey key: String) -> Bool {
        do {
            let data = try self.jsonEncoder.encode(models)
            userDefaults.set(data, forKey: key)
            return userDefaults.synchronize()
        }
        catch {
            debugPrint("\(#function) with error: \(error)")
            return false
        }
    }
    
    /// Returns the array of object model associated with the specified key
    ///
    /// - Parameter key: A key in the current user‘s defaults database.
    /// - Returns: The objects models associated with the specified key, or nil if the key does not exist or its value is not a data object.
    func models<Model: Codable>(forKey key: String) -> [Model]? {
        guard let data = userDefaults.data(forKey: key) else { return nil }
        do {
            return try self.jsonDecoder.decode([Model].self, from: data)
        } catch {
            debugPrint("\(#function) with error: \(error)")
            return nil
        }
    }
    
    
    /// Set the model of the specified key
    ///
    /// - Parameters:
    ///   - model: The object model to store in the defaults database
    ///   - key: The key with which to associate the value.
    /// - Returns: true if the data was saved successfully to disk, otherwise false.
    @discardableResult
    func set<Model: Codable>(_ model: Model, forKey key: String) -> Bool {
        do {
            let data = try self.jsonEncoder.encode(model)
            self.userDefaults.set(data, forKey: key)
            return self.userDefaults.synchronize()
        }
        catch {
            debugPrint("\(#function) with error: \(error)")
            return false
        }
    }
    
    /// Returns the object model associated with the specified key
    ///
    /// - Parameter key: A key in the current user‘s defaults database.
    /// - Returns: The object model associated with the specified key, or nil if the key does not exist or its value is not a data object.
    func model<Model: Codable>(forKey key: String) -> Model? {
        guard let data = self.userDefaults.data(forKey: key) else { return nil }
        do {
            return try self.jsonDecoder.decode(Model.self, from: data)
        } catch {
            debugPrint("\(#function) with error: \(error)")
            return nil
        }
    }
    
    //MARK: - Vars
    
    var isNeedSendReceipts: Bool {
        get {
            return userDefaults.bool(forKey: PreferencesManager.isNeedSendReceipts)
        }
        set {
            userDefaults.set(newValue, forKey: PreferencesManager.isNeedSendReceipts)
            userDefaults.synchronize()
        }
    }
    
    var isFirstRun: Bool {
        get {
            return userDefaults.bool(forKey: PreferencesManager.isFirstRun)
        }
        set {
            userDefaults.set(newValue, forKey: PreferencesManager.isFirstRun)
            userDefaults.synchronize()
        }
    }
   
    var languageCode: LanguageType {
        get {
            return LanguageType(rawValue: UserDefaults.standard.string(forKey: PreferencesManager.languageCode) ?? "english") ?? LanguageType.english
        }
        set {
            userDefaults.set(newValue.rawValue, forKey: PreferencesManager.languageCode)
            userDefaults.synchronize()
        }
    }
    
    var fcmToken: String? {
        get {
            return self.model(forKey: PreferencesManager.fcmToken)
        }
        set {
            self.set(newValue, forKey: PreferencesManager.fcmToken)
        }
    }
    
    var datePaywall: Date? {
        get {
            return self.model(forKey: PreferencesManager.datePaywall)
        }
        set {
            self.set(newValue, forKey: PreferencesManager.datePaywall)
        }
    }
    
    var firstPaywall: Bool {
        get {
            return userDefaults.bool(forKey: PreferencesManager.firstPaywall)
        }
        set {
            userDefaults.set(newValue, forKey: PreferencesManager.firstPaywall)
            userDefaults.synchronize()
        }
    }
    
    var countInDatePaywall: Int? {
        get {
            return userDefaults.integer(forKey: PreferencesManager.countInDatePaywall)
        }
        set {
            userDefaults.set(newValue, forKey: PreferencesManager.countInDatePaywall)
            userDefaults.synchronize()
        }
    }
    
    func removePreference() {
        PreferencesManager.sharedManager.firstPaywall = false
        PreferencesManager.sharedManager.countInDatePaywall = nil
        PreferencesManager.sharedManager.datePaywall = nil
    }
}

//----------------------------------------------
// MARK: - Firebase config
//----------------------------------------------

extension PreferencesManager {
    var isLoadConfig: Bool {
        get {
            return userDefaults.bool(forKey: PreferencesManager.isLoadConfig)
        }
        set {
            userDefaults.set(newValue, forKey: PreferencesManager.isLoadConfig)
            userDefaults.synchronize()
        }
    }
    
    var isShowFirstOnboarding: Bool {
        get {
            return userDefaults.bool(forKey: PreferencesManager.isShowFirstOnboarding)
        }
        set {
            userDefaults.set(newValue, forKey: PreferencesManager.isShowFirstOnboarding)
            userDefaults.synchronize()
        }
    }
    
    var currentPopUp: PopupType? {
        get {
            return PopupType(rawValue: UserDefaults.standard.string(forKey: PreferencesManager.currentPopUp) ?? "")
        }
        set {
            userDefaults.set(newValue?.rawValue, forKey: PreferencesManager.currentPopUp)
            userDefaults.synchronize()
        }
    }
    
    var paywallType: PaywallType? {
        get {
            return PaywallType(rawValue: UserDefaults.standard.string(forKey: PreferencesManager.paywallType) ?? "")
        }
        set {
            userDefaults.set(newValue?.rawValue, forKey: PreferencesManager.paywallType)
            userDefaults.synchronize()
        }
    }
}
