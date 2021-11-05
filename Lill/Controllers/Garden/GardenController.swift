
import UIKit

class GardenController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var addPantLabel: UILabel!
    
    @IBOutlet var stackViews: [ShadowView]!
    @IBOutlet var stackButtons: [UIButton]!
    @IBOutlet var stackLabels: [UILabel]!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private lazy var presenter = GardenPresenter(view: self)
    private var selectedType = 0
    private var gardenPlants = [GardenPlantsModel]()
    private var needsCarePlantsCount = 0
    
    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------
    
    let cellIdentifier = String(describing: GardenViewCell.self)
    let cellButtonIdentifier = String(describing: GardenButtonCell.self)
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = true
        
        super.viewDidLoad()
        
        if let gardenId = KeychainService.standard.token?.defaultGardenId {
            //presenter.getCaresByGarden(gardenId: gardenId)
            //presenter.getGardenPants(gardenId: gardenId, isHappy: false)
        }
        
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        
        updateButtonsStack()
        
        collectionView.register(UINib.init(nibName: cellIdentifier,
                                           bundle: nil),
                                forCellWithReuseIdentifier: cellIdentifier)
        collectionView.register(UINib.init(nibName: cellButtonIdentifier,
                                           bundle: nil),
                                forCellWithReuseIdentifier: cellButtonIdentifier)
        
        collectionView.contentInset.top = 40
        collectionView.reloadData()
    }
    
    private func updateButtonsStack() {
        for view in stackViews {
            if view.tag == selectedType, selectedType == 0 {
                view.backgroundColor = UIColor(rgb: 0x7CDAA3)
            } else if view.tag == selectedType {
                view.backgroundColor = UIColor(rgb: 0xFF993C)
            } else {
                view.backgroundColor = UIColor.white
            }
        }
        
        for label in stackLabels {
            if label.tag == selectedType {
                label.textColor = UIColor.white
            } else {
                label.textColor = UIColor(rgb: 0x666666)
            }
        }
        
        for button in stackButtons {
            button.setTitle("", for: .normal)
        }
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @IBAction func selectStackAction(_ sender: UIButton) {
        collectionView.setContentOffset(CGPoint(x: 0, y: -40), animated: true)
        selectedType = sender.tag
        updateButtonsStack()
    }
    
    @IBAction func addPlantAction(_ sender: UIButton) {
        tabBarController?.selectedIndex = 0
    }
}

//----------------------------------------------
// MARK: - GardenOutputProtocol
//----------------------------------------------

extension GardenController: GardenOutputProtocol {
    func successCaresByGarden(model: CaresByGardenDataModel) {
        
    }
    
    func successGardenPlants(model: GardenPlantsDataModel) {
        needsCarePlantsCount = model.gardenPlants.GardenPlants.count
        for plant in model.gardenPlants.GardenPlants {
            gardenPlants.append(plant)
        }
    }
    
    func failure(error: String) {
        
    }
}
