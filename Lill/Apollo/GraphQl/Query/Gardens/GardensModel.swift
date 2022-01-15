
import Foundation

struct GardensDataModel: Codable {
    let gardens: GardensModel
}

struct GardensModel: Codable {
    let gardens: [GardenModel]
    
    enum CodingKeys: String, CodingKey {
        case gardens = "Gardens"
    }
}
