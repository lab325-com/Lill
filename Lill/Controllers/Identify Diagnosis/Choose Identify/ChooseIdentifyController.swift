
import UIKit

class ChooseIdentifyController: BaseController {
    
    //----------------------------------------------
    // MARK: - @IBOutlets
    //----------------------------------------------
    
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var identifyView: GradientView!
    @IBOutlet weak var identifyCountView: GradientView!
    @IBOutlet weak var diagnosisView: UIView!
    @IBOutlet weak var premiumView: GradientView!
    
    @IBOutlet weak var identifyLabel: UILabel!
    @IBOutlet weak var identifyCountLabel: UILabel!
    @IBOutlet weak var diagnosisLabel: UILabel!
    @IBOutlet weak var premiumLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private lazy var presenter = ChooseIdentifyPresenter(view: self)
    private var meModel: MeDataModel?

    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.getMe()
        
        configureView()
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    func configureView() {        
        identifyLabel.text = RLocalization.choose_identify_identify()
        diagnosisLabel.text = RLocalization.choose_identify_diagnosis()
        premiumLabel.text = RLocalization.choose_identify_premium()
        
        cancelButton.setTitle(RLocalization.choose_identify_cancel(), for: .normal)
    }
    
    func updateView() {
        identifyView.isHidden = false
        diagnosisView.isHidden = false
        guard let model = meModel else { return }
        identifyCountView.isHidden = model.me.access.isPremium
        premiumView.isHidden = model.me.access.isPremium
        identifyCountLabel.text = "\(model.me.access.identifyUsed)" + "/" + "\(model.me.access.identifyTotal)"
    }
    
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func cancelAction(_ sender: Any) {
        dismiss(animated: false)
    }
    
    @IBAction func identifyAction(_ sender: Any) {
        guard let model = meModel else { return }
        dismiss(animated: false) {
            let currentNavigationController = RootRouter.sharedInstance.topViewController?.navigationController
            if model.me.access.isPremium || model.me.access.identifyUsed < 3 {
                PlantsRouter(presenter: currentNavigationController).presentIdentify(model: model.me)
            } else {
                PlantsRouter(presenter: currentNavigationController).presentSubscribe()
            }
        }
    }
    
    @IBAction func diagnosisAction(_ sender: Any) {
        guard let model = meModel else { return }
        dismiss(animated: false) {
            let currentNavigationController = RootRouter.sharedInstance.topViewController?.navigationController
            if model.me.access.isPremium {
                PlantsRouter(presenter: currentNavigationController).presentDiagnosis()
            } else {
                PlantsRouter(presenter: currentNavigationController).presentSubscribe()
            }
        }
    }
}

//----------------------------------------------
// MARK: - PlantsOutputProtocol
//----------------------------------------------

extension ChooseIdentifyController: ChooseIdentifyOutputProtocol {
    func success(model: MeDataModel) {
        meModel = model
        updateView()
    }
    
    func failure(error: String) {

    }
}
