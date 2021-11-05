
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenOutputProtocol: BaseController {
    func success(model: CaresByGardenDataModel)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenPresenterProtocol: AnyObject {
    init(view: GardenOutputProtocol)
    
    func getCaresByGarden(gardenId: String)
}

class GardenPresenter: GardenPresenterProtocol {

    private weak var view: GardenOutputProtocol?
    private var request: Cancellable?

    required init(view: GardenOutputProtocol) {
        self.view = view
    }
    
    func getCaresByGarden(gardenId: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let query = CaresByGardenQuery(gardenId: gardenId)
        request = Network.shared.query(model: CaresByGardenDataModel.self, query, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.success(model: model)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
}
