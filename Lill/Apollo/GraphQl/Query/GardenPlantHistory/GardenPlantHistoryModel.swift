//
//  GardenPlantHistoryModel.swift
//  Lill
//
//  Created by mob325 on 21.12.2021.
//

import Foundation

extension GardenPlantHistoryType: Codable {
    
}

struct GardenPlantHistoryModel: Codable {
    let gardenPlantHistory: GardenPlantHistoryMainModel
}

struct GardenPlantHistoryMainModel: Codable {
    let pagination: PaginationModel
    let gardenPlantsHistoryList: [GardenPlantsHistoryListModel]
    
    enum CodingKeys: String, CodingKey {
        case pagination = "Pagination"
        case gardenPlantsHistoryList = "GardenPlantsHistoryList"
    }
}

struct GardenPlantsHistoryListModel: Codable {
    let type: GardenPlantHistoryType
    let createdAt: String
    let gardenPlantCare: GardenPlantCareModel?
    let media: MediaModel?
    
    var date: Date {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        return dateFormatter.date(from: createdAt) ?? Date()
    }
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case createdAt = "createdAt"
        case gardenPlantCare = "GardenPlantCare"
        case media = "Media"
    }
    
}

struct GardenPlantCareModel: Codable {
    let id: String
    let name: PlantsCareType
    let status: StatusGardenCareType
}
