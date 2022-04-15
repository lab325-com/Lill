
import Foundation

fileprivate let kLprojFileType = "lproj"

class LocalizationService {
    
    // MARK: - Singleton
    
    static let shared = LocalizationService()
    
    // MARK: - Private properties
    
    private var currentBundle: Bundle
    private(set) var currentLanguage: LanguageType
    
    // MARK: - Private init
    
    private init() {
        let deviceLanguage = Locale.components(fromIdentifier: Locale.preferredLanguages[0])["kCFLocaleLanguageCodeKey"]!
        switch deviceLanguage {
        case "ru":
            self.currentLanguage = .russian
        case "es":
            self.currentLanguage = .spanish
        default:
            self.currentLanguage = .english
        }
        guard let path = Bundle.main.path(forResource: currentLanguage.rawValue, ofType: kLprojFileType), let bundle = Bundle(path: path) else { fatalError("Error loading bundle!") }
        currentBundle = bundle
    }
    
    func localizedString(key: String, args: Int) -> String {
        let format = NSLocalizedString(key, tableName: nil, bundle: currentBundle, value: "(\(currentLanguage.rawValue))\(key)", comment: "")
        return String(format: format, args)
    }
}
