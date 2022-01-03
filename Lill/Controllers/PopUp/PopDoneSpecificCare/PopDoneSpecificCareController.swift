
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
    @IBOutlet weak var bottomLayout: NSLayoutConstraint!
    
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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        animate(isHidden: false) {
            
        }
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
    
    private func animate(isHidden: Bool, completion: @escaping () -> ()) {
        UIView.animate(withDuration: 0.4) { [weak self] in
            guard let `self` = self else { return }
            self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: isHidden ? 0.0 : 0.7)
            self.bottomLayout.constant = isHidden ? 400 : -14
            self.view.layoutIfNeeded()
        } completion: { result in
            completion()
        }
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @IBAction func recordCareAction(_ sender: UIButton) {
        guard let careTypeId = Int(care.type.id) else { return }
        presenter.doneCare(gardenPlantId: gardenId, careTypeId: careTypeId)
    }
    
    @IBAction func cancelAction(_ sender: UIButton) {
        animate(isHidden: true) {
            self.dismiss(animated: true)
        }
    }
    
}

//----------------------------------------------
// MARK: - PopDoneSpecificCareOutputProtocol
//----------------------------------------------

extension PopDoneSpecificCareController: PopDoneSpecificCareOutputProtocol {
    func success() {
        self.delegate?.popDoneSpecificCareSuccess(controller: self)
        animate(isHidden: true) {
            self.dismiss(animated: true)
        }
    }
    
    func failure(error: String) {
        
    }
}
