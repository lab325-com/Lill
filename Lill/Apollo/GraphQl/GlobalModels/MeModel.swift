
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
}
