
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenOutputProtocol: BaseController {
    func successCaresByGarden(model: CaresByGardenDataModel)
    func successGardenPlants()
    func successDoneAllCaresByGarden(model: DoneAllCaresByGardenDataModel)
    
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenPresenterProtocol: AnyObject {
    init(view: GardenOutputProtocol)
    
    func getCaresByGarden(gardenId: String)
    func getGardenPants(gardenId: String)
    func doneCares(gardenId: String)
}

class GardenPresenter: GardenPresenterProtocol {

    private weak var view: GardenOutputProtocol?
    private var request: Cancellable?
    
    var gardenPlants = [GardenPlantModel]()
    var sadGardenPlants = [GardenPlantModel]()
    var happyGardenPlants = [GardenPlantModel]()

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
    
    func getGardenPants(gardenId: String) {
        let group = DispatchGroup()

        group.enter()
        let query1 = GardenPlantsQuery(gardenId: gardenId, pagination: InputPagination(offset: 0, limit: 100), careTypeId: nil, isHappy: false)
        request = Network.shared.query(model: GardenPlantsDataModel.self, query1, successHandler: { [weak self] model in
            group.leave()
            self?.sadGardenPlants = model.gardenPlants.gardenPlants ?? []
        }, failureHandler: { [weak self] error in
            group.leave()
            self?.view?.failure(error: error.localizedDescription)
        })

        group.enter()
        let query2 = GardenPlantsQuery(gardenId: gardenId, pagination: InputPagination(offset: 0, limit: 100), careTypeId: nil, isHappy: true)
        request = Network.shared.query(model: GardenPlantsDataModel.self, query2, successHandler: { [weak self] model in
            group.leave()
            self?.happyGardenPlants = model.gardenPlants.gardenPlants ?? []
        }, failureHandler: { [weak self] error in
            group.leave()
            self?.view?.failure(error: error.localizedDescription)
        })

        group.notify(queue: DispatchQueue.main) { [weak self] in
            if let sadGardenPlants = self?.sadGardenPlants, let happyGardenPlants = self?.happyGardenPlants {
                self?.gardenPlants = sadGardenPlants + happyGardenPlants
            }
            
            self?.view?.successGardenPlants()
        }
    }
    
    func doneCares(gardenId: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let mutation = DoneAllCaresByGardenMutation(gardenId: gardenId)
        request = Network.shared.mutation(model: DoneAllCaresByGardenDataModel.self, mutation, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successDoneAllCaresByGarden(model: model)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
}
