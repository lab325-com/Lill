
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenCaresDetailOutputProtocol: BaseController {
    func success()
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenCaresDetailPresenterProtocol: AnyObject {
    init(view: GardenCaresDetailOutputProtocol)
    
    func getCaresDetailGarden(gardenId: String)
}

class GardenCaresDetailPresenter: GardenCaresDetailPresenterProtocol {
    private weak var view: GardenCaresDetailOutputProtocol?
    private var request: Cancellable?
    
    var model: GardenIDModel?
    var cares: [(type: PlantsCareType, model: GardenShortPlantCaresModel)] = []

    required init(view: GardenCaresDetailOutputProtocol) {
        self.view = view
    }
    
    func getCaresDetailGarden(gardenId: String) {
        view?.startLoader()
        
        let query = GardenPlantByIdQuery(id: gardenId, withoutFutureCares: true)
        
        request?.cancel()
        
        request = Network.shared.query(model: GardenPlanByIDModel.self, query, controller: view, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            guard let `self` = self else { return }
            self.model = model.gardenPlantById
            let cares = self.createCares(model: model)
            self.cares = cares
            self.view?.success()
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func createCares(model: GardenPlanByIDModel) -> [(type: PlantsCareType, model: GardenShortPlantCaresModel)] {
        var caresType = [(type: PlantsCareType, model: GardenShortPlantCaresModel)]()
        let cares = model.gardenPlantById.gardenPlantCares
        for care in cares {
            caresType.append((type: care.type.name, model: care))
            if caresType.count == 4 {
                return caresType
            }
        }
        
        return caresType
    }
}
