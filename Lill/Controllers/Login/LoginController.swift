
import UIKit
import Toast

class LoginController: BaseController {    

    //----------------------------------------------
    // MARK: - @IBOutlets
    //----------------------------------------------
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var versionLabel: UILabel!
    
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
        
        infoLabel.text = RLocalization.login_info()
        loginLabel.text = RLocalization.login_loginWith()
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String,
           let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
            versionLabel.text = "ver. \(version) (\(build))"
        }
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    @IBAction func skipAction(_ sender: Any) {
        presenter.loginType(type: .none)
    }
    
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
