//
//  GardenPlantStatisticsModel.swift
//  Lill
//
//  Created by mob325 on 21.12.2021.
//

import Foundation

struct GardenPlantStatisticsModel: Codable {
    let gardenPlantStatistics: GardenPlantStatisticsMainModel
    
    enum CodingKeys: String, CodingKey {
        case gardenPlantStatistics = "GardenPlantStatistics"
    }
}

struct GardenPlantStatisticsMainModel: Codable {
    let caresDone: Int
    let age: Int
    let waterDrank: Float
}
