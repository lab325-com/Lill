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
    
    func presentDeletePlan() {
        let controller = GardenDetailDeletePlanController()
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        present(controller: controller, presentStyle: .overCurrentContext)
    }
}
