//
//  GardenAddToPlacePresenter.swift
//  Lill
//
//  Created by Andrey S on 13.01.2022.
//

import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol GardenAddToPlaceOutputProtocol: BaseController {
    func successAddToGarden()
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol GardenAddToPlacePresenterProtocol: AnyObject {
    init(view: GardenAddToPlaceOutputProtocol)
    
    func addPlantToGarden(plantId: String, gardenId: String)
}

class GardenAddToPlacePresenter: GardenAddToPlacePresenterProtocol {
    
    private weak var view: GardenAddToPlaceOutputProtocol?
    private var isLoaded = false
    private var request: Cancellable?
    
    var paginationModel: PaginationModel?
    
    required init(view: GardenAddToPlaceOutputProtocol) {
        self.view = view
    }
    
    func addPlantToGarden(plantId: String, gardenId: String) {
        view?.startLoader()
        
        request?.cancel()
        let mutation = PlantToGardenMutation(plantId: plantId, gardenId: gardenId)
        let _ = Network.shared.mutation(model: PlantToGardenDataModel.self, mutation, controller: view, successHandler: { [weak self] model in
            let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
            UNUserNotificationCenter.current().requestAuthorization(options: authOptions, completionHandler: { (granted, error) in
                DispatchQueue.main.async {
                    if (granted) {
                        UIApplication.shared.registerForRemoteNotifications()
                    }
                }
            })
            self?.updateMe()
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
        })
    }
    
    func updateMe() {
        let query = MeQuery()
        
        let _ = Network.shared.query(model: MeDataModel.self, query, controller: view) { [weak self] model in
            KeychainService.standard.me = model.me
            self?.view?.stopLoading()
            self?.view?.successAddToGarden()
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
        }
    }
}
