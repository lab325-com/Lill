
import Foundation

struct GardenPlantEditCaresDataModel: Codable {
    let gardenPlantCares: GardenPlantEditCaresModel
}

struct GardenPlantEditCaresModel: Codable {
    let cares: [CaresModel]
    let caresToDefaultButton: Bool
}
