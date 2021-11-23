//
//  Router.swift
//  Lill
//
//  Created by Andrey S on 16.11.2021.
//

import Foundation

class GardenRouter: BaseRouter {
    
    func pushGardenDetail(id: String, delegate: GardenDetailProtocolo) {
        let controller = GardeDetailController(id: id, delegate: delegate)
        controller.hidesBottomBarWhenPushed = true
        push(controller: controller)
    }
    
    func presentDeletePlan(plantID: String, imageUrl: String, text: String, delegate: GardenDetailDeleteDelegate) {
        let controller = GardenDetailDeletePlanController(plantID: plantID, imageUrl: imageUrl, text: text, delegate: delegate)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        present(controller: controller, presentStyle: .overCurrentContext)
    }
    
    func presentChooseAddPlant() {
        let controller = GardenChooseAddPlantController()
        present(controller: controller, animated: false, presentStyle: .overFullScreen)
    }
    
    func presentGadrenCaresDetail(plantId: String) {
        let controller = GardenCaresDetail(plantID: plantId)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        present(controller: controller, presentStyle: .overCurrentContext)
    }
}
