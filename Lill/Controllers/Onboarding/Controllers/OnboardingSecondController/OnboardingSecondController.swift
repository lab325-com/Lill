
import UIKit

protocol OnboardingSecondDelegate: AnyObject {
    func onboardingSecondNext(controller: OnboardingSecondController)
}

class OnboardingSecondController: BaseController {
    
    //----------------------------------------------
    // MARK: - Global property
    //----------------------------------------------
    
    weak var delegate: OnboardingSecondDelegate?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(delegate: OnboardingSecondDelegate) {
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

        // Do any additional setup after loading the view.
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    @IBAction func actionBack(_ sender: Any) {
        delegate?.onboardingSecondNext(controller: self)
    }
}
