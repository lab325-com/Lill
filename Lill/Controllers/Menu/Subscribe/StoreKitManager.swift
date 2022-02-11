//
//  StoreKitManager.swift
//  Lill
//
//  Created by Andrey S on 04.02.2022.
//

import StoreKit

class StoreKitManager {
    static let sharedInstance = StoreKitManager()
    
    let yearly = "com.lill.subscription.yearly"
    let yearly50 = "com.lill.subscription.yearly.50"
    
    func isYearly50() -> Bool {
        return KeychainService.standard.me?.sales?.contains(where: {$0.name == yearly50}) ?? false
    }
}
