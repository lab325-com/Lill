
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
    // MARK: - Life cycle
    //----------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //----------------------------------------------
    // MARK: - Public methods
    //----------------------------------------------
    func navigationBar(isNavigationBarHidden: Bool = false) {
        navigationController?.isNavigationBarHidden = isNavigationBarHidden
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
