//
//  File.swift
//  Lill
//
//  Created by mob325 on 03.05.2022.
//

import Foundation
import Firebase

enum PaywallType: String, Codable {
    case saleTypeLongWeek
    case saleTypeLongYear
    case saleTypeShortWeek
    case saleTypeShortYear
}

enum PopupType: String, Codable {
    case pop3
    case pop2
    case weekTrial
}

enum RemoteConfigParameters: String, CaseIterable {
    case isShowFirstOnboarding = "isShowFirstOnboarding"
    case currentPopUp = "currentPopUp"
    case paywall = "paywall"
}

extension RemoteConfigParameters {

    var value: Codable? {
        switch self {
        case .isShowFirstOnboarding:
            return try? self.toCodable().get() as Bool
        case .paywall:
            return try? self.toCodable().get() as PaywallModel
        case .currentPopUp:
            return PopupType(rawValue: RemoteConfig.remoteConfig().configValue(forKey: self.rawValue).stringValue ?? "")
        }
    }

    private func toCodable<T: Codable>() -> Result<T, Error> {
        let data = RemoteConfig.remoteConfig().configValue(forKey: self.rawValue).dataValue
        
         return Result { try JSONDecoder().decode(T.self, from: data) }
    }
}
