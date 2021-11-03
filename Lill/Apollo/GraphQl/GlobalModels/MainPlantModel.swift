//
//  PlantModel.swift
//  Lill
//
//  Created by Andrey S on 03.11.2021.
//

import Foundation

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
