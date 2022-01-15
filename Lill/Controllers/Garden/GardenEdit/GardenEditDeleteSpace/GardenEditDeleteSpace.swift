
import UIKit

protocol GardenEditDeleteSpaceDelegate: AnyObject {
    func didDeleteSpace()
}

class GardenEditDeleteSpace: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    @IBOutlet weak var gardenNameLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var deleteSpaceButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private let gardenId: String
    private let gardenName: String
    private weak var delegate: GardenEditDeleteSpaceDelegate?
    lazy var presenter = GardenEditDeleteSpacePresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(gardenId: String, gardenName: String, delegate: GardenEditDeleteSpaceDelegate) {
        self.gardenId = gardenId
        self.gardenName = gardenName
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
        
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    private func setup() {
        gardenNameLabel.text = gardenName
        infoLabel.text = RLocalization.garden_edit_delete_space_info.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        deleteSpaceButton.setTitle(RLocalization.garden_edit_delete_space_delete.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        cancelButton.setTitle(RLocalization.garden_edit_delete_space_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @IBAction func cancelAction(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func deleteSpaceAction(_ sender: UIButton) {
        dismiss(animated: true) {
            self.presenter.deleteGarden(gardenId: self.gardenId)
        }
    }
}

//----------------------------------------------
// MARK: - GardenEditDeleteSpaceOutputProtocol
//----------------------------------------------

extension GardenEditDeleteSpace: GardenEditDeleteSpaceOutputProtocol {
    func successDelete() {
        delegate?.didDeleteSpace()
    }
    
    func failure(error: String) {
        
    }
}
