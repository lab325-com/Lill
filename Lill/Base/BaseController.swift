
import UIKit
import NVActivityIndicatorView
import NVActivityIndicatorViewExtended

final class NavigationController: UINavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? super.preferredStatusBarStyle
    }
}

class BaseController: UIViewController, NVActivityIndicatorViewable {
    
    //----------------------------------------------
    // MARK: - IBOutlets
    //----------------------------------------------
    
    @IBOutlet weak var bottomViewConstraint: NSLayoutConstraint!
    
    
    var transparentNavigationBar = false
    var hiddenNavigationBar = false
    var colorTitleNavigation = UIColor(rgb: 0xC36ED1)
    var backgroundNavigationColor = UIColor.clear
    
    /// property to keyboard settings
    var isShowKeyboard = false
    var correctionKeyboard: CGFloat = 0.0
    var keyboardHeight: CGFloat = 0.0
    var isNeedBottomPagging = true
    var addTapOnScreen = true
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if addTapOnScreen {
            setupTapOnScreen()
        }
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShowMain(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHideMain(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector:#selector(changeLanguageNotifications),
                                               name: Constants.Notifications.languageChangeNotifications,
                                               object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(hiddenNavigationBar, animated: true)
        
        if #available(iOS 13.0, *) {
            let navBarAppearance = UINavigationBarAppearance()
            navBarAppearance.configureWithOpaqueBackground()
            navBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: colorTitleNavigation]
            navBarAppearance.backgroundColor = transparentNavigationBar ? backgroundNavigationColor : UIColor(rgb: 0xF9F9F9).withAlphaComponent(0.94)
            if transparentNavigationBar {
                navBarAppearance.shadowColor = .clear
            }
            navigationController?.navigationBar.standardAppearance = navBarAppearance
            navigationController?.navigationBar.compactAppearance = navBarAppearance
            navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
            
        } else {
            
            if transparentNavigationBar {
                navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
                navigationController?.navigationBar.shadowImage = UIImage()
                navigationController?.navigationBar.isTranslucent = true
                navigationController?.navigationBar.backgroundColor = .clear
                navigationController?.navigationBar.barTintColor = .clear
            } else {
                navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
                navigationController?.navigationBar.shadowImage = UINavigationBar().shadowImage
                navigationController?.navigationBar.isTranslucent = true
                navigationController?.navigationBar.backgroundColor = .white
                navigationController?.navigationBar.barTintColor = .white
            }
        }
    }
    
    // MARK: - Deinit
    deinit {
        debugPrint("------------------>>>>>>>>>>>>> deinit:\(String(describing: type(of: self)))")
        NotificationCenter.default.removeObserver(self)
    }
    
    //----------------------------------------------
    // MARK: - Notifications
    //----------------------------------------------
    
    @objc func changeLanguageNotifications(_ notification: Notification) {
        
    }
    
    //----------------------------------------------
    // MARK: - Public methods
    //----------------------------------------------
    
    func navigationBar(isNavigationBarHidden: Bool = false) {
        navigationController?.isNavigationBarHidden = isNavigationBarHidden
    }
    
    //----------------------------------------------
    // MARK: - Tap to screen
    //----------------------------------------------
    
    private func setupTapOnScreen() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action:#selector(hideKeyboard))
        view.isUserInteractionEnabled = true
        tapGestureRecognizer.cancelsTouchesInView = false
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func hideKeyboard() {
        isShowKeyboard = true
        self.view.endEditing(true)
    }
    
    //----------------------------------------------
    // MARK: - Loader
    //----------------------------------------------
    
    func startLoader() {
        let size = CGSize(width: 50, height: 50)
        let allTypes = NVActivityIndicatorType.allCases
        
        startAnimating(size, message: "", type: allTypes.randomElement() ?? .orbit, fadeInAnimation: nil)
    }
    
    func stopLoading() {
        stopAnimating()
    }
}

//----------------------------------------------
// MARK: - Notificathions Keyboard
//----------------------------------------------

extension BaseController {
    @objc func keyboardWillHideMain(_ notification : Notification) {
        isShowKeyboard = false
        if let bootomConstant = bottomViewConstraint {
            bootomConstant.constant = 0
            keyboardHeight = 0
            UIView.animate(withDuration: 0.4, animations: { () -> Void in
                self.view.layoutIfNeeded()
            })
        }
    }
    
    /// Keyboard will show
    ///
    /// - parameter notification: object notification
    @objc func keyboardWillShowMain(_ notification: Notification) {
        isShowKeyboard = true
        
        if bottomViewConstraint != nil {
            let info = notification.userInfo!
            let keyboardFrame: CGRect = (info[UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
            
            let bottomPadding: CGFloat = {
                
                let tabBarHieght: CGFloat = tabBarController?.tabBar.frame.size.height ?? 0
                
                if tabBarHieght == 0 || hidesBottomBarWhenPushed || (tabBarController?.tabBar.isHidden ?? false) {
                    if #available(iOS 11.0, *) {
                        return UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
                    } else {
                        return 0
                    }
                } else {
                    return tabBarHieght
                }
            } ()
            
            keyboardHeight = keyboardFrame.size.height
            
            bottomViewConstraint.constant = keyboardHeight - (isNeedBottomPagging ? bottomPadding : 0.0) + correctionKeyboard
            
            UIView.animate(withDuration: 0.4, animations: { () -> Void in
                self.view.layoutIfNeeded()
            })
        }
    }
}
