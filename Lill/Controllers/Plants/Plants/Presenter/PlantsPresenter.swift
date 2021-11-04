
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol PlantsOutputProtocol: BaseController {
    func successAddPlants(model: PlantToGardenDataModel)
    func successFavorite(isFavorite: Bool, id: String)
    func success(model: CatalogPlantsModel)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol PlantsPresenterProtocol: AnyObject {
    init(view: PlantsOutputProtocol)
    
    func getPlants(search: String)
}

class PlantsPresenter: PlantsPresenterProtocol {
    
    private weak var view: PlantsOutputProtocol?
    private var isLoaded = false
    private var request: Cancellable?
    
    required init(view: PlantsOutputProtocol) {
        self.view = view
    }
    
    func getPlants(search: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let query = GetCatalogPlantsQuery(pagination: InputPagination(limit: 10, ofset: 0), search: search, onlyFavorites: false)
        request = Network.shared.query(model: CatalogPlantsModel.self, query) { [weak self] model in
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
