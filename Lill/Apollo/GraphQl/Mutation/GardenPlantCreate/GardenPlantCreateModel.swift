//
//  GardenPlantCreateModel.swift
//  Lill
//
//  Created by Andrey S on 15.11.2021.
//

import Foundation

struct GardenPlantCreateModel: Codable {
    let gardenPlantCreate: GardenRecordCreateModel
}

struct GardenRecordCreateModel: Codable {
    let id: String
}
