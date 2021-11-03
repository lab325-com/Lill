
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
            loginUser(token: "", udid: uuid, firebaseId: "", social: .none, lang: .en)
        default:
            break
        }
    }
    
    func loginUser(token: String, udid: String, firebaseId: String, social: Social, lang: Lang) {
        view?.startLoader()
        let mutation = LoginMutation(socialToken: token, udid: uuid, firebaseId: firebaseId, social: social, lang: lang)
        Network.shared.mutation(model: LoginModel.self, mutation) { [weak self] model in
            KeychainService.standard.token = model.login
            self?.view?.stopLoading()
            self?.view?.success()
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}

//----------------------------------------------
// MARK: - SocialManagerDelegate
//----------------------------------------------

extension LoginPresenter: SocialManagerDelegate {
    func login(service: SocialManager, token: String, social: Social) {
        loginUser(token: token, udid: uuid, firebaseId: "", social: social, lang: .en)
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
