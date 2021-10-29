
import Foundation
import Apollo

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol IdentifyOutputProtocol: BaseController {
    func successUpload(model: MediaDataModel)
    func successRecognize(model: RecognitionDataModel)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol IdentifyPresenterProtocol: AnyObject {
    init(view: IdentifyOutputProtocol)
    
    func uploadPhoto(img: String)
}

class IdentifyPresenter: IdentifyPresenterProtocol {
    
    private weak var view: IdentifyOutputProtocol?
    private var isLoaded = false
    private var request: Cancellable?
    
    required init(view: IdentifyOutputProtocol) {
        self.view = view
    }
    
    func uploadPhoto(img: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let mutation = UploadMediaRecognitionMutation(img: img)
        
        request = Network.shared.mutation(model: MediaDataModel.self, mutation, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successUpload(model: model)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func recognizePhoto(img: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let query = StartRecognitionQuery(img: RecognitionInput(img: img))
        
        request = Network.shared.query(model: RecognitionDataModel.self, query, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successRecognize(model: model)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
}
