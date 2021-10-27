
import Foundation

struct PlantDataModel: Codable {
    let plantById: PlantModel
}

struct PlantModel: Codable {
    let cares: [CaresModel]
    let climate: ClimatModel
    let descriptionFull: String
    let descriptionWikiHtml: String
    let id: String
    let isFavourite: Bool?
    let latinName: String
    let mainImages: [MediaModel]
    let names: String
    let wikiUrl: String?
}
