
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenEditDeleteSpaceOutputProtocol: BaseController {
    func successDelete()
    
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenEditDeleteSpacePresenterProtocol: AnyObject {
    init(view: GardenEditDeleteSpaceOutputProtocol)
    
    func deleteGarden(gardenId: String)
}

class GardenEditDeleteSpacePresenter: GardenEditDeleteSpacePresenterProtocol {

    private weak var view: GardenEditDeleteSpaceOutputProtocol?
    private var request: Cancellable?
    
    required init(view: GardenEditDeleteSpaceOutputProtocol) {
        self.view = view
    }
    
    func deleteGarden(gardenId: String) {
        view?.startLoader()
        
        let mutation = GardenDeleteMutation(id: gardenId)
        let _ = Network.shared.mutation(model: GardenDeleteModel.self, mutation, controller: view) { [weak self] model in
            self?.view?.stopLoading()
            if model.gardenDelete {
                self?.view?.successDelete()
            }
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}
