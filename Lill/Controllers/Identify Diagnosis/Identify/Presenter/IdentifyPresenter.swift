
import Foundation

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
    
    required init(view: IdentifyOutputProtocol) {
        self.view = view
    }
    
    func uploadPhoto(img: String) {
        let mutation = UploadMediaRecognitionMutation(img: img)
        Network.shared.mutation(model: MediaDataModel.self, mutation) { model in
            self.view?.successUpload(model: model)
        } failureHandler: { error in
            self.view?.failure(error: error.localizedDescription)
        }
    }
    
    func recognizePhoto(img: String) {
        let query = StartRecognitionQuery(img: RecognitionInput(img: img))
        Network.shared.query(model: RecognitionDataModel.self, query) { model in
            self.view?.successRecognize(model: model)
        } failureHandler: { error in
            self.view?.failure(error: error.localizedDescription)
        }
    }
}
