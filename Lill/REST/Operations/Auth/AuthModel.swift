//
//  AuthModel.swift
//  Lill
//
//  Created by Andrey S on 09.11.2021.
//

import Foundation

struct AuthModel: Codable {
    let token: String
    var isExpired: Bool? = false
}
