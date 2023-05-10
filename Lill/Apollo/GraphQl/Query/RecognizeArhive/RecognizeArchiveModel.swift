//
//  RecognizeArchiveModel.swift
//  Lill
//
//  Created by mob325 on 03.11.2021.
//

import Foundation

struct RecognizeArchiveModel: Codable {
    let recognizedArhive: RecognizeArchiveMainModel
}

struct RecognizeArchiveMainModel: Codable {
    let pagination: PaginationModel
    let plant: [PlantModel]
}
