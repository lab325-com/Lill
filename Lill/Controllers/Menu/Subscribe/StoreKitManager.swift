//
//  StoreKitManager.swift
//  Lill
//
//  Created by mob325 on 04.02.2022.
//

import StoreKit

class StoreKitManager {
    static let sharedInstance = StoreKitManager()
    
    enum ConditionType: String, Codable {
        case favorite = "totalFavouritePlants"
        case plants = "totalGardenPlants"
        case identify = "identifyUsed"
        case diagnosis = "diagnosisUsed"
        case unique = "totalUniquePlants"
        case gardens = "totalGardens"
        case login = "login"
    }
    
    func checkSaleType(type: ConditionType) -> (SalesModel?) {
        return KeychainService.standard.me?.sales?.first(where: {$0.condition == type.rawValue})
    }
}
