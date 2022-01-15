
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenCreateCoverOutputProtocol: BaseController {
    func successCreateGarden(model: GardenModel)
    
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenCreateCoverPresenterProtocol: AnyObject {
    init(view: GardenCreateCoverOutputProtocol)
    
    func createGarden(image: UIImage, name: String)
}

class GardenCreateCoverPresenter: GardenCreateCoverPresenterProtocol {

    private weak var view: GardenCreateCoverOutputProtocol?
    private var request: Cancellable?
    
    required init(view: GardenCreateCoverOutputProtocol) {
        self.view = view
    }
    
    func createGarden(image: UIImage, name: String) {
        view?.startLoader()
        
        let plantsImage = image.jpegData(compressionQuality: 0.9)!

        let file = GraphQLFile(fieldName: "image", originalName: "image.jpeg", mimeType: "image/jpeg", data: plantsImage)
        
        let mutation = UploadMediaMutation(image: "image")
        
        let _ = Network.shared.upload(model: MediaDataModel.self, mutation, controller: view, files: [file]) { [weak self] model in
            
            let mutation2 = GardenCreateMutation(record: GardenCreateInput(name: name, userMainImageId: model.uploadMedia.id  ?? ""))
            let _ = Network.shared.mutation(model: GardenCreateModel.self, mutation2, controller: self?.view) { [weak self] model in
                
                var gardens = KeychainService.standard.me?.gardens ?? []
                gardens.insert(model.gardenCreate, at: 0)
                
                var meModel = KeychainService.standard.me
                meModel?.updateGardens(gardens: gardens)
                
                KeychainService.standard.me = meModel
                
                self?.view?.stopLoading()
                self?.view?.successCreateGarden(model: model.gardenCreate)
            } failureHandler: { [weak self] error in
                self?.view?.stopLoading()
                self?.view?.failure(error: error.localizedDescription)
            }
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}
