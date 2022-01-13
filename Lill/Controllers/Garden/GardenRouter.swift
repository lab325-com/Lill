//
//  Router.swift
//  Lill
//
//  Created by Andrey S on 16.11.2021.
//

import UIKit

class GardenRouter: BaseRouter {
    
    func pushToGarden(gardenId: String, gardenName: String) {
        let controller = GardenController(gardenId: gardenId, gardenName: gardenName)
        controller.hidesBottomBarWhenPushed = true
        push(controller: controller)
    }
    
    func pushToEditGarden(gardenId: String) {
        let controller = GardenEdit(gardenId: gardenId)
        controller.hidesBottomBarWhenPushed = true
        push(controller: controller)
    }
    
    func pushToEditGardenChangeCover(gardenId: String, delegate: GardenEditChangeCoverDelegate) {
        let controller = GardenEditChangeCover(gardenId: gardenId, delegate: delegate)
        controller.delegate = delegate
        controller.hidesBottomBarWhenPushed = true
        push(controller: controller)
    }
    
    func presentEditGardenChangeName(gardenId: String, delegate: GardenEditChangeNameDelegate) {
        let controller = GardenEditChangeName(gardenId: gardenId, delegate: delegate)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        present(controller: controller, animated: true, presentStyle: .overCurrentContext)
    }
    
    func pushDeleteGarden(cares: [CaresModel], delegate: GardenPlantCaresEditDeleteDelegate) {
        let controller = GardenPlantCaresEditDelete(cares: cares, delegate: delegate)
        controller.hidesBottomBarWhenPushed = true
        push(controller: controller)
    }
    
    func pushGardenDetail(id: String, delegate: GardenDetailProtocolo) {
        let controller = GardenDetailController(id: id, delegate: delegate)
        controller.hidesBottomBarWhenPushed = true
        push(controller: controller)
    }
    
    func presentDeletePlan(plantID: String, imageUrl: String, text: String, delegate: GardenDetailDeleteDelegate) {
        let controller = GardenDetailDeletePlanController(plantID: plantID, imageUrl: imageUrl, text: text, delegate: delegate)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        present(controller: controller, presentStyle: .overCurrentContext)
    }
    
    func presentChooseAddPlant(delegate: GardenChooseAddPlantDelegate) {
        let controller = GardenChooseAddPlantController()
        controller.delegate = delegate
        present(controller: controller, animated: false, presentStyle: .overFullScreen)
    }
    
    func presentGadrenCaresDetail(plantId: String) {
        let controller = GardenCaresDetail(plantID: plantId)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        present(controller: controller, presentStyle: .overFullScreen)
    }
    
    func pushEditCarePlant(gardenPlantId: String, delegate: GardenPlantCaresEditDelegate) {
        let controller = GardenPlantCaresEdit(gardenPlantId: gardenPlantId, delegate: delegate)
        push(controller: controller)
    }

    func presentHistoryAddPhoto(gardenPlantId: String, delegate: GardenHistoryAddPhotoProtocol) {
        let controller = GardenHistoryAddPhotoController(gardenPlantId: gardenPlantId, delegate: delegate)
        let nc = UINavigationController(rootViewController: controller)
        nc.modalPresentationStyle = .fullScreen
        present(controller: nc, presentStyle: .fullScreen)
    }
    
    func presentGadrenHistoryNotes(delegate: GardenHistoryNotesDelegate) {
        let controller = GardenHistoryNotesController(delegate: delegate)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        present(controller: controller, presentStyle: .overFullScreen)
    }
    
    func pushGardenListPhoto(gardenID: String, model: [MediaModel], delegate: GardenDetailListPhotoDelegate) {
        let controller = GardenDetailListPhotoController(gardenID: gardenID, model: model, delegate: delegate)
        push(controller: controller)
    }
    
    func pushGardenDeteilPhoto(gardenID: String, selectedModel: MediaModel, models: [MediaModel], delegate: GardenPhotoDeteilDelegate) {
        let controller = GardenPhotoDeteilController(gardenID: gardenID, selectedModel: selectedModel, models: models, delegate: delegate)
        push(controller: controller)
    }
    
    func pushGardenDeteilEdit(model: MediaModel, delegate: GardenDetailEditDelegate) {
        let controller = GardenDetailEditController(model: model, delegate: delegate)
        push(controller: controller)
    }
    
    func presentDoneSpecificCare(delegate: PopDoneSpecificCareDelegate, gardenId: String, care: GardenShortPlantCaresModel) {
        let controller = PopDoneSpecificCareController(delegate: delegate, gardenId: gardenId, care: care)
        controller.modalTransitionStyle = .crossDissolve
        present(controller: controller,animated: true, presentStyle: .overCurrentContext)
    }
    
    func presentNeedCares(tabBarController: UITabBarController?, model: GardenModel, delegate: GardenNeedCaresDelegate) {
        let controller = GardenNeedCaresController(model: model, delegate: delegate)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .overCurrentContext
        tabBarController?.present(controller, animated: true, completion: nil)
    }
}
