//
//  GeneratePromoOfferModel.swift
//  Lill
//
//  Created by Andrey S on 07.02.2022.
//

import Foundation

struct GeneratePromoOfferModel: Codable {
    let generatePromoOffer: GeneratePromoOfferMainModel
}

struct GeneratePromoOfferMainModel: Codable {
    let keyID: String
    let nonce: String
    let timestamp: String
    let signature: String
    let applicationUsername: String
}
