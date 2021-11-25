
import UIKit
import Kingfisher

class GardenCaresDetail: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var popupView: UIView!
    @IBOutlet weak var caresStackView: UIStackView!
    @IBOutlet var careViews: [GardenCareDetailView]!
    @IBOutlet weak var plantNameLabel: UILabel!
    @IBOutlet weak var plantImageView: UIImageView!
    @IBOutlet weak var caresCountLabel: UILabel!
    @IBOutlet weak var caresInfoLabel: UILabel!
    @IBOutlet weak var doneCaresButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------

    lazy var presenter = GardenCaresDetailPresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private let plantID: String
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(plantID: String) {
        self.plantID = plantID
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
        
        popupView.alpha = 0.0
        
        for view in careViews {
            view.isHidden = true
        }
        
        presenter.getPlantCares(plantId: plantID)
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func doneCaresAction(_ sender: Any) {
        presenter.doneAllCares(plantId: plantID)
    }
    
    @IBAction func cancelAction(_ sender: Any) {
        dismiss(animated: false)
    }
}

//----------------------------------------------
// MARK: - GardenCaresDetailOutputProtocol
//----------------------------------------------

extension GardenCaresDetail: GardenCaresDetailOutputProtocol {
    func successGetPlantCares() {
        guard let model = presenter.model else { return }
        let cares = presenter.cares
        
        popupView.alpha = 1.0
        
        plantNameLabel.text = model.name
        plantImageView.kf.setImage(with: URL(string: model.userMainImage?.urlIosFull ?? ""), placeholder: RImage.placeholder_big_ic(), options: [.transition(.fade(0.25))])
        caresCountLabel.text = "\(model.gardenPlantCares.count) " + RLocalization.garden_cares_detail_cares.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        caresInfoLabel.text = RLocalization.garden_cares_detail_info.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        for index in 0..<cares.count {
            if let care = cares[safe: index], let view = careViews[safe: index] {
                view.isHidden = false
                view.setup(care: care)
            }
        }
    }
    
    func successDoneAllCares() {
        dismiss(animated: false) {
            //dele
        }
    }
    
    func failure(error: String) {
        
    }
}
