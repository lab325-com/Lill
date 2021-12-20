
import Foundation

struct CaresModel: Codable, Hashable {
    var count: Int
    let id: String?
    let name: String?
    var isActive: Bool?
    var sendNotificationAt: String?
    let nextDate: String?
    let type: CareType
    var period: PeriodType
    var time: Date? = Calendar.current.date(bySettingHour: 12, minute: 00, second: 0, of: Date())
    var frequency: Int = 7
    
    enum CodingKeys: String, CodingKey {
        case count = "count"
        case id = "id"
        case name = "name"
        case isActive = "isActive"
        case sendNotificationAt = "sendNotificationAt"
        case nextDate = "nextDate"
        case period = "period"
        case type = "CareType"
    }
    
    mutating func update(frequency: Int, period: PeriodType, date: Date?) {
        self.time = date
        self.frequency = frequency
        self.period = period
    }
    
    var getTime: String {
        guard let date = time else { return "12:00" }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        let dateString = dateFormatter.string(from: date)
        
        return dateString
    }
    
    var nextTime: String {
        var dayComponent    = DateComponents()
        
        switch period {
        case .periodTypeDay:
            dayComponent.day = count
        case .periodTypeMonth:
            dayComponent.month = count
        case .periodTypeWeek:
            dayComponent.day = count * 7
        default:
            return ""
        }
        
        guard let nextDate = Calendar.current.date(byAdding: dayComponent, to: Date()) else { return "" }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd"
        let dateString = dateFormatter.string(from: nextDate)
        
        return dateString
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
