//
//  GardenPlanByIDModel.swift
//  Lill
//
//  Created by mob325 on 16.11.2021.
//

import Foundation
import UIKit

struct GardenPlanByIDModel: Codable {
    var gardenPlantById:  GardenIDModel
}

struct GardenIDModel: Codable {
    let id: String
    var name: String?
    let userDescription: String?
    var sendNotifications: Bool
    var userMainImage: MediaModel?
    let plant: GardenShortPlantModel?
    let garden: GardenMiniModel?
    let gardenPlantCares: [GardenShortPlantCaresModel]
    
    mutating func changeName(_ name: String) {
        self.name = name
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case sendNotifications = "sendNotifications"
        case userDescription = "userDescription"
        case userMainImage = "userMainImage"
        case plant = "Plant"
        case garden = "Garden"
        case gardenPlantCares = "GardenPlantCares"
    }
    
    mutating func changeNotification(_ notifications: Bool) {
        self.sendNotifications = notifications
    }
}

struct GardenMiniModel: Codable {
    let id: String
    let name: String
}

struct GardenShortPlantCaresModel: Codable {
    let id: String
    let name: String?
    let count: Int
    let period: PeriodType
    let nextDate: String
    let status: StatusGardenCareType
    let type: CareType
    
    var date: Date {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        return dateFormatter.date(from:nextDate) ?? Date()
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case count = "count"
        case period = "period"
        case nextDate = "nextDate"
        case status = "status"
        case type = "CareType"
    }
}

struct GardenShortPlantModel: Codable {
    let cares: [CaresModel]?
    let climate: ClimatModel?
    let descriptionFull: String?
    let descriptionWikiHtml: String?
    let id: String
    var isFavourite: Bool?
    let latinName: String
    let plantImages: [MediaModel]?
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
