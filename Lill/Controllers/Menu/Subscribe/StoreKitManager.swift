//
//  StoreKitManager.swift
//  Lill
//
//  Created by Andrey S on 04.02.2022.
//

import StoreKit

class StoreKitManager {
    static let sharedInstance = StoreKitManager()
    
    let lifetime50 = "com.lill.subscription.lifetime.50"
    let yearly50 = "com.lill.subscription.yearly.50"
    let combo = "combo"
    
    func isYearly50() -> Bool {
        return KeychainService.standard.me?.sales?.contains(where: {$0.name == yearly50}) ?? false
    }
    
    func isLifeTime50() -> Bool {
        return KeychainService.standard.me?.sales?.contains(where: {$0.name == lifetime50}) ?? false
    }
    
    func isCombo() -> Bool {
        return KeychainService.standard.me?.sales?.contains(where: {$0.name == combo}) ?? false
    }
}
