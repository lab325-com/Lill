
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenOutputProtocol: BaseController {
    func successCaresByGarden(model: CaresByGardenDataModel)
    func successGardenPlants(model: GardenPlantsDataModel)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenPresenterProtocol: AnyObject {
    init(view: GardenOutputProtocol)
    
    func getCaresByGarden(gardenId: String)
    func getGardenPants(gardenId: String, isHappy: Bool)
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
            self?.view?.successCaresByGarden(model: model)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func getGardenPants(gardenId: String, isHappy: Bool) {
        view?.startLoader()
        
        request?.cancel()
        
       let query = GardenPlantsQuery(gardenId: gardenId, pagination: InputPagination(ofset: 0, limit: 10), careTypeId: nil, isHappy: isHappy)
        request = Network.shared.query(model: GardenPlantsDataModel.self, query, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successGardenPlants(model: model)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
}
