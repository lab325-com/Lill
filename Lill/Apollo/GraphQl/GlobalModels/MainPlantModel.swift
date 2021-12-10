//
//  PlantModel.swift
//  Lill
//
//  Created by Andrey S on 03.11.2021.
//

import Foundation

struct PlantModel: Codable {
    let cares: [CaresModel]?
    let climate: ClimatModel?
    let descriptionFull: String?
    let descriptionWikiHtml: String?
    let id: String
    var isFavourite: Bool?
    let latinName: String
    let plantImages: [MediaModel]
    let names: String
    let wikiUrl: String?
    
    mutating func changeIsFavorite(_ isFavourite: Bool) {
        self.isFavourite = isFavourite
    }
    
    enum CodingKeys: String, CodingKey {
        case cares = "PlantCares"
        case climate = "Climate"
        case descriptionFull = "descriptionFull"
        case descriptionWikiHtml = "descriptionWikiHtml"
        case id = "id"
        case isFavourite = "isFavourite"
        case latinName = "latinName"
        case plantImages = "plantImages"
        case names = "names"
        case wikiUrl = "wikiUrl"
    }
}
