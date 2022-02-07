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
        let controller = RecognizeArchiveController()
        controller.hidesBottomBarWhenPushed = true
        push(controller: controller)
    }
    
    func pushDiseaseArchive(){
        let controller = DiseaseArchiveViewController()
        controller.hidesBottomBarWhenPushed = true
        push(controller: controller)
    }
    
    func pushLanguage(){
        let controller = LanguageController()
        controller.hidesBottomBarWhenPushed = true
        push(controller: controller)
    }
    
    func presentSubscription() {
        let controller = SubcribeController()
        present(controller: controller)
    }
    
    func presentYearSubscription() {
        let controller = SubscribeYearController()
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        present(controller: controller, presentStyle: .overFullScreen)
    }
}
