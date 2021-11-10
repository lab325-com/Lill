//
//  RecognizeArchivePresenter.swift
//  Lill
//
//  Created by Andrey S on 03.11.2021.
//

import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol RecognizeArchiveOutputProtocol: BaseController {
    func success(model: RecognizeArchiveModel)
    func successFavorite(isFavorite: Bool, id: String)
    func successAddPlants(model: PlantToGardenDataModel)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol RecognizeArchivePresenterProtocol: AnyObject {
    init(view: RecognizeArchiveOutputProtocol)
    func getRecognizeArchive()
}

class RecognizeArchivePresenter: RecognizeArchivePresenterProtocol {
    private weak var view: RecognizeArchiveOutputProtocol?
    
    required init(view: RecognizeArchiveOutputProtocol) {
        self.view = view
    }
    
    func getRecognizeArchive() {
        view?.startLoader()
        
        let query = RecognizedArhiveQuery(pagination: InputPagination(offset: 0, limit: 10))
        
        let _ = Network.shared.query(model: RecognizeArchiveModel.self, query) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.success(model: model)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
    
    func setFavoritePlant(id: String, isFavorite: Bool) {
        view?.startLoader()
        
        let mutation = SetFavoritePlantByIdMutation(id: id, isFavorite: isFavorite)
        let _ = Network.shared.mutation(model: FavoritePlantDataModel.self, mutation, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successFavorite(isFavorite: !isFavorite, id: id)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func addPlantToGarden(plantId: String, gardenId: String) {
        view?.startLoader()
        
        let mutation = PlantToGardenMutation(plantId: plantId, gardenId: gardenId)
        let _ = Network.shared.mutation(model: PlantToGardenDataModel.self, mutation, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successAddPlants(model: model)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
}
