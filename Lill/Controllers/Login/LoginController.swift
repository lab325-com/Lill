
import UIKit
import Toast

class LoginController: BaseController {    

    //----------------------------------------------
    // MARK: - @IBOutlets
    //----------------------------------------------
    @IBOutlet weak var infoLbel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    private lazy var presenter = LoginPresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    func configureView() {
        navigationBar(isNavigationBarHidden: true)
        
        infoLbel.text = RLocalization.login_info()
        loginLabel.text = RLocalization.login_loginWith()
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    @IBAction func appleAction(_ sender: Any) {
        presenter.loginType(type: .apple)
    }
    
    @IBAction func facebookAction(_ sender: Any) {
        presenter.loginType(type: .fb)
    }
    
    @IBAction func instagramAction(_ sender: Any) {
        presenter.loginType(type: .fb)
    }
    
    @IBAction func googleAction(_ sender: Any) {
        presenter.loginType(type: .google)
    }
}

//----------------------------------------------
// MARK: - LoginOutputProtocol
//----------------------------------------------
extension LoginController: LoginOutputProtocol {
    func success() {
        RootRouter.sharedInstance.loadOnboarding(toWindow: RootRouter.sharedInstance.window)
    }
    
    func failure(error: String) {
        view.makeToast(error)
    }
}
