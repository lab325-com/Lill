
import Foundation
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol WishListOutputProtocol: BaseController {
    func success(model: CatalogPlantsModel)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol WishListPresenterProtocol: AnyObject {
    init(view: WishListOutputProtocol)
    
    func getWishList()
}

class WishListPresenter: WishListPresenterProtocol {
    
    private weak var view: WishListOutputProtocol?
    
    required init(view: WishListOutputProtocol) {
        self.view = view
    }
    
    func getWishList() {
        view?.startLoader()
                
        let query = GetCatalogPlantsQuery(pagination: InputPagination(offset: 0, limit: 10), search: "", onlyFavorites: true)
        Network.shared.query(model: CatalogPlantsModel.self, query, controller: view) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.success(model: model)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}
