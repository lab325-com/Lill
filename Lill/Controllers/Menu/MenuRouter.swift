//
//  MenuRouter.swift
//  Lill
//
//  Created by Andrew Bilohorodskiy on 25.10.2021.
//

import Foundation

class MenuRouter: BaseRouter {
    func logOut(){
        PreferencesManager.sharedManager.removePreference()
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
    
    func presentSubscription(controller: String) {
        let controller = SubcribeController(controller: controller)
        present(controller: controller)
    }
    
    func presentYearSubscription() {
        let controller = SubscribeYearController()
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        present(controller: controller, presentStyle: .overFullScreen)
    }
    
    func presentYearPaywall(delegate: PaywallYearDelegate?, controller: String) {
        let controller = PaywallYearController(delegate: delegate, controller: controller)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        present(controller: controller, presentStyle: .overFullScreen)
    }
    
    func presentLifetimePayWall(controller: String) {
        let controller = PaywallLifetimeController(controller: controller)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        present(controller: controller, presentStyle: .overFullScreen)
    }
    
    func presentComboPaywall(popupType: PopupType, controller: String) {
        let controller = PaywallComboController(popupType: popupType, controller: controller)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        present(controller: controller, presentStyle: .overFullScreen)
    }
}
