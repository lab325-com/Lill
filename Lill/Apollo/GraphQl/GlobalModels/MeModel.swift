
import Foundation

struct MeModel: Codable {
    let id: String
    let fullName: String?
    let email: String?
    let timezone: String?
    let defaultGardenId: String?
    var hasUdid: Bool
    var notificationSettings: NotificationSettings?
    let language: LanguageModel
    var gardens: [GardenModel]
    let access: AccessModel
    let sales: [SalesModel]?
    let totalGardens: Int
    let totalFavouritePlants: Int
    let totalGardenPlants: Int
    let totalUniquePlants: Int
    
    mutating func changeNotification(notification: NotificationSettings?) {
        self.notificationSettings = notification
    }
    
    mutating func updateGardens(gardens: [GardenModel]) {
        self.gardens = gardens
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case fullName = "fullName"
        case email = "email"
        case timezone = "timezone"
        case defaultGardenId = "defaultGardenId"
        case hasUdid = "hasUdid"
        case language = "Language"
        case gardens = "Gardens"
        case access = "access"
        case notificationSettings = "NotificationSettings"
        case sales = "Sales"
        case totalGardens = "totalGardens"
        case totalFavouritePlants = "totalFavouritePlants"
        case totalGardenPlants = "totalGardenPlants"
        case totalUniquePlants = "totalUniquePlants"
    }
}

struct NotificationSettings: Codable {
    let cares: Bool
    let waitingCares: Bool
    let missedCares: Bool
    let frequency: NotificationsHours
    let secondChance: Bool
    let secondChanceSendAfter: NotificationsHours
    let todayList: Bool
    let todayListSendAt: String
}

struct NotificationsHours: Codable {
    let hours: Int
    let minutes: Int?
    let seconds: Int?
}

struct SalesModel: Codable {
    let sale: SaleType
    let condition: String
    let value: Int
}

extension SaleType: Codable { }
