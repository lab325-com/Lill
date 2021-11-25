//
//  ScheduleByGardensModel.swift
//  Lill
//
//  Created by Andrey S on 24.11.2021.
//

import Foundation

struct ScheduleByGardensModel: Codable {
    let scheduleByGardens: [ScheduleMainModel]
}

struct ScheduleMainModel: Codable {
    let careTypeId: Int
    let careTypeName: PlantsCareType
    let nextDate: String
    let status: StatusGardenCareType
    let gardenName: String
    let gardenPlantIds: [String]
    
    var date: Date {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        return dateFormatter.date(from:nextDate) ?? Date()
    }
}
