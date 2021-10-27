
import Foundation

struct CaresModel: Codable {
    let count: Int
    let id: String?
    let period: String
    let type: CareType
}

struct CareType: Codable {
    let id: String
    let name: String
}
