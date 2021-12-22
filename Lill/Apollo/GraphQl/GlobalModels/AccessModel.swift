
import Foundation

struct AccessModel: Codable {
    let diagnosisAvaliable: Bool
    let diagnosisTotal: Int?
    let diagnosisUsed: Int
    let identifyTotal: Int?
    let identifyUsed: Int
    let isPremium: Bool
    let subscriptionName: String?
    let subscription: SubscriptionInfoModel?
}

struct SubscriptionInfoModel: Codable {
    let name: String?
    let duration: String?
}
