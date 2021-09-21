
import UIKit

class OnboardingController: BaseController {

    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    private lazy var presenter = OnboardingPresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.loginUser(email: "test@gmail.com")
    }
}

//----------------------------------------------
// MARK: - OnboardingOutputProtocol
//----------------------------------------------
extension OnboardingController: OnboardingOutputProtocol {
    func success(user: LoginModel) {
//        debugPrint("")
    }
    
    func failure(message: String) {
//        debugPrint(message)
    }
}
