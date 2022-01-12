
import UIKit

class GardenEdit: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet var headerView: UIView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var footerView: UIView!
    
    @IBOutlet weak var gardenImageView: UIImageView!
    @IBOutlet weak var gardenNameLabel: UILabel!
    @IBOutlet weak var gadenPlantsCountInfoLabel: UILabel!
    @IBOutlet weak var gadenPlantsCountLabel: UILabel!
    
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
        
        headerView.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 24.0)
        footerView.roundCorners(corners: [.topRight, .topLeft], radius: 24.0)
        
        gardenImageView.layer.cornerRadius = 24
        gardenImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
        navigationItem.title = "Edit"
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
        let rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(done))
        rightBarButtonItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "SFProDisplay-Regular", size: 17.0)!, NSAttributedString.Key.foregroundColor : UIColor(rgb: 0x7CDAA3)], for: .normal)
        navigationItem.rightBarButtonItem = rightBarButtonItem
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
        GardenRouter(presenter: navigationController).pushToEditGardenChangeCover(gardenId: gardenId, delegate: self)
    }
    
    @IBAction func changeNameAction(_ sender: UIButton) {

    }
    
    @IBAction func deleteSpaceAction(_ sender: UIButton) {

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
            gadenPlantsCountInfoLabel.text = "Plants: \(totalPlants)"
        }
    }
    
    func failure(error: String) {
        
    }
}

extension GardenEdit: GardenEditChangeCoverDelegate {
    func didChangeGardenCover(img: UIImage) {
        gardenImageView.image = img
    }
}
