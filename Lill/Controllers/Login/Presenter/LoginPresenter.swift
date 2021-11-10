
import Foundation
import FBSDKLoginKit
import GoogleSignIn
import AuthenticationServices
import Firebase

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
    private var firebaseId: String {
        return ""
    }
    
    required init(view: LoginOutputProtocol) {
        self.view = view
    }
    
    func loginType(type: Social) {
        switch type {
        case .fb, .instagram:
            socialManager.loginFacebook()
        case .google:
            socialManager.loginGoogle()
        case .apple:
            socialManager.loginApple()
        case .none:
            loginUser(token: "", udid: uuid, firebaseId: "", social: .none)
        }
    }
    
    func loginUser(token: String, udid: String, firebaseId: String, social: Social) {
        view?.startLoader()
    
        RestAuth().login(token: token, social: social) { [weak self] model in
            KeychainService.standard.newAuthToken = model
            
            let query = MeQuery()
            let _ = Network.shared.query(model: MeDataModel.self, query) { model in
                KeychainService.standard.me = model.me
            } failureHandler: { error in
                
            }
            
            self?.view?.stopLoading()
            self?.view?.success()
        } failure: { [weak self] message, error in
            self?.view?.stopLoading()
            self?.view?.failure(error: (message ?? "") + (error?.localizedDescription ?? ""))
        }
    }
}

//----------------------------------------------
// MARK: - SocialManagerDelegate
//----------------------------------------------

extension LoginPresenter: SocialManagerDelegate {
    func login(service: SocialManager, token: String, social: Social) {
        loginUser(token: token, udid: uuid, firebaseId: "", social: social)
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
