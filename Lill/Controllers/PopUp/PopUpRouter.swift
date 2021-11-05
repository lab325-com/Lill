//
//  PopUpRouter.swift
//  Lill
//
//  Created by Andrey S on 05.11.2021.
//

import UIKit

class PopUpRouter: BaseRouter {
    func uniquePlant(){
        let controller = PopUniquePlantController()
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        present(controller: controller,animated: true, presentStyle: .overCurrentContext)
    }
}

