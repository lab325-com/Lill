
import Foundation

struct CaresByGardenDataModel: Codable {
    let caresByGarden: [CaresByGardenModel]
}

struct CaresByGardenModel: Codable {
    let careCount: Int
    let careType: CareType
    
    enum CodingKeys: String, CodingKey {
        case careCount = "careCount"
        case careType = "CareType"
    }
}
