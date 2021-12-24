
import Foundation
import Apollo

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol PopDoneSpecificCareOutputProtocol: BaseController {
    func success()
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol PopDoneSpecificCarePresenterProtocol: AnyObject {
    init(view: PopDoneSpecificCareOutputProtocol)
    
    func doneCare(gardenPlantId: String, careTypeId: Int)
}

class PopDoneSpecificCarePresenter: PopDoneSpecificCarePresenterProtocol {
    
    private weak var view: PopDoneSpecificCareOutputProtocol?
    private var isLoaded = false
    private var request: Cancellable?
    
    required init(view: PopDoneSpecificCareOutputProtocol) {
        self.view = view
    }
    
    func doneCare(gardenPlantId: String, careTypeId: Int) {
        request?.cancel()
        
        let mutation = DoneCareByGardenPlantMutation(gardenPlantId: gardenPlantId, careTypeId: careTypeId)
        request = Network.shared.mutation(model: DoneCareByGardenPlantModel.self, mutation, controller: view) { [weak self] model in
            self?.view?.success()
        } failureHandler: { [weak self] error in
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}
