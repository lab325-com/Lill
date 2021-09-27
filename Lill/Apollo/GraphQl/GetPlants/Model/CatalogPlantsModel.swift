
import Foundation

struct CatalogPlantsModel: Codable {
    let getCatalogPlants: DataModel
}

struct DataModel: Codable {
    let pagination: PaginationModel
    let plants: [PlantsModel]
}

struct PaginationModel: Codable {
    let limit: Int
    let ofset: Int
    let totalPages: Int
    let nextPageExist: Bool
    let prevPageExist: Bool
}

struct PlantsModel: Codable {
    let id: String
    let description: DescriptionModel
}

struct DescriptionModel: Codable {
    let name: LanguageModel
}

struct LanguageModel: Codable {
    let ru: String
    let en: String
}
