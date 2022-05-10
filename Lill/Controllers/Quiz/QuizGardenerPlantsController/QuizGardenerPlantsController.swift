
import UIKit

fileprivate let kSelected = "ic_quiz_selected"
fileprivate let kUnselected = "ic_quiz_unselected"

class QuizGardenerPlantsController: BaseController {

    //----------------------------------------------
    // MARK: - @IBOutlets
    //----------------------------------------------
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var firstCountImage: UIImageView!
    @IBOutlet weak var secondCountImage: UIImageView!
    @IBOutlet weak var thirdCountImage: UIImageView!
    
    @IBOutlet weak var nextButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Private properties
    //----------------------------------------------
    
    private enum GardenerPlants: String {
        case oneFive = "1-5"
        case fiveFifteen = "5-15"
        case fifteenPlus = "15+"
    }
    
    private var selectedCount: GardenerPlants = .oneFive

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
        infoLabel.text = RLocalization.quiz_gardener_plants_info.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        nextButton.setTitle(RLocalization.quiz_gardener_level_next.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }
    
    private func updateView(count: GardenerPlants) {
        firstCountImage.image = UIImage(named: count == .oneFive ? kSelected : kUnselected)
        secondCountImage.image = UIImage(named: count == .fiveFifteen ? kSelected : kUnselected)
        thirdCountImage.image = UIImage(named: count == .fifteenPlus ? kSelected : kUnselected)
        
        selectedCount = count
        
        nextButton.alpha = 1.0
        nextButton.isUserInteractionEnabled = true
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func firstAction(_ sender: Any) {
        updateView(count: .oneFive)
    }
    
    @IBAction func secondAction(_ sender: Any) {
        updateView(count: .fiveFifteen)
    }
    
    @IBAction func thirdAction(_ sender: Any) {
        updateView(count: .fifteenPlus)
    }
    
    @IBAction func nextAction(_ sender: Any) {
        AnalyticsHelper.sendFirebaseEvents(events: .quiz_gardener_level, params: ["plants" : selectedCount.rawValue])
        
        RootRouter.sharedInstance.loadLogin(toWindow: RootRouter.sharedInstance.window!)
    }
}
