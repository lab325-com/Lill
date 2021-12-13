
import Foundation
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenPlantCaresEditOutputProtocol: BaseController {
    func successGetGardenPlantCares(caresToDefaultButton: Bool)
    func successUpdateGardenPlantCare()
    func successDeleteGardenPlantCare()
    func successGardenPlantCaresToDefault()
    
    func failure(error: String)
}

extension GardenPlantCaresEditOutputProtocol {
    func successGetGardenPlantCares(caresToDefaultButton: Bool) {}
    func successUpdateGardenPlantCare() {}
    func successDeleteGardenPlantCare() {}
    func successGardenPlantCaresToDefault() {}
    
    func failure(error: String) {}

}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenPlantCaresEditPresenterProtocol: AnyObject {
    init(view: GardenPlantCaresEditOutputProtocol)
    
    func getGardenPlantCares(gardenPlantId: String)
    func updateGardenPlantCare(id: String, count: Int?, period: PeriodType?, sendNotificationAt: String?, isActive: Bool?, type: CareType)
    func gardenPlantCaresToDefault(gardenPlantId: String)
    func deleteGardenPlantCares(caresId: [String])
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
        let _ = Network.shared.query(model: GardenPlantEditCaresDataModel.self, query, controller: view, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.plantCares = model.gardenPlantCares.cares.sorted(by: {$0.isActive! && !$1.isActive!})
            self?.view?.successGetGardenPlantCares(caresToDefaultButton: model.gardenPlantCares.caresToDefaultButton)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func updateGardenPlantCare(id: String, count: Int?, period: PeriodType?, sendNotificationAt: String?, isActive: Bool?, type: CareType) {
        view?.startLoader()
        
        var dict: [String : Any] = [:]
        
        var gardenPlantCareUpdateInput = GardenPlantCareUpdateInput(id: id)
        if let count = count {
            gardenPlantCareUpdateInput.count = count
        }
        if let period = period {
            gardenPlantCareUpdateInput.period = period
        }
        if let sendNotificationAt = sendNotificationAt {
            dict["time_edit"] = sendNotificationAt
            gardenPlantCareUpdateInput.sendNotificationAt = sendNotificationAt
        }
        if let isActive = isActive {
            dict["isActive"] = [isActive ? "on" : "off"]
            gardenPlantCareUpdateInput.isActive = isActive
        }
        
        let mutation = GardenPlantCareUpdateMutation(record: gardenPlantCareUpdateInput)
        

        let _ = Network.shared.mutation(model: GardenPlantCareUpdateModel.self, mutation, controller: view) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successUpdateGardenPlantCare()
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
        
        
        if let count = count, let period = period {

            dict["frequancy_edit"] = "\(count) \(period.rawValue)"
            var dayComponent    = DateComponents()
            
            switch period {
            case .periodTypeDay:
                dayComponent.day = count
            case .periodTypeMonth:
                dayComponent.month = count
            case .periodTypeWeek:
                dayComponent.day = count * 7
            default:
               break
            }
            
            if let nextDate = Calendar.current.date(byAdding: dayComponent, to: Date()) {
                
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "MMM dd"
                dict["nextdate_edit"] = dateFormatter.string(from: nextDate)
            }
        }
        
        AnalyticsHelper.sendFirebaseEvents(events: type.name.rawValue, params: dict)
    }
    
    func deleteGardenPlantCares(caresId: [String]) {
        view?.startLoader()
        
        let mutation = GardenPlantCaresDeleteMutation(ids: caresId)
        
        let _ = Network.shared.mutation(model: GardenPlantCaresDeleteModel.self, mutation, controller: view) { [weak self] model in
            self?.view?.stopLoading()
            if model.gardenPlantCaresDelete {
                self?.view?.successDeleteGardenPlantCare()
            }
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
    
    func gardenPlantCaresToDefault(gardenPlantId: String) {
        view?.startLoader()
        
        let mutation = GardenPlantCaresToDefaultMutation(gardenPlantId: gardenPlantId)
        
        let _ = Network.shared.mutation(model: GardenPlantCaresToDefaultModel.self, mutation, controller: view) { [weak self] model in
            if model.gardenPlantCaresToDefault {
                self?.view?.stopLoading()
                self?.view?.successGardenPlantCaresToDefault()
            }
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}
