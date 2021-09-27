
import UIKit

protocol OnboardingThreeDelegate: AnyObject {
    func onboardingThreePrevious(controller: OnboardingThreeController)
}

class OnboardingThreeController: BaseController {
    
    //----------------------------------------------
    // MARK: - Global property
    //----------------------------------------------
    
    weak var delegate: OnboardingThreeDelegate?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(delegate: OnboardingThreeDelegate) {
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
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @IBAction func actionBack(_ sender: Any) {
        delegate?.onboardingThreePrevious(controller: self)
    }
}
