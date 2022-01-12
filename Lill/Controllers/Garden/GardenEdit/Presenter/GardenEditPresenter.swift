
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenEditOutputProtocol: BaseController {
    func successGetGarden(garden: GardenModel)
    
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenEditPresenterProtocol: AnyObject {
    init(view: GardenEditOutputProtocol)
    
    func getGarden(gardenId: String)
}

class GardenEditPresenter: GardenEditPresenterProtocol {

    private weak var view: GardenEditOutputProtocol?
    private var request: Cancellable?
    
    required init(view: GardenEditOutputProtocol) {
        self.view = view
    }
    
    func getGarden(gardenId: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let query = GardenByIdQuery(id: gardenId)
        request = Network.shared.query(model: GardenByIdDataModel.self, query, controller: view) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successGetGarden(garden: model.gardenById)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}
