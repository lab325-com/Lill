
import Foundation

struct GardenPlantsDataModel: Codable {
    let gardenPlants: GardenPlantsModel
}

struct GardenPlantsModel: Codable {
    let GardenPlants: [GardenPlantModel]?
    let Pagination: PaginationModel
}

struct GardenPlantModel: Codable {
    let name: String
    let isHappy: Bool
    let userMainImage: MediaModel
    let GardenPlantCares: [GardenPlantCaresModel]
}

struct GardenPlantCaresModel: Codable {
    let count: Int
    let period: String
    let CareType: CareType
}
