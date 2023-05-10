//
//  PopClonePresenter.swift
//  Lill
//
//  Created by mob325 on 20.11.2021.
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
    }
}
