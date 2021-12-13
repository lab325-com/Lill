
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol IdentifyOutputProtocol: BaseController {
    func successAddToGarden()
    func successFavorite(isFavorite: Bool, id: String)
    func successUpload(model: MediaDataModel)
    func successRecognize(model: RecognitionDataModel)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol IdentifyPresenterProtocol: AnyObject {
    init(view: IdentifyOutputProtocol)
    
    func uploadPhoto(img: UIImage)
    func setFavoritePlant(id: String, isFavorite: Bool)
    func addPlantToGarden(plantId: String, gardenId: String)
}

class IdentifyPresenter: IdentifyPresenterProtocol {
    
    private weak var view: IdentifyOutputProtocol?
    private var isLoaded = false
    private var request: Cancellable?
    
    required init(view: IdentifyOutputProtocol) {
        self.view = view
    }
    
    func uploadPhoto(img: UIImage) {
        view?.startLoader()
        
        request?.cancel()
        
        let plantsImage = img.jpegData(compressionQuality: 0.9)!

        let file = GraphQLFile(fieldName: "image", originalName: "image.jpeg", mimeType: "image/jpeg", data: plantsImage)
        
        let mutation = UploadMediaMutation(image: "image")
        
        let _ = Network.shared.upload(model: MediaDataModel.self, mutation, controller: view, files: [file]) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successUpload(model: model)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
    
    func recognizePhoto(id: String) {
        view?.startLoader()
        AnalyticsHelper.sendFirebaseScreenEvent(screen: .identify_screen_step_4)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) { [weak self] in
            guard let `self` = self else { return }
            self.request?.cancel()
            
            let query = StartRecognizeQuery(mediaId: id)
            
            self.request = Network.shared.query(model: RecognitionDataModel.self, query, controller: self.view, successHandler: { [weak self] model in
                AnalyticsHelper.sendFirebaseEvents(events: .identify_results_many, params: ["count": model.startRecognize.count])
                self?.view?.stopLoading()
                self?.view?.successRecognize(model: model)
            }, failureHandler: { [weak self] error in
                AnalyticsHelper.sendFirebaseEvents(events: .identify_results_wrong)
                self?.view?.stopLoading()
                self?.view?.failure(error: error.localizedDescription)
            })
        }
    }
    
    func setFavoritePlant(id: String, isFavorite: Bool) {
        view?.startLoader()
        let mutation = SetFavoritePlantByIdMutation(id: id, isFavorite: !isFavorite)
        let _ = Network.shared.mutation(model: FavoritePlantDataModel.self, mutation, controller: view, successHandler: { [weak self] model in
            self?.view?.successFavorite(isFavorite: !isFavorite, id: id)
            self?.view?.stopLoading()
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func addPlantToGarden(plantId: String, gardenId: String) {
        view?.startLoader()
        let mutation = PlantToGardenMutation(plantId: plantId, gardenId: gardenId)
        let _ = Network.shared.mutation(model: PlantToGardenDataModel.self, mutation, controller: view, successHandler: { [weak self] model in
            self?.view?.successAddToGarden()
            self?.view?.stopLoading()
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
}
