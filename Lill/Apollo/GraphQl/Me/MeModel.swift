
import Foundation

struct MeDataModel: Codable {
    let me: MeModel
}

struct MeModel: Codable {
    let access: AccessModel
    let avatar: String
    let barer: String
    let id: String
    let lang: String
    let name: String
}

struct AccessModel: Codable {
    let diagnosisAvaliable: Bool
    let identifyTotal: Int
    let identifyUsed: Int
    let isPremium: Bool
}
