
import UIKit

protocol OnboardingFirstDelegate: AnyObject {
    func onboardingFirstNext(controller: OnboardingFirsController)
}

class OnboardingFirsController: BaseController {
    
    //----------------------------------------------
    // MARK: - Global property
    //----------------------------------------------
    
    weak var delegate: OnboardingFirstDelegate?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(delegate: OnboardingFirstDelegate) {
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = true
        super.viewDidLoad()
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    @IBAction func actionNext(_ sender: Any) {
        delegate?.onboardingFirstNext(controller: self)
    }
}
