
import UIKit
import Toast
import FBSDKCoreKit

class LoginController: BaseController {    

    //----------------------------------------------
    // MARK: - @IBOutlets
    //----------------------------------------------
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var signInAppleLabel: UILabel!
    @IBOutlet weak var signInFacebookLabel: UILabel!
    @IBOutlet weak var signInInstagramLabel: UILabel!
    @IBOutlet weak var signInGoogleLabel: UILabel!
    
    @IBOutlet weak var versionLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    private lazy var presenter = LoginPresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = true
        super.viewDidLoad()

        configureView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AnalyticsHelper.sendFirebaseScreenEvent(screen: .login_screen)
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    func configureView() {
        signInAppleLabel.text = RLocalization.login_apple.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        signInFacebookLabel.text = RLocalization.login_facebook.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        signInInstagramLabel.text = RLocalization.login_instagram.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        signInGoogleLabel.text = RLocalization.login_google.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        navigationBar(isNavigationBarHidden: true)
        
        infoLabel.text = RLocalization.login_info.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String,
           let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String {
            versionLabel.text = "ver. \(version) (\(build))"
        }
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    @IBAction func skipAction(_ sender: Any) {
        AnalyticsHelper.sendFirebaseEvents(events: .login_close)
        presenter.loginType(type: .none)
    }
    
    @IBAction func appleAction(_ sender: Any) {
        AnalyticsHelper.sendFirebaseEvents(events: .login_apple)
        presenter.loginType(type: .apple)
    }
    
    @IBAction func facebookAction(_ sender: Any) {
        AnalyticsHelper.sendFirebaseEvents(events: .login_fb)
        presenter.loginType(type: .fb)
    }
    
    @IBAction func instagramAction(_ sender: Any) {
        AnalyticsHelper.sendFirebaseEvents(events: .login_instagram)
        presenter.loginType(type: .fb)
    }
    
    @IBAction func googleAction(_ sender: Any) {
        AnalyticsHelper.sendFirebaseEvents(events: .login_google)
        presenter.loginType(type: .google)
    }
}

//----------------------------------------------
// MARK: - LoginOutputProtocol
//----------------------------------------------
extension LoginController: LoginOutputProtocol {
    func success() {
        if PreferencesManager.sharedManager.isShowFirstOnboarding {
            RootRouter.sharedInstance.loadOnboarding(toWindow: RootRouter.sharedInstance.window)
        } else {
            RootRouter.sharedInstance.loadPlants(toWindow: RootRouter.sharedInstance.window!)
        }
    }
    
    func failure(error: String) {
        view.makeToast(error)
    }
}
