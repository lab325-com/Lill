
import Foundation

struct MeModel: Codable {
    let id: String
    let fullName: String?
    let email: String?
    let timezone: String?
    let defaultGardenId: String?
    let Language: LanguageModel
    let Gardens: [GardenModel]
    let access: AccessModel
    let notificationSettings: NotificationSettings
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case fullName = "fullName"
        case email = "email"
        case timezone = "timezone"
        case defaultGardenId = "defaultGardenId"
        case Language = "Language"
        case Gardens = "Gardens"
        case access = "access"
        case notificationSettings = "NotificationSettings"
    }
}

struct NotificationSettings: Codable {
    let cares: Bool
    let waitingCares: Bool
    let missedCares: Bool
    let frequency: Int
    let secondChance: Bool
    let secondChanceSendAfter: Int
    let todayList: Bool
    let todayListSendAt: String
}
