
import Foundation

struct CaresByGardensDataModel: Codable {
    let caresByGardens: [CaresByGardensModel]
}

struct CaresByGardensModel: Codable {
    let careCount: Int
    let careType: CareType
    
    enum CodingKeys: String, CodingKey {
        case careCount = "careCount"
        case careType = "CareType"
    }
}
