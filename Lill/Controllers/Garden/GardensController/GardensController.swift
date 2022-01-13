//
import UIKit
import Foundation

class GardensController: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var addPantLabel: UILabel!
    
    @IBOutlet weak var gardensSegment: UISegmentedControl!
    
    @IBOutlet weak var caresView: UIView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet var careViews: [ShadowView]!
    @IBOutlet var careButtons: [UIButton]!
    @IBOutlet var careLabels: [UILabel]!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------
    
    var selectedCareType = 0

    lazy var presenter = GardensPresenter(view: self)
    
    let gardenCellIdentifier = String(describing: GardenCell.self)
    let gardenViewCellIdentifier = String(describing: GardenViewCell.self)
    let gardenButtonCellIdentifier = String(describing: GardenButtonCell.self)
    let addPlaceCellIdentifier = String(describing: AddPlaceCell.self)

    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        presenter.getGardens()
        presenter.getPlants()
        presenter.getCares()
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    private func setup() {
        hiddenNavigationBar = true
        
        navigationItem.title = "My Garden"
        
        let careLabel = careLabels.first(where: {$0.tag == 0})
        careLabel?.text = RLocalization.care_type_all.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        for careView in careViews {
            switch careView.tag {
            case 0: careView.isHidden = false
            default: careView.isHidden = true
            }
        }
        
        updateCaresSection()
        
        scrollView.contentInset.left = 12
        scrollView.contentInset.right = 12
        
        tableView.register(UINib(nibName: gardenCellIdentifier, bundle: nil), forCellReuseIdentifier: gardenCellIdentifier)
        tableView.register(UINib(nibName: addPlaceCellIdentifier, bundle: nil), forCellReuseIdentifier: addPlaceCellIdentifier)
        collectionView.register(UINib.init(nibName: gardenViewCellIdentifier, bundle: nil), forCellWithReuseIdentifier: gardenViewCellIdentifier)
        collectionView.register(UINib.init(nibName: gardenButtonCellIdentifier, bundle: nil), forCellWithReuseIdentifier: gardenButtonCellIdentifier)
        
        tableView.contentInset.top = 52.0
        collectionView.contentInset.top = 100.0
    }
    
    private func updateCaresSection() {
        for view in careViews {
            if view.tag == selectedCareType, selectedCareType == 0 {
                view.backgroundColor = UIColor(rgb: 0x7CDAA3)
            } else if view.tag == selectedCareType {
                view.backgroundColor = UIColor(rgb: 0xFF993C)
            } else {
                view.backgroundColor = UIColor.white
            }
        }

        for label in careLabels {
            if label.tag == selectedCareType {
                label.textColor = UIColor.white
            } else {
                label.textColor = UIColor(rgb: 0x666666)
            }
        }
    }
    
    private func scrollToTop(animated: Bool) {
        collectionView.setContentOffset(CGPoint(x: 0, y: -40), animated: animated)
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @IBAction func addPlantAction(_ sender: UIButton) {
        GardenRouter(presenter: navigationController).presentChooseAddPlant(delegate: self)
    }
    
    @IBAction func gardensSegmentAction(_ sender: UIButton) {
        if gardensSegment.selectedSegmentIndex == 0 {
            tableView.isHidden = false
            collectionView.isHidden = true
            caresView.isHidden = true
//            if presenter.currentSchedule.count == 0 && presenter.futureSchedule.count == 0 {
//                emptyView.isHidden = false
//                tableView.alpha = 0
//            } else {
//                UIView.animate(withDuration: 0.3) {
//                    self.emptyView.isHidden = true
//                    self.tableView.alpha = 1.0
//                }
//            }
        } else {
            tableView.isHidden = true
            collectionView.isHidden = false
            caresView.isHidden = false
//            if presenter.nextWeekSchedule.count == 0 {
//                emptyView.isHidden = false
//                tableView.alpha = 0
//            } else {
//                UIView.animate(withDuration: 0.3) {
//                    self.emptyView.isHidden = true
//                    self.tableView.alpha = 1.0
//                }
//            }
        }
    }
    
    @IBAction func selectStackAction(_ sender: UIButton) {
        selectedCareType = sender.tag
        scrollToTop(animated: true)
        updateCaresSection()

//        guard let gardenId = KeychainService.standard.me?.defaultGardenId else { return }
//        switch sender.tag {
//        case 1:
//            presenter.getGardenPlants(gardenId: gardenId, careTypeId: 1)
//        case 2:
//            presenter.getGardenPlants(gardenId: gardenId, careTypeId: 2)
//        case 3:
//            presenter.getGardenPlants(gardenId: gardenId, careTypeId: 3)
//        case 4:
//            presenter.getGardenPlants(gardenId: gardenId, careTypeId: 4)
//        default:
//            presenter.getGardenPlants(gardenId: gardenId)
//        }
    }
}

//----------------------------------------------
// MARK: - GardensOutputProtocol
//----------------------------------------------

extension GardensController: GardensOutputProtocol {
    func successGetPlants() {
        collectionView.reloadData()
    }
    
    func successGetGardens() {
        tableView.reloadData()
    }
    
    func failure(error: String) {
        
    }
}

//----------------------------------------------
// MARK: - ChooseIdentifyDelegate
//----------------------------------------------

extension GardensController: GardenChooseAddPlantDelegate {
    func didPressedAddUniquePlant() {
        PopUpRouter(presenter: navigationController).presentUniquePlant(tabBarController: tabBarController, delegate: self)
    }
}

//----------------------------------------------
// MARK: - PopUniqePlanProtocol
//----------------------------------------------

extension GardensController: PopUniqePlanProtocol {
    func dissmiss(controller: PopUniquePlantController, text: String) {
        AddCoverRouter(presenter: navigationController).presentAddCoverIdentifier(tabBarController: tabBarController, text: text, delegate: self)
    }
}

extension GardensController: AddCoverIdentifierProtocol {
    func addCoverIdentifierGoToPlantName(controller: AddCoverIdentifierController) {
        PopUpRouter(presenter: navigationController).presentUniquePlant(tabBarController: tabBarController, delegate: self)
    }
}
