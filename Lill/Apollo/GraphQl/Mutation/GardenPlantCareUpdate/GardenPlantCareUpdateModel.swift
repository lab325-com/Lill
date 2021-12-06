
import Foundation

struct GardenPlantCareUpdateModel: Codable {
    let gardenPlantCareUpdate: GardenPlantCare
}

struct GardenPlantCare: Codable {
    let isActive: Bool
}
