//
//  File.swift
//  Lill
//
//  Created by Andrey S on 03.05.2022.
//

import Foundation
import Firebase

enum RemoteConfigParameters: String, CaseIterable {
    case isShowFirstOnboarding = "isShowFirstOnboarding"
}

extension RemoteConfigParameters {

    var value: Codable? {
        switch self {
        case .isShowFirstOnboarding:
            return try? self.toCodable().get() as Bool
        }
    }

    private func toCodable<T: Codable>() -> Result<T, Error> {
        let data = RemoteConfig.remoteConfig().configValue(forKey: self.rawValue).dataValue
        
         return Result { try JSONDecoder().decode(T.self, from: data) }
    }
}
