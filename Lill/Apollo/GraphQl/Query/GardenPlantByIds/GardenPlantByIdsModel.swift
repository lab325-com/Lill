//
//  GardenPlantByIdsModel.swift
//  Lill
//
//  Created by mob325 on 25.11.2021.
//

import Foundation

struct GardenPlantByIdsModel: Codable {
    let gardenPlantByIds: [GardenPlantByMainIdsModel]
}

struct GardenPlantByMainIdsModel: Codable {
    let id: String
    let name: String?
    let userMainImage: GardenPlantByIdsMediaModel?
    
    var customIsDone: Bool?
    
    mutating func setCustomIsDone(_ isDone: Bool) {
        self.customIsDone = isDone
    }
}

struct GardenPlantByIdsMediaModel: Codable {
    let id: String?
    let urlIosPrev: String
}
