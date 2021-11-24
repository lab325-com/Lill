
import UIKit

enum StatusGardenCareType: String, Codable {
    case done
    case upcoming
    case waiting
    case missed
    
    var color: UIColor {
        switch self {
        case .done, .upcoming:
            return UIColor(rgb: 0x7CDAA3)
        case .waiting:
            return UIColor(rgb: 0xFFA654)
        case .missed:
            return UIColor(rgb: 0xF96161)
        }
    }
    
    var colorScheldure: UIColor {
        switch self {
        case .done:
            return UIColor(rgb: 0x7CDAA3)
        case .upcoming:
            return UIColor(rgb: 0xC4C4C4)
        case .waiting:
            return UIColor(rgb: 0xFFA654)
        case .missed:
            return UIColor(rgb: 0xF96161)
        }
    }

    var text: String {
        switch self {
        case .done:
            return RLocalization.garden_plan_done.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .upcoming:
            return RLocalization.garden_plan_upcoming.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .waiting:
            return RLocalization.garden_plan_waiting.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .missed:
            return RLocalization.garden_plan_missed.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
    }
    
    var gardenCareStatusText: String {
        switch self {
        case .waiting:
            return RLocalization.garden_plan_waiting.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .missed:
            return RLocalization.garden_plan_missed.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        default:
            return ""
        }
    }
    
    var gardenCareStatuslmage: UIImage {
        switch self {
        case .waiting:
            return RImage.garden_care_waiting_ic()!
        case .missed:
            return RImage.garden_care_missed_ic()!
        default:
            return UIImage()
        }
    }
}
