
import UIKit

final class NavigationController: UINavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? super.preferredStatusBarStyle
    }
}

class BaseController: UIViewController {
    
    //----------------------------------------------
    // MARK: - IBOutlets
    //----------------------------------------------
    
    @IBOutlet weak var bottomViewConstraint: NSLayoutConstraint!
    @IBOutlet weak var animationBackGroundSwipeRightView: AnimationBackGroundSwipeRightView!
    @IBOutlet weak var animationBackGroundSwipeLeftView: AnimationBackGroundSwipeLeftView!
    
    var transparentNavigationBar = false
    var hiddenNavigationBar = false
    var colorTitleNavigation = UIColor.black
    var backgroundNavigationColor = UIColor.clear
    
    /// property to keyboard settings
    var isShowKeyboard = false
    var correctionKeyboard: CGFloat = 0.0
    var keyboardHeight: CGFloat = 0.0
    var isNeedBottomPagging = true
    var addTapOnScreen = true
    var addSwipeOnScreen = false
    
    var timeline: Timeline?
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let swipeRightView = animationBackGroundSwipeRightView {
            view.clipsToBounds = true
            swipeRightView.alpha = 0.7
            timeline = TimelineSwipeRight(view: swipeRightView, duration: 2)
        } else if let swipeLeftView = animationBackGroundSwipeLeftView {
            view.clipsToBounds = true
            swipeLeftView.alpha = 0.7
            timeline = TimelineSwipeLeft(view: swipeLeftView, duration: 2)
        }
        
        if addTapOnScreen {
            setupTapOnScreen()
        }
        
        if addSwipeOnScreen {
            setupSwipeOnScreen()
        }
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShowMain(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHideMain(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector:#selector(changeLanguageNotifications),
                                               name: Constants.Notifications.languageChangeNotifications,
                                               object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        timeline?.play()
        
        navigationController?.setNavigationBarHidden(hiddenNavigationBar, animated: true)
        
        if #available(iOS 15.0, *) {
            let navBarAppearance = UINavigationBarAppearance()
            navBarAppearance.configureWithOpaqueBackground()
            navBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: colorTitleNavigation]
            navBarAppearance.backgroundColor = transparentNavigationBar ? backgroundNavigationColor : UIColor.white
//            if transparentNavigationBar {
//                navBarAppearance.shadowColor = .clear
//            }
            navBarAppearance.shadowColor = .clear
            navigationController?.navigationBar.standardAppearance = navBarAppearance
            navigationController?.navigationBar.compactAppearance = navBarAppearance
            navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
            
        } else {
            
            if transparentNavigationBar {
                navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
                navigationController?.navigationBar.shadowImage = UIImage()
                navigationController?.navigationBar.isTranslucent = true
                navigationController?.navigationBar.backgroundColor = backgroundNavigationColor
                navigationController?.navigationBar.barTintColor = .black
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
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.isUserInteractionEnabled = true
        tapGestureRecognizer.cancelsTouchesInView = false
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    private func setupSwipeOnScreen() {
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped(gesture:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)

        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped(gesture:)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    @objc func swiped(gesture: UISwipeGestureRecognizer) {
        guard let tabBarController = tabBarController, let viewControllers = tabBarController.viewControllers else { return }
        let tabs = viewControllers.count
        switch gesture.direction {
        case .right:
            if (tabBarController.selectedIndex) > 0 {
                tabBarController.selectedIndex -= 1
            }
        case .left:
            if (tabBarController.selectedIndex) < tabs {
                tabBarController.selectedIndex += 1
            }
        default:
            print("other swipe")
        }
    }
    
    @objc func hideKeyboard() {
        isShowKeyboard = true
        self.view.endEditing(true)
    }
    
    //----------------------------------------------
    // MARK: - Loader
    //----------------------------------------------
    
    func startLoader() {
        LillActivityIndicator.shared.show()
    }
    
    func stopLoading() {
        LillActivityIndicator.shared.hide()
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
