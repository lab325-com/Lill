//
//  Router.swift
//  Lill
//
//  Created by Andrey S on 16.11.2021.
//

import Foundation

class GardenRouter: BaseRouter {
    
    func pushGardenDetail(id: String) {
        let controller = GardeDetailController(id: id)
        controller.hidesBottomBarWhenPushed = true
        push(controller: controller)
    }
}
