
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenEditChangeNameOutputProtocol: BaseController {
    func successChangeName(text: String)
    
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenEditChangeNamePresenterProtocol: AnyObject {
    init(view: GardenEditChangeNameOutputProtocol)
    
    func changeName(gardenId: String, text: String)
}

class GardenEditChangeNamePresenter: GardenEditChangeNamePresenterProtocol {

    private weak var view: GardenEditChangeNameOutputProtocol?
    private var request: Cancellable?
    
    required init(view: GardenEditChangeNameOutputProtocol) {
        self.view = view
    }
    
    func changeName(gardenId: String, text: String) {
        view?.startLoader()
        
        let mutation = GardenUpdateMutation(record: GardenUpdateInput(id: gardenId, name: text, userMainImageId: nil))
        let _ = Network.shared.mutation(model: GardenUpdateModel.self, mutation, controller: self.view) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successChangeName(text: text)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}
