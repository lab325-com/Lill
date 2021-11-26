//
//  RestAuth.swift
//  Lill
//
//  Created by Andrey S on 09.11.2021.
//

import Foundation
import Alamofire

extension Social {
    var valueApiRest: String {
        switch self {
        case .fb, .instagram:
            return "ACCOUNT_TYPE_FACEBOOK"
        case .google:
            return "ACCOUNT_TYPE_GOOGLE"
        case .apple:
            return "ACCOUNT_TYPE_APPLE"
        default:
            return "ACCOUNT_TYPE_UDID"
        }
    }
}

class RestAuth: RestCalls {
    func login(token: String,
               social: Social,
               name: String = "",
               success: @escaping (AuthModel) -> (),
               failure: ((String?, Error?)->())?) {
        
        var params = ["token": token,
                      "social" : social.valueApiRest]
        
        if let fcmToken = PreferencesManager.sharedManager.fcmToken {
            params["firebaseId"] = fcmToken
        }
        
        self.call(model: AuthModel.self, path: RestSuffix.Auth.login().getURL(), method: .post, name: name, params: params, success: { (model) in
            success(model)
        }, error: { (error) in
            if let failure = failure {
                failure(error["error"] as? String ?? "Trouble", nil)
            }
            debugPrint(#function, error)
        }) { (error) in
            if let failure = failure {
                failure(nil, error)
            }
            debugPrint(#function, error.localizedDescription)
        }
    }
}
