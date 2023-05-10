//
//  GardenPlantClone.swift
//  Lill
//
//  Created by mob325 on 23.11.2021.
//

import Foundation

struct GardenPlantClone: Codable {
    let gardenPlantClone: GardenMainPlantClone
}

struct GardenMainPlantClone: Codable {
    let id: String
}
