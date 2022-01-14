//
//  GardenNeedCaresPresenter.swift
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

protocol GardenNeedCaresOutputProtocol: BaseController {
    func success()
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenNeedCaresPresenterProtocol: AnyObject {
    init(view: GardenNeedCaresOutputProtocol)
    
    func doneCares(gardenId: String)
}

class GardenNeedCaresPresenter: GardenNeedCaresPresenterProtocol {

    private weak var view: GardenNeedCaresOutputProtocol?
    private var request: Cancellable?
    
    required init(view: GardenNeedCaresOutputProtocol) {
        self.view = view
    }
    
    func doneCares(gardenId: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let mutation = DoneAllCaresByGardenMutation(gardenId: gardenId)
        request = Network.shared.mutation(model: DoneAllCaresByGardenDataModel.self, mutation, controller: view, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.success()
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
        })
    }
}
