
import UIKit

class GardenEdit: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var footerView: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var gardenImageView: UIImageView!
    @IBOutlet weak var gardenNameLabel: UILabel!
    @IBOutlet weak var gadenPlantsCountInfoLabel: UILabel!
    @IBOutlet weak var gadenPlantsCountLabel: UILabel!
    
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var changeCoverButton: UIButton!
    @IBOutlet weak var changeNameButton: UIButton!
    @IBOutlet weak var deleteSpaceButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private let gardenId: String
    
    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------
    
    lazy var presenter = GardenEditPresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(gardenId: String) {
        self.gardenId = gardenId
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
        
        presenter.getGarden(gardenId: gardenId)
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    private func setup() {
        hiddenNavigationBar = false
        
        titleLabel.text = RLocalization.garden_edit_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        infoLabel.text = RLocalization.garden_edit_info.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        doneButton.setTitle(RLocalization.garden_edit_done.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        changeCoverButton.setTitle(RLocalization.garden_edit_change_cover.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        changeNameButton.setTitle(RLocalization.garden_edit_change_name.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        deleteSpaceButton.setTitle(RLocalization.garden_edit_delete_space.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        headerView.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 24.0)
        footerView.roundCorners(corners: [.topRight, .topLeft], radius: 24.0)
        
        gardenImageView.layer.cornerRadius = 24
        gardenImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
        navigationItem.title = RLocalization.garden_edit_edit.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
        let rightBarButtonItem = UIBarButtonItem(title: RLocalization.garden_edit_done.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .done, target: self, action: #selector(done))
        rightBarButtonItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "SFProDisplay-Regular", size: 17.0)!, NSAttributedString.Key.foregroundColor : UIColor(rgb: 0x7CDAA3)], for: .normal)
        navigationItem.rightBarButtonItem = rightBarButtonItem
        
        guard let gardens = KeychainService.standard.me?.gardens else { return }
        deleteSpaceButton.isUserInteractionEnabled = gardens.count > 1 ? true : false
        deleteSpaceButton.alpha = gardens.count > 1 ? 1.0 : 0.5
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------

    @objc func done() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func doneAction(_ sender: UIButton) {
        done()
    }
    
    @IBAction func changeCoverAction(_ sender: UIButton) {
        let gardenName = KeychainService.standard.me?.gardens.first(where: {$0.id == gardenId})?.name ?? ""
        GardenRouter(presenter: navigationController).pushToEditGardenChangeCover(gardenId: gardenId, gardenName: gardenName, delegate: self)
    }
    
    @IBAction func changeNameAction(_ sender: UIButton) {
        GardenRouter(presenter: navigationController).presentEditGardenChangeName(gardenId: gardenId, delegate: self)
    }
    
    @IBAction func deleteSpaceAction(_ sender: UIButton) {
        let gardenName = KeychainService.standard.me?.gardens.first(where: {$0.id == gardenId})?.name ?? ""
        GardenRouter(presenter: navigationController).presentEditDeleteSpace(gardenId: gardenId, gardenName: gardenName, delegate: self)
    }
}

//----------------------------------------------
// MARK: - GardensOutputProtocol
//----------------------------------------------

extension GardenEdit: GardenEditOutputProtocol {
    func successGetGarden(garden: GardenModel) {
        gardenImageView.kf.setImage(with: URL(string: garden.userMainImage?.urlIosPrev ?? ""), placeholder: RImage.placeholder_little_ic(), options: [.transition(.fade(0.25))])
        gardenNameLabel.text = garden.name
        if let totalPlants = garden.totalPlants {
            gadenPlantsCountLabel.text = "\(totalPlants)"
            gadenPlantsCountInfoLabel.text = RLocalization.garden_edit_plants.localized(PreferencesManager.sharedManager.languageCode.rawValue) + "\(totalPlants)"
        }
    }

    func failure(error: String) {

    }
}

//----------------------------------------------
// MARK: - GardenEditChangeCoverDelegate
//----------------------------------------------

extension GardenEdit: GardenEditChangeCoverDelegate {
    func didChangeGardenCover(img: UIImage) {
        gardenImageView.image = img
    }
}

//----------------------------------------------
// MARK: - GardenEditChangeCoverDelegate
//----------------------------------------------

extension GardenEdit: GardenEditChangeNameDelegate {
    func didChangeName(text: String) {
        gardenNameLabel.text = text
    }
}

//----------------------------------------------
// MARK: - GardenEditDeleteSpaceDelegate
//----------------------------------------------

extension GardenEdit: GardenEditDeleteSpaceDelegate {
    func didDeleteSpace() {
        navigationController?.popToRootViewController(animated: true)
    }
}
