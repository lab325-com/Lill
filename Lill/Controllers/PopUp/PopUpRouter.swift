//
//  PopUpRouter.swift
//  Lill
//
//  Created by Andrey S on 05.11.2021.
//

import UIKit

class PopUpRouter: BaseRouter {
    func presentPopChangeName(delegate: PopChangeNameProtocol, text: String?, plantID: String){
        let controller = PopChangeNameController(delegate: delegate, text: text, plantID: plantID)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        present(controller: controller,animated: true, presentStyle: .overCurrentContext)
    }
    
    func presentUniquePlant(tabBarController: UITabBarController?, delegate: PopUniqePlanProtocol){
        let controller = PopUniquePlantController(delegate: delegate)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        tabBarController?.present(controller, animated: true, completion: nil)
    }
}

