//
//  DiseaseArchiveModel.swift
//  Lill
//
//  Created by Andrey S on 03.11.2021.
//

import Foundation

struct DiseaseArchiveModel: Codable {
    let diagnoseArhive: DiseaseMainModel
}

struct DiseaseMainModel: Codable {
    let pagination: PaginationModel
    let plant: [DiseasePlant]
}

struct DiseasePlant: Codable {
    let diagnoseDescription: String
    let diagnoseTitle: String
    let plant: PlantModel
}
