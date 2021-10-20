
import Foundation

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol ChooseIdentifyOutputProtocol: BaseController {
    func success(model: MeDataModel)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol ChooseIdentifyPresenterProtocol: AnyObject {
    init(view: ChooseIdentifyOutputProtocol)
    
    func getMe()
}

class ChooseIdentifyPresenter: ChooseIdentifyPresenterProtocol {
    
    private weak var view: ChooseIdentifyOutputProtocol?
    
    required init(view: ChooseIdentifyOutputProtocol) {
        self.view = view
    }
    
    func getMe() {
        view?.startLoader()
                
        let query = MeQuery()
        
        Network.shared.query(model: MeDataModel.self, query) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.success(model: model)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}
