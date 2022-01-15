
import Foundation

struct GardenModel: Codable {
    let id: String
    let name: String
    let userMainImage: MediaModel?
    let isDefault: Bool
    let totalPlants: Int?
    let needCareCount: Int?
}
