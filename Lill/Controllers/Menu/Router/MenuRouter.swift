//
//  MenuRouter.swift
//  Lill
//
//  Created by Andrew Bilohorodskiy on 25.10.2021.
//

import Foundation

class MenuRouter: BaseRouter {
    func logOut(){
        KeychainService.standard.removeAll()
        RootRouter.sharedInstance.loadLogin(toWindow: RootRouter.sharedInstance.window!)
    }
    
    func pushRecognizedArchive(){
        print("pushRecognizedArchive")
    }
    
    func pushDiseaseArchive(){
        print("pushDiseaseArchive")
    }
}
