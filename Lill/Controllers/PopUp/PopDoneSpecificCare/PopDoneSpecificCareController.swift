
import UIKit

protocol PopDoneSpecificCareDelegate: AnyObject {
    func popDoneSpecificCareSuccess(controller: PopDoneSpecificCareController)
}

class PopDoneSpecificCareController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var careImageView: UIImageView!
    @IBOutlet weak var careNameLabel: UILabel!
    @IBOutlet weak var careInfoLabel: UILabel!
    @IBOutlet weak var recordCareButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private weak var delegate: PopDoneSpecificCareDelegate?
    private let gardenId: String
    private let care: GardenShortPlantCaresModel
    private lazy var presenter = PopDoneSpecificCarePresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(delegate: PopDoneSpecificCareDelegate, gardenId: String, care: GardenShortPlantCaresModel) {
        self.delegate = delegate
        self.gardenId = gardenId
        self.care = care
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
        
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        careImageView.image = care.type.name.image
        careNameLabel.text = care.type.name.text
        
        var text = ""
        var textColor = UIColor.black
        switch care.status {
        case .missed:
            let days = Calendar.current.dateComponents([.day], from: Date(), to: care.date).day ?? 0
            text = RLocalization.pop_done_specific_care_missed_info.localized(PreferencesManager.sharedManager.languageCode.rawValue) + " \(days * -1) days"
            textColor = UIColor(rgb: 0xF96161)
        case .waiting:
            text = RLocalization.pop_done_specific_care_waiting_info.localized(PreferencesManager.sharedManager.languageCode.rawValue)
            textColor = UIColor(rgb: 0xFFA654)
        default:
            text = RLocalization.pop_done_specific_care_done_info.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
        careInfoLabel.text = text
        careInfoLabel.textColor = textColor
        
        recordCareButton.setTitle(RLocalization.pop_done_specific_care_record_care.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        cancelButton.setTitle(RLocalization.pop_done_specific_care_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @IBAction func recordCareAction(_ sender: UIButton) {
        guard let careTypeId = Int(care.type.id) else { return }
        presenter.doneCare(gardenPlantId: gardenId, careTypeId: careTypeId)
    }
    
    @IBAction func cancelAction(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

//----------------------------------------------
// MARK: - PopDoneSpecificCareOutputProtocol
//----------------------------------------------

extension PopDoneSpecificCareController: PopDoneSpecificCareOutputProtocol {
    func success() {
        dismiss(animated: true) {
            self.delegate?.popDoneSpecificCareSuccess(controller: self)
        }
    }
    
    func failure(error: String) {
        
    }
}
