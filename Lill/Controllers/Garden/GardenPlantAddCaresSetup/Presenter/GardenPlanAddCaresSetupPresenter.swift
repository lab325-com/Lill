
import Foundation
import Apollo

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenPlanAddCaresSetupOutputProtocol: BaseController {
    func successAddCares()
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenPlanAddCaresSetupPresenterProtocol: AnyObject {
    init(view:GardenPlanAddCaresSetupOutputProtocol)
    
    func addCares(gardenPlantId: String, cares: [CaresModel])
}

class GardenPlanAddCaresSetupPresenter: GardenPlanAddCaresSetupPresenterProtocol {
    
    private var request: Cancellable?
    private weak var view: GardenPlanAddCaresSetupOutputProtocol?
        
    required init(view: GardenPlanAddCaresSetupOutputProtocol) {
        self.view = view
    }
    
    func addCares(gardenPlantId: String, cares: [CaresModel]) {
        view?.startLoader()
        
        var errors: [Error?] = []
        
        let group = DispatchGroup()
        
        for care in cares {
            group.enter()
            let record = GardenPlantCareCreateInput(gardenPlantId: gardenPlantId, name: care.name, count: care.frequency, period: care.period, careTypeId: Int(care.type.id) ?? 1, sendNotificationAt: care.sendNotificationAt ?? "12:00")
            let mutation = GardenPlantCareCreateMutation(record: record)
            let _ = Network.shared.mutation(model: GardenPlantCareCreateModel.self, mutation, controller: view) { model in
                group.leave()
            } failureHandler: { error in
                errors.append(error)
                group.leave()
            }
        }
        
        group.notify(queue: DispatchQueue.main) { [weak self] in
            self?.view?.stopLoading()
            if let error = errors.first??.localizedDescription {
                self?.view?.failure(error: error)
            } else {
                self?.view?.successAddCares()
            }
        }
    }
}
