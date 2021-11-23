//
//  PopClonePresenter.swift
//  Lill
//
//  Created by Andrey S on 20.11.2021.
//

import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol PopCloneOutputProtocol: BaseController {
    func success()
    func failure(error: String)
}

extension PopCloneOutputProtocol {
    func failure(error: String) {}
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol PopClonePresenterProtocol: AnyObject {
    init(view: PopCloneOutputProtocol)
    
    func clonePlant(gardenId: String, name: String)
}

class PopClonePresenter: PopClonePresenterProtocol {
    
    private weak var view: PopCloneOutputProtocol?
    private var isLoaded = false
    private var request: Cancellable?
    
    required init(view: PopCloneOutputProtocol) {
        self.view = view
    }
    

    func clonePlant(gardenId: String, name: String) {
        guard let ownGardenId = KeychainService.standard.me?.defaultGardenId else { return }
        
        view?.startLoader()
        
        
        let mutation = GardenPlantCloneMutation(gardenPlantId: gardenId, name: name, gardenId: ownGardenId)
        
        
        let _ = Network.shared.mutation(model: GardenPlantClone.self, mutation, controller: view, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.success()
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
        
//
//        getIDPlant(gardenId: gardenId) {[weak self] plantID in
//            self?.plantToGarden(plantId: plantID, ownGardenId: ownGardenId, success: { [weak self] newGardenID in
//                self?.changeName(id: newGardenID, name: name, success: { [weak self] in
//                    self?.view?.stopLoading()
//                    self?.view?.success()
//                }, failure: { [weak self] error in
//                    self?.view?.stopLoading()
//                    self?.view?.failure(error: error)
//                })
//            }, failure: { [weak self] error in
//                self?.view?.stopLoading()
//                self?.view?.failure(error: error)
//            })
//        } failure: { [weak self] error in
//            self?.view?.stopLoading()
//            self?.view?.failure(error: error)
//        }

    }
    
    private func getIDPlant(gardenId: String, success: @escaping (String) ->(), failure: @escaping (String) -> ()) {
        let query = GardenPlantByIdQuery(id: gardenId)
        let _ = Network.shared.query(model: GardenPlanByIDModel.self, query, controller: view, successHandler: { model in
            success(model.gardenPlantById.plant?.id ?? "")
        }, failureHandler: { error in
            failure(error.localizedDescription)
        })
    }
    
    private func plantToGarden(plantId: String, ownGardenId: String, success: @escaping (String) ->(), failure: @escaping (String) -> ()) {
        let mutation = PlantToGardenMutation(plantId: plantId, gardenId: ownGardenId)
        let _ = Network.shared.mutation(model: PlantToGardenDataModel.self, mutation, controller: view, successHandler: { model in
            success(model.plantToGarden.id)
        }, failureHandler: { error in
            failure(error.localizedDescription)
        })
    }
    
    private func changeName(id: String, name: String, success: @escaping () ->(), failure: @escaping (String) -> ()) {
        let mutation = GardenPlantUpdateMutation(record: GardenPlantUpdateInput(id: id, name: name))
        request = Network.shared.mutation(model: GardenPlantUpdateModel.self, mutation, controller: view) { _ in
            success()
        } failureHandler: { error in
            failure(error.localizedDescription)
        }
    }
}
