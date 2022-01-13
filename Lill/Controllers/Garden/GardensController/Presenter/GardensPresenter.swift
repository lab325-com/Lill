
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardensOutputProtocol: BaseController {
    func successGetGardens()
    func successGetPlants()
    
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardensPresenterProtocol: AnyObject {
    init(view: GardensOutputProtocol)
    
    func getGardens()
    func getPlants()
    func getCares()
}

class GardensPresenter: GardensPresenterProtocol {

    private weak var view: GardensOutputProtocol?
    private var request: Cancellable?
    
    var gardens = [GardenModel]()
    var gardenPlants = [GardenPlantModel]()
    var sadGardenPlants = [GardenPlantModel]()
    var happyGardenPlants = [GardenPlantModel]()

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
    
    func getPlants() {
        clearData()
        
        let group = DispatchGroup()
        
        group.enter()
        let query1 = GardenPlantsQuery(gardenId: "", pagination: InputPagination(offset: 0, limit: 100), careTypeId: nil, isHappy: false)
        request = Network.shared.query(model: GardenPlantsDataModel.self, query1, controller: view, successHandler: { [weak self] model in
            group.leave()
            if let sadPlants = model.gardenPlants.gardenPlants {
                self?.sadGardenPlants = sadPlants
            }
        }, failureHandler: { [weak self] error in
            group.leave()
            self?.view?.failure(error: error.localizedDescription)
        })

        group.enter()
        let query2 = GardenPlantsQuery(gardenId: "", pagination: InputPagination(offset: 0, limit: 100), careTypeId: nil, isHappy: true)
        request = Network.shared.query(model: GardenPlantsDataModel.self, query2, controller: view, successHandler: { [weak self] model in
            group.leave()
            if let happyPlants = model.gardenPlants.gardenPlants {
                self?.happyGardenPlants = happyPlants
            }
        }, failureHandler: { [weak self] error in
            group.leave()
            self?.view?.failure(error: error.localizedDescription)
        })

        group.notify(queue: DispatchQueue.main) { [weak self] in
            if let sadGardenPlants = self?.sadGardenPlants, let happyGardenPlants = self?.happyGardenPlants {
                self?.gardenPlants = sadGardenPlants + happyGardenPlants
            }
            self?.view?.successGetPlants()
        }
    }
    
    func getCares() {
        view?.startLoader()
        
        request?.cancel()
        
//        let query = CaresByGardensQuery()
//        request = Network.shared.query(model: CaresByGardensDataModel.self, query, controller: view, successHandler: { [weak self] model in
//            self?.view?.stopLoading()
//        }, failureHandler: { [weak self] error in
//            self?.view?.stopLoading()
//            self?.view?.failure(error: error.localizedDescription)
//        })
    }
    
    func clearData() {
        gardenPlants.removeAll()
        sadGardenPlants.removeAll()
        happyGardenPlants.removeAll()
    }
}
