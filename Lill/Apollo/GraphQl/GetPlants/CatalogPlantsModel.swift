
import Foundation

enum TypePlants: String, Codable {
   case myPlant = "MYPLANT"
   case plant = "PLANT"
   case avatar = "AVATAR"
}

struct CatalogPlantsModel: Codable {
    let getCatalogPlants: DataModel
}

struct DataModel: Codable {
    let pagination: PaginationModel
    let totalFavorites: Int
    let plants: [PlantsModel]
}

struct PaginationModel: Codable {
    let limit: Int
    let nextPageExist: Bool
    let ofset: Int
    let prevPageExist: Bool
    let totalPages: Int
}

struct PlantsModel: Codable {
    let id: String
    let description: DescriptionModel
}

struct DescriptionModel: Codable {
    let is_favorite: Bool
    let name: String
    let image: ImageModel
}

struct ImageModel: Codable {
    let media_id: String
    let urlIosFull: String
    let urlIosPrev: String
}
