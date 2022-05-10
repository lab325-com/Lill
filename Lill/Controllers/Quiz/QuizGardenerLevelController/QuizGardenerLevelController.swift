
import UIKit

fileprivate let kSelected = "ic_quiz_selected"
fileprivate let kUnselected = "ic_quiz_unselected"

class QuizGardenerLevelController: BaseController {
    
    //----------------------------------------------
    // MARK: - @IBOutlets
    //----------------------------------------------
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var firstLevelImage: UIImageView!
    @IBOutlet weak var secondLevelImage: UIImageView!
    @IBOutlet weak var thirdLevelImage: UIImageView!
    
    @IBOutlet weak var firstLevelLabel: UILabel!
    @IBOutlet weak var secondLevelLabel: UILabel!
    @IBOutlet weak var thirdLevelLabel: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Private properties
    //----------------------------------------------
    
    private enum GardenerLevel: String {
        case beginner = "beginner"
        case professional = "professional"
        case social = "social"
    }
    
    private var selectedLevel: GardenerLevel = .beginner

    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = true
        
        super.viewDidLoad()
        
        configureView()
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    private func configureView() {
        titleLabel.text = RLocalization.quiz_gardener_level_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        infoLabel.text = RLocalization.quiz_gardener_level_info.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        firstLevelLabel.text = RLocalization.quiz_gardener_level_beginner.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        secondLevelLabel.text = RLocalization.quiz_gardener_level_professional.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        thirdLevelLabel.text = RLocalization.quiz_gardener_level_social.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        nextButton.setTitle(RLocalization.quiz_gardener_level_next.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }
    
    private func updateView(level: GardenerLevel) {
        firstLevelImage.image = UIImage(named: level == .beginner ? kSelected : kUnselected)
        secondLevelImage.image = UIImage(named: level == .professional ? kSelected : kUnselected)
        thirdLevelImage.image = UIImage(named: level == .social ? kSelected : kUnselected)
        
        selectedLevel = level
        
        nextButton.alpha = 1.0
        nextButton.isUserInteractionEnabled = true
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func firstAction(_ sender: Any) {
        updateView(level: .beginner)
    }
    
    @IBAction func secondAction(_ sender: Any) {
        updateView(level: .professional)
    }
    
    @IBAction func thirdAction(_ sender: Any) {
        updateView(level: .social)
    }
    
    @IBAction func nextAction(_ sender: Any) {
        AnalyticsHelper.sendFirebaseEvents(events: .quiz_gardener_level, params: ["level" : selectedLevel.rawValue])
        
        let controller = QuizGardenerPlantsController()
        navigationController?.pushViewController(controller, animated: true)
    }
}
