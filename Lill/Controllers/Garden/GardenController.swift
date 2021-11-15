
import UIKit

class GardenController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var addPantLabel: UILabel!

    @IBOutlet weak var careSectionView: UIView!
    
    @IBOutlet var careViews: [ShadowView]!
    @IBOutlet var careButtons: [UIButton]!
    @IBOutlet var careLabels: [UILabel]!

    @IBOutlet weak var collectionView: UICollectionView!

    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------

//    private var selectedType = 0

    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------

    var selectedCareType = 0

    lazy var presenter = GardenPresenter(view: self)

    var sadGardenPlants = [GardenPlantModel]()
    var happyGardenPlants = [GardenPlantModel]()
    var gardenPlants = [GardenPlantModel]()

    let cellIdentifier = String(describing: GardenViewCell.self)
    let cellButtonIdentifier = String(describing: GardenButtonCell.self)

    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------

    override func viewDidLoad() {
        hiddenNavigationBar = true

        super.viewDidLoad()

        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let gardenId = KeychainService.standard.me?.defaultGardenId {
            presenter.getCaresByGarden(gardenId: gardenId)
            presenter.getGardenPants(gardenId: gardenId)
        }
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

//        for button in stackButtons {
//            button.setTitle("", for: .normal)
//        }
    }

    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------

    @IBAction func selectStackAction(_ sender: UIButton) {
        collectionView.setContentOffset(CGPoint(x: 0, y: -40), animated: true)
        selectedCareType = sender.tag
        updateButtonsStack()

        collectionView.reloadData()
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
        
        careSectionView.isHidden = model.caresByGarden.count > 0 ? false : true
        
        for item in model.caresByGarden {
            switch item.careType.name {
            case .watering:
                careViews.first(where:{$0.tag == 1})?.isHidden = false
                careLabels.first(where: {$0.tag == 1})?.text = RLocalization.care_type_humidity.localized(PreferencesManager.sharedManager.languageCode.rawValue) + ": " + "\(item.careCount)"
            case .misting:
                careViews.first(where:{$0.tag == 2})?.isHidden = false
                careLabels.first(where: {$0.tag == 2})?.text = RLocalization.care_type_misting.localized(PreferencesManager.sharedManager.languageCode.rawValue) + ": " + "\(item.careCount)"
            case .humidity:
                careViews.first(where:{$0.tag == 3})?.isHidden = false
                careLabels.first(where: {$0.tag == 3})?.text = RLocalization.care_type_humidity.localized(PreferencesManager.sharedManager.languageCode.rawValue) + ": " + "\(item.careCount)"
            case .rotating:
                careViews.first(where:{$0.tag == 4})?.isHidden = false
                careLabels.first(where: {$0.tag == 4})?.text = RLocalization.care_type_rotating.localized(PreferencesManager.sharedManager.languageCode.rawValue) + ": " + "\(item.careCount)"
            }
        }
    }

    func successGardenPlants() {
        gardenPlants = presenter.gardenPlants
        sadGardenPlants = presenter.sadGardenPlants
        happyGardenPlants = presenter.happyGardenPlants

//        debugPrint("*********")
//        debugPrint(sadGardenPlants.count)
//        debugPrint(happyGardenPlants.count)
//        debugPrint("*********")

        collectionView.reloadData()
    }

    func successDoneAllCaresByGarden(model: DoneAllCaresByGardenDataModel) {
        if model.doneAllCaresByGarden {
            guard let gardenId = KeychainService.standard.me?.defaultGardenId else { return }
            collectionView.setContentOffset(CGPoint(x: 0, y: -40), animated: true)
            presenter.getGardenPants(gardenId: gardenId)
        }
    }

    func failure(error: String) {

    }
}
