
import Foundation
import UIKit
import Apollo

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol WishListOutputProtocol: BaseController {
    func successGetWishList(model: CatalogPlantsModel)
    func succesRemoveFromFavorite()
    func successAddToGarden()
    
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol WishListPresenterProtocol: AnyObject {
    init(view: WishListOutputProtocol)
    
    func getWishList()
    func addPlantToGarden(gardenId: String, plantId: String)
    func setFavoritePlant(id: String)
}

class WishListPresenter: WishListPresenterProtocol {
    
    private weak var view: WishListOutputProtocol?
    private var request: Cancellable?
    
    required init(view: WishListOutputProtocol) {
        self.view = view
    }
    
    func getWishList() {
        view?.startLoader()
                
        let query = GetCatalogPlantsQuery(pagination: InputPagination(offset: 0, limit: 10), search: "", onlyFavorites: true)
        let _ = Network.shared.query(model: CatalogPlantsModel.self, query, controller: view) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successGetWishList(model: model)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
    
    func setFavoritePlant(id: String) {
        view?.startLoader()
        
        let mutation = SetFavoritePlantByIdMutation(id: id, isFavorite: false)
        let _ = Network.shared.mutation(model: FavoritePlantDataModel.self, mutation, controller: view, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.succesRemoveFromFavorite()
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func addPlantToGarden(gardenId: String, plantId: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let mutation = PlantToGardenMutation(plantId: plantId, gardenId: gardenId)
        request = Network.shared.mutation(model: PlantToGardenDataModel.self, mutation, controller: view, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successAddToGarden()
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
}
