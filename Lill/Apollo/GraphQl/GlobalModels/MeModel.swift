//
//  MeModel.swift
//  Lill
//
//  Created by Andrey S on 02.11.2021.
//

import Foundation

struct MeModel: Codable {
    let access: AccessModel
    let avatar: String
    let barer: String
    let email: String?
    let id: String
    let fullName: String?
    let timezone: String?
    let defaultGardenId: String?
}
