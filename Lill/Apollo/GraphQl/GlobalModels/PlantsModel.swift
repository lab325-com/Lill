
import Foundation

struct PlantsModel: Codable {
    let id: String
    let description: DescriptionModel
}

struct DescriptionModel: Codable {
    let is_favorite: Bool
    let name: String
    let names: String?
    let image: ImageModel
}

struct ImageModel: Codable {
    let media_id: String?
    let urlIosFull: String?
    let urlIosPrev: String?
}
