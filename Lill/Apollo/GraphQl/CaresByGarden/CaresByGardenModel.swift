
import Foundation

struct CaresByGardenDataModel: Codable {
    let caresByGarden: [CaresByGardenModel]
}

struct CaresByGardenModel: Codable {
    let careCount: Int?
    let careType: CareType?
}
