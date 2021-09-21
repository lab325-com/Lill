
import Foundation

class AppConfiguration {
    
    //----------------------------------------------
    // MARK: - Shared
    //----------------------------------------------
    static let shared: AppConfiguration = {
        let instance = AppConfiguration()
        return instance
    }()
    
    //----------------------------------------------
    // MARK: - Public Property
    //----------------------------------------------
    let configurationName: String
    let hostName: String
    let supportEmail: String
    let appName: String
    
    //----------------------------------------------
    // MARK: - Private Initializer
    //----------------------------------------------
    private init() {
        let bridge = AppConfigurationBridge()
        self.configurationName = bridge.configurationDescription
        self.hostName = bridge.hostName
        self.supportEmail = bridge.supportEmail
        self.appName = bridge.appName
    }
    
}
