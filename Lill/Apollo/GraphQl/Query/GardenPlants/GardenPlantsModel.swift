
import Foundation

struct GardenPlantsDataModel: Codable {
    let gardenPlants: GardenPlantsModel
}

struct GardenPlantsModel: Codable {
    let gardenPlants: [GardenPlantModel]?
    let pagination: PaginationModel
    
    enum CodingKeys: String, CodingKey {
        case gardenPlants = "GardenPlants"
        case pagination = "Pagination"
    }
}

struct GardenPlantModel: Codable {
    let name: String?
    let isHappy: Bool
    let userMainImage: MediaModel?
    let gardenPlantCares: [GardenPlantCaresModel]
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case isHappy = "isHappy"
        case userMainImage = "userMainImage"
        case gardenPlantCares = "GardenPlantCares"
    }
}

struct GardenPlantCaresModel: Codable {
    let count: Int
    let period: String
    let careType: CareType
    
    enum CodingKeys: String, CodingKey {
        case count = "count"
        case period = "period"
        case careType = "CareType"
    }
}
