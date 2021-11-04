
import Foundation

struct PlantsModel: Codable {
    let id: String
    var description: DescriptionModel
}

struct DescriptionModel: Codable {
    var is_favorite: Bool
    let name: String
    let names: String?
    let image: ImageModel
    
    mutating func changeIsFavorite(_ isFavourite: Bool) {
        self.is_favorite = isFavourite
    }
}

struct ImageModel: Codable {
    let media_id: String?
    let urlIosFull: String?
    let urlIosPrev: String?
}
