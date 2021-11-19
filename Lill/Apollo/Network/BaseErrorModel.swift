//
//  BaseErrorModel.swift
//  Lill
//
//  Created by Andrey S on 19.11.2021.
//

import Foundation

struct BaseErrorModel: Codable {
    let errors: ErrorsModel
}

struct ErrorsModel: Codable {
    let message: String
}
