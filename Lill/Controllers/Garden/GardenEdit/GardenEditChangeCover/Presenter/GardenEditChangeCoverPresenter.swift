
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenEditChangeCoverOutputProtocol: BaseController {
    func successUploadMedia(imageUrl: String)
    
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenEditChangeCoverPresenterProtocol: AnyObject {
    init(view: GardenEditChangeCoverOutputProtocol)
    
    func uploadMedia(id: String, img: UIImage)
}

class GardenEditChangeCoverPresenter: GardenEditChangeCoverPresenterProtocol {

    private weak var view: GardenEditChangeCoverOutputProtocol?
    private var request: Cancellable?
    
    required init(view: GardenEditChangeCoverOutputProtocol) {
        self.view = view
    }
    
    func uploadMedia(id: String, img: UIImage) {
        view?.startLoader()
        
        let plantsImage = img.jpegData(compressionQuality: 0.9)!

        let file = GraphQLFile(fieldName: "image", originalName: "image.jpeg", mimeType: "image/jpeg", data: plantsImage)
        
        let mutation = UploadMediaMutation(image: "image")
        
        let _ = Network.shared.upload(model: MediaDataModel.self, mutation, controller: view, files: [file]) { [weak self] model in
            self?.view?.stopLoading()
            
            let mutation2 = GardenPlantUpdateMutation(record: GardenPlantUpdateInput(id: id, userMainImageId: model.uploadMedia.id  ?? ""))
            let _ = Network.shared.mutation(model: GardenPlantUpdateModel.self, mutation2, controller: self?.view) { [weak self] model in
                self?.view?.stopLoading()
                self?.view?.successUploadMedia(imageUrl: model.gardenPlantUpdate.userMainImage?.urlIosFull ?? "")
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
