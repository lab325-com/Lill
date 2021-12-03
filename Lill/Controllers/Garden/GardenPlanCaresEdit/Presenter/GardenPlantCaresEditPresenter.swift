
import Foundation
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenPlantCaresEditOutputProtocol: BaseController {
    func successGetGardenPlantCares()
    
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenPlantCaresEditPresenterProtocol: AnyObject {
    init(view: GardenPlantCaresEditOutputProtocol)
    
    func getGardenPlantCares(gardenPlantId: String)
}

class GardenPlantCaresEditPresenter: GardenPlantCaresEditPresenterProtocol {
    
    private weak var view: GardenPlantCaresEditOutputProtocol?
    
    var plantCares: [CaresModel] = []
    
    required init(view: GardenPlantCaresEditOutputProtocol) {
        self.view = view
    }
    
    func getGardenPlantCares(gardenPlantId: String) {
        view?.startLoader()
        
        let query = GardenPlantCaresQuery(gardenPlantId: gardenPlantId)
        let _ = Network.shared.query(model: GardenPlantCaresDataModel.self, query, controller: view, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.plantCares = model.gardenPlantCares
            self?.view?.successGetGardenPlantCares()
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
}
