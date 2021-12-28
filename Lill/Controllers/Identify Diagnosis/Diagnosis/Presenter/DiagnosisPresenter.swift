
import Foundation
import Apollo
import UIKit
import GameController

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
    
    func uploadPhoto(img: UIImage)
}

class DiagnosisPresenter: DiagnosisPresenterProtocol {
    
    private weak var view: DiagnosisOutputProtocol?
    private var request: Cancellable?
    
    required init(view: DiagnosisOutputProtocol) {
        self.view = view
    }
    
    func uploadPhoto(img: UIImage) {
        //view?.startLoader()
        
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
    
    func diagnosePhoto(id: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let query = StartDiagnoseQuery(mediaId: id)
        
        request = Network.shared.query(model: DiagnoseDataModel.self, query, controller: view, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successDiagnose(model: model)
            
            if model.startDiagnose?.plant == nil {
                AnalyticsHelper.sendFirebaseEvents(events: .diagnosis_results_success_not_sick)
            } else {
                AnalyticsHelper.sendFirebaseEvents(events: .diagnosis_results_success_sick)
                AnalyticsHelper.sendAppsFlyerEvent(event: .appsflyer_diagnose_success)
            }
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
}
