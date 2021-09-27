
import Foundation
import FBSDKLoginKit
import GoogleSignIn
import AuthenticationServices

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol LoginOutputProtocol: BaseController {
    func success()
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol LoginPresenterProtocol: AnyObject {
    init(view: LoginOutputProtocol)
    
    func loginType(type: Social)
}

class LoginPresenter: LoginPresenterProtocol {
    
    private weak var view: LoginOutputProtocol?
    private var isLoaded = false
    private lazy var socialManager: SocialManager = SocialManager(controller: view!, delegate: self)
    private var uuid: String {
        return UIDevice.current.identifierForVendor?.uuidString ?? ""
    }
    
    required init(view: LoginOutputProtocol) {
        self.view = view
    }
    
    func loginType(type: Social) {
//        view?.startLoader()
//        let query = GetCatalogPlantsQuery(pagination: InputPagination(limit: 10, ofset: 0), search: "Roze")
//        Network.shared.query(model: CatalogPlantsModel.self, query) { [weak self] model in
//            self?.view?.stopLoading()
//            self?.view?.success()
//        } failureHandler: { [weak self] error in
//            self?.view?.stopLoading()
//            self?.view?.failure(error: error.localizedDescription)
//        }
        
        switch type {
        case .fb, .instagram:
            socialManager.loginFacebook()
        case .google:
            socialManager.loginGoogle()
        case .apple:
            socialManager.loginApple()
        default:
            break
        }
    }
}

//----------------------------------------------
// MARK: - SocialManagerDelegate
//----------------------------------------------

extension LoginPresenter: SocialManagerDelegate {
    func login(service: SocialManager, token: String, social: Social) {
        view?.startLoader()
        let mutation = LoginMutation(socialToken: token, udid: uuid, firebaseId: "firebaseId", social: social, lang: .en)
        Network.shared.mutation(model: LoginModel.self, mutation) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.success()
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
    
    func login(service: SocialManager, error: Error?) {
        self.view?.stopLoading()
        
        if #available(iOS 13.0, *) {
            if let asError = error as? ASAuthorizationError, asError.code == ASAuthorizationError.Code.canceled { return }
        }
        
        if let error = error {
            self.view?.failure(error: error.localizedDescription)
        }
    }
}
