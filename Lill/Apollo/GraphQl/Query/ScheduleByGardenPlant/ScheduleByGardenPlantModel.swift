//
//  ScheduleByGardenPlantModel.swift
//  Lill
//
//  Created by mob325 on 18.11.2021.
//

import Foundation

struct ScheduleByGardenPlantModel: Codable {
    let scheduleByGardenPlant: [ScheduleByGardenPlantMainModel]
}

struct ScheduleByGardenPlantMainModel: Codable {
    let careTypeId: Int
    let careTypeName: PlantsCareType
    let nextDate: String
    let status: StatusGardenCareType
    let gardenName: String
    
    var date: Date {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        return dateFormatter.date(from:nextDate) ?? Date()
    }
}
