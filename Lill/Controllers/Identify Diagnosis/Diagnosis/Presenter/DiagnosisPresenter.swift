
import Foundation

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol DiagnosisOutputProtocol: BaseController {
    func successUpload(model: MediaDataModel)
    func successDiagnose(model: DiagnoseDataModel)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol DiagnosisPresenterProtocol: AnyObject {
    init(view: DiagnosisOutputProtocol)
    
    func uploadPhoto(img: String)
}

class DiagnosisPresenter: DiagnosisPresenterProtocol {
    
    private weak var view: DiagnosisOutputProtocol?
    
    required init(view: DiagnosisOutputProtocol) {
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
    
    func diagnosePhoto(img: String) {
        let query = StartDiagnoseQuery(img: DiagnoseInput(img: img))
        Network.shared.query(model: DiagnoseDataModel.self, query) { model in
            self.view?.successDiagnose(model: model)
        } failureHandler: { error in
            self.view?.failure(error: error.localizedDescription)
        }
    }
}
