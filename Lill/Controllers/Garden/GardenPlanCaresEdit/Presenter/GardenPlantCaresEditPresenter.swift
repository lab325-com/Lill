
import Foundation
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenPlantCaresEditOutputProtocol: BaseController {
    func successGetGardenPlantCares()
    func successUpdateGardenPlantCare()
    func successDeleteGardenPlantCare()
    
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenPlantCaresEditPresenterProtocol: AnyObject {
    init(view: GardenPlantCaresEditOutputProtocol)
    
    func getGardenPlantCares(gardenPlantId: String)
    func updateGardenPlantCare(gardenPlantId: String, isActive: Bool)
    func deleteGardenPlantCare(gardenPlantId: String)
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
            self?.plantCares = model.gardenPlantCares.sorted(by: {$0.isActive! && !$1.isActive!})
            self?.view?.successGetGardenPlantCares()
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func updateGardenPlantCare(gardenPlantId: String, isActive: Bool) {
        view?.startLoader()
        
        let gardenPlantCareUpdateInput = GardenPlantCareUpdateInput(id: gardenPlantId, isActive: isActive)
        let mutation = GardenPlantCareUpdateMutation(record: gardenPlantCareUpdateInput)
        
        let _ = Network.shared.mutation(model: GardenPlantCareUpdateModel.self, mutation, controller: view) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successUpdateGardenPlantCare()
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
    
    func deleteGardenPlantCare(gardenPlantId: String) {
        view?.startLoader()
        
        let mutation = GardenPlantDeleteMutation(id: gardenPlantId)
        
        let _ = Network.shared.mutation(model: GardenPlantCareDeleteModel.self, mutation, controller: view) { [weak self] model in
            if model.gardenPlantCareDelete {
                self?.view?.stopLoading()
                self?.view?.successDeleteGardenPlantCare()
            }
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}
