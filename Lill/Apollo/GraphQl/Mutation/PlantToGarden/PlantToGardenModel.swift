
import Foundation

struct PlantToGardenDataModel: Codable {
    let plantToGarden: PlantToGardenMainModel
}

struct PlantToGardenMainModel: Codable {
    let id: String
}
