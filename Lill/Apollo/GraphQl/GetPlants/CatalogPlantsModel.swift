
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
