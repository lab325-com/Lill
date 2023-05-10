//
//  AuthModel.swift
//  Lill
//
//  Created by mob325 on 09.11.2021.
//

import Foundation

struct AuthModel: Codable {
    let token: String
    var isExpired: Bool? = false
}
