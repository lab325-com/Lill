
import Foundation

final class LaunchChecker <Entity> {
    
    var wasLaunchedBefore: Bool {
        return defaults.bool(forKey: self.entityName)
    }
    
    let entityName: String
    let defaults: UserDefaults
    
    init(for entity: Entity.Type, defaults: UserDefaults = UserDefaults.standard) {
        self.entityName = String(describing: entity)
        self.defaults = defaults
    }
    
    func isFirstLaunch() -> Bool {
        if !wasLaunchedBefore {
            defaults.set(true, forKey: entityName)
            return !PreferencesManager.sharedManager.isShowFirstOnboarding
        }
        return false
    }
}
