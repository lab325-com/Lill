
import Foundation
import Apollo

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
    private var request: Cancellable?
    
    required init(view: DiagnosisOutputProtocol) {
        self.view = view
    }
    
    func uploadPhoto(img: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let mutation = UploadMediaMutation(image: img)
        
        request = Network.shared.mutation(model: MediaDataModel.self, mutation, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successUpload(model: model)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func diagnosePhoto(img: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let query = StartDiagnoseQuery(mediaId: img)
        
        request = Network.shared.query(model: DiagnoseDataModel.self, query, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successDiagnose(model: model)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
}
