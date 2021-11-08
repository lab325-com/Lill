
import Foundation

struct GardenPlantsDataModel: Codable {
    let gardenPlants: GardenPlantsModel
}

struct GardenPlantsModel: Codable {
    let GardenPlants: [GardenPlantModel]
    let Pagination: PaginationModel
}

struct GardenPlantModel: Codable {
    let name: String
    let userMainImage: MediaModel
}
