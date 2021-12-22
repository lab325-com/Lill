
import UIKit
import FBSDKLoginKit
import GoogleSignIn
import Firebase
import AuthenticationServices

enum Social: String {
    case apple
    case fb
    case google
    case instagram
    case none
}

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
                self.delegate?.login(service: self, token: token, social: .fb)
            } else {
                self.delegate?.login(service: self, error: error)
            }
        }
    }

    func loginGoogle() {
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }
        let signInConfig = GIDConfiguration.init(clientID: clientID, serverClientID: "1031354065646-4cs83oecmt3rh972ilr9hct01m357gld.apps.googleusercontent.com")
        guard let controller = controller else { return }
        GIDSignIn.sharedInstance.signIn(with: signInConfig, presenting: controller) { (user, error) in
            if let user = user, let token = user.serverAuthCode {
                self.delegate?.login(service: self, token: token, social: .google)
            } else {
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
            self.delegate?.login(service: self, token: token, social: .apple)
        }
    }
}
