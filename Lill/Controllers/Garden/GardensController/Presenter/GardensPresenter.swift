
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardensOutputProtocol: BaseController {
    func successGetGardens()
    
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardensPresenterProtocol: AnyObject {
    init(view: GardensOutputProtocol)
    
    func getGardens()
}

class GardensPresenter: GardensPresenterProtocol {

    private weak var view: GardensOutputProtocol?
    private var request: Cancellable?
    
    var gardens = [GardenModel]()

    required init(view: GardensOutputProtocol) {
        self.view = view
    }
    
    func getGardens() {
        view?.startLoader()
        
        request?.cancel()
        
        let query = GardensQuery(pagination: InputPagination(all: true))
        request = Network.shared.query(model: GardensDataModel.self, query, controller: view, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.gardens = model.gardens.gardens
            self?.view?.successGetGardens()
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
}
