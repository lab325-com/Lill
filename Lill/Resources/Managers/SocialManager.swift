
import UIKit
import FBSDKLoginKit
import GoogleSignIn
import AuthenticationServices

protocol SocialManagerDelegate: AnyObject {
    func login(service: SocialManager, token: String, social: Social)
    func login(service: SocialManager, error: Error?)
}

class SocialManager: NSObject {
    
    // MARK: - Public properties
    
    weak var controller: BaseController?
    weak var delegate: SocialManagerDelegate?
    
    // MARK: - Init
    
    init(controller: BaseController, delegate: SocialManagerDelegate) {
        self.controller = controller
        self.delegate = delegate
    }
    
    // MARK: - Public methods
    
    func loginApple() {
        guard #available(iOS 13.0, *) else {
            return
        }
        let appleIDProvider = ASAuthorizationAppleIDProvider()
        let request = appleIDProvider.createRequest()
        request.requestedScopes = [.email, .fullName]
        
        let authorizationController = ASAuthorizationController(authorizationRequests: [request])
        authorizationController.delegate = self
        authorizationController.presentationContextProvider = self
        authorizationController.performRequests()
    }

    func loginFacebook() {
        LoginManager().logOut()
        LoginManager().logIn(permissions: ["email"], from: controller) { (result, error) in
            if let result = result, let token = result.token?.tokenString {
                //self.delegate?.social(service: self, loginFacebook: token)
                self.delegate?.login(service: self, token: token, social: .fb)
            } else {
                //self.delegate?.social(service: self, error: error)
                self.delegate?.login(service: self, error: error)
            }
        }
    }

    func loginGoogle() {
        let signInConfig = GIDConfiguration.init(clientID: "624217647467-04qjmf8n1s5dof434c4rpo4b4uul7e69.apps.googleusercontent.com",
                                                 serverClientID: "624217647467-t8fqo3nns6a4qkl05i3c4spl28v08i4g.apps.googleusercontent.com")
        guard let controller = controller else { return }
        GIDSignIn.sharedInstance.signIn(with: signInConfig, presenting: controller) { (user, error) in
            if let user = user, let token =  user.serverAuthCode {
                //self.delegate?.social(service: self, loginGoogle: token)
                self.delegate?.login(service: self, token: token, social: .google)
            } else {
                //self.delegate?.social(service: self, error: error)
                self.delegate?.login(service: self, error: error)
            }
        }
    }
    
    func logoutGoogle() {
        GIDSignIn.sharedInstance.signOut()
    }
}

//MARK: - ASAuthorizationControllerDelegate, ASAuthorizationControllerPresentationContextProviding

extension SocialManager: ASAuthorizationControllerDelegate, ASAuthorizationControllerPresentationContextProviding {
    @available(iOS 13.0, *)
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        return (self.controller?.view.window)!
    }

    @available(iOS 13.0, *)
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        self.delegate?.login(service: self, error: error)
    }

    @available(iOS 13.0, *)
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        if let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential,
            let authorizationCode = appleIDCredential.authorizationCode,
            let token = String(data: authorizationCode, encoding: .utf8) {
            //self.delegate?.social(service: self, loginApple: token)
            self.delegate?.login(service: self, token: token, social: .apple)
        }
    }
}
