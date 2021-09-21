
import Foundation

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol OnboardingOutputProtocol: AnyObject {
    func success(user: LoginModel)
    func failure(message: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol OnboardingPresenterProtocol: AnyObject {
    init(view: OnboardingOutputProtocol)
    
    func loginUser(email: String)
}

class OnboardingPresenter: OnboardingPresenterProtocol {
    private weak var view: OnboardingOutputProtocol?
    private var isLoaded = false
    
    required init(view: OnboardingOutputProtocol) {
        self.view = view
    }
    
    func loginUser(email: String) {
        if !isLoaded {
            isLoaded = true
            
            let query = LoginMutation(socialToken: email, udid: "udid", firebaseId: "firebaseId", social: .apple, lang: .is)

            Network.shared.mutation(model: LoginModel.self, query) {[weak self] model in
                self?.view?.success(user: model)
            } failureHandler: { [weak self] error in
                self?.view?.failure(message: error.localizedDescription)
            }
        }
    }
}
