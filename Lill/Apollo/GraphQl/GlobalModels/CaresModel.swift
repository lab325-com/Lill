
import Foundation

struct CaresModel: Codable {
    let count: Int
    let id: String?
    let period: PeriodType
    let type: CareType
    
    enum CodingKeys: String, CodingKey {
        case count = "count"
        case id = "id"
        case period = "period"
        case type = "CareType"
    }
    
}

extension PeriodType: Codable {
    var localization: String {
        switch self {
        case .periodTypeDay:
            return RLocalization.care_period_type_days.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .periodTypeMonth:
            return RLocalization.care_period_type_mounths.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .periodTypeWeek:
            return RLocalization.care_period_type_weeks.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .__unknown(_):
            return RLocalization.care_period_type_unknown.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
    }
}
