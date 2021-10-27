
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol PlantsDetailOutputProtocol: BaseController {
    func success(model: PlantDataModel)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol PlantsDetailPresenterProtocol: AnyObject {
    init(view: PlantsDetailOutputProtocol)
    
    func getPlantsDetail(id: String)
}

class PlantsDetailPresenter: PlantsDetailPresenterProtocol {
    
    private weak var view: PlantsDetailOutputProtocol?
    private var isLoaded = false
    private var request: Cancellable?
    
    required init(view: PlantsDetailOutputProtocol) {
        self.view = view
    }
    
    func getPlantsDetail(id: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let query = PlantByIdQuery(id: id)
        request = Network.shared.query(model: PlantDataModel.self, query, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.success(model: model)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
}
