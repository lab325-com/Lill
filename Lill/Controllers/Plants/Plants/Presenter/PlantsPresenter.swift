
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol PlantsOutputProtocol: BaseController {
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
        let query = GetCatalogPlantsQuery(pagination: InputPagination(limit: 10, ofset: 0), search: search)
        request = Network.shared.query(model: CatalogPlantsModel.self, query) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.success(model: model)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}
