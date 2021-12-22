
import Foundation

struct AddPlantTimeModel {
    let type: CareType
    var time: Date? = Calendar.current.date(bySettingHour: 12, minute: 00, second: 0, of: Date())
    var frequency: Int = 7
    var period: PeriodType = .periodTypeDay
    
    mutating func change(frequency: Int, period: PeriodType, date: Date?) {
        
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
            dayComponent.day = frequency
        case .periodTypeMonth:
            dayComponent.month = frequency
        case .periodTypeWeek:
            dayComponent.day = frequency * 7
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
