
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol PlantsOutputProtocol: BaseController {
    func successAddToGarden()
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
        
        let query = GetCatalogPlantsQuery(pagination: InputPagination(offset: 0, limit: 100), search: search, onlyFavorites: false)
        request = Network.shared.query(model: CatalogPlantsModel.self, query, controller: view) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.success(model: model)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
    
    func setFavoritePlant(id: String, isFavorite: Bool) {
        
        let mutation = SetFavoritePlantByIdMutation(id: id, isFavorite: !isFavorite)
        let _ = Network.shared.mutation(model: FavoritePlantDataModel.self, mutation, controller: view, successHandler: { [weak self] model in
            self?.view?.successFavorite(isFavorite: !isFavorite, id: id)
        }, failureHandler: { [weak self] error in
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func addPlantToGarden(plantId: String, gardenId: String) {
        
        let mutation = PlantToGardenMutation(plantId: plantId, gardenId: gardenId)
        let _ = Network.shared.mutation(model: PlantToGardenDataModel.self, mutation, controller: view, successHandler: { [weak self] model in
            self?.view?.successAddToGarden()
        }, failureHandler: { [weak self] error in
            self?.view?.failure(error: error.localizedDescription)
        })
    }
}
