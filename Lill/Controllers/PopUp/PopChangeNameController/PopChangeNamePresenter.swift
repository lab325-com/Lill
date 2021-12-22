//
//  PopChangeNamePresenter.swift
//  Lill
//
//  Created by Andrey S on 15.11.2021.
//

import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol PopChangeNameOutputProtocol: BaseController {
    func success(text: String)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol PopChangeNamePresenterProtocol: AnyObject {
    init(view: PopChangeNameOutputProtocol)
    
    func changeName(id: String, name: String)
}

class PopChangeNamePresenter: PopChangeNamePresenterProtocol {
    
    private weak var view: PopChangeNameOutputProtocol?
    private var isLoaded = false
    private var request: Cancellable?
    
    required init(view: PopChangeNameOutputProtocol) {
        self.view = view
    }
    
    func changeName(id: String, name: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let mutation = GardenPlantUpdateMutation(record: GardenPlantUpdateInput(id: id, name: name))
        request = Network.shared.mutation(model: GardenPlantUpdateModel.self, mutation, controller: view) { [weak self] _ in
            self?.view?.stopLoading()
            self?.view?.success(text: name)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}
