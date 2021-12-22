
import Foundation
import Apollo

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenPlantAddCaresOutputProtocol: BaseController {
    func successGetCares(cares: [CareType])
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenPlantAddCaresPresenterProtocol: AnyObject {
    init(view: GardenPlantAddCaresOutputProtocol)
    
    func getCares()
}

class GardenPlantAddCaresPresenter: GardenPlantAddCaresPresenterProtocol {
    
    private var request: Cancellable?
    private weak var view:GardenPlantAddCaresOutputProtocol?
        
    required init(view: GardenPlantAddCaresOutputProtocol) {
        self.view = view
    }
    
    func getCares() {
        view?.startLoader()
        
        request?.cancel()
        
        request = Network.shared.query(model: CareTypesModel.self, CareTypesQuery(), controller: view) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successGetCares(cares: model.careTypes)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}
