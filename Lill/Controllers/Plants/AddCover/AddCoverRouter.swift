//
//  AddCoverRouter.swift
//  Lill
//
//  Created by Andrey S on 05.11.2021.
//

import UIKit

class AddCoverRouter: BaseRouter {
    func presentAddCoverIdentifier(tabBarController: UITabBarController?, text: String, delegate: AddCoverIdentifierProtocol) {
        let controller = AddCoverIdentifierController(text: text, delegate: delegate)
        let nc = UINavigationController(rootViewController: controller)
        nc.modalPresentationStyle = .fullScreen
        tabBarController?.present(nc, animated: true, completion: nil)
    }
    
    func pushAddCover(coverImage: UIImage, text: String, delegate: AddCoverAddProtocol) {
        let controller = AddCoverAddController(coverImage: coverImage, text: text, delegate: delegate)
        push(controller: controller)
    }
    
    func pushAddCare() {
        let controller = AddPlantsCareController()
        push(controller: controller)
    }
    
    func pushAddTime(selectedCares: Set<PlantsCareType>) {
        let controller = AddPlantTimeController(selectedCares: selectedCares)
        push(controller: controller)
    }
    
    func presentPickerCares(model: AddPlantTimeModel, delegate: PickerCareDelegate, isDatePicker: Bool) {
        let controller = PickerCaresController(model: model, delegate: delegate, isDatePicker: isDatePicker)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        present(controller: controller, presentStyle: .overCurrentContext)
    }

}
