
import UIKit
import Foundation

class GardenController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var addPantLabel: UILabel!

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet var careViews: [ShadowView]!
    @IBOutlet var careButtons: [UIButton]!
    @IBOutlet var careLabels: [UILabel]!

    @IBOutlet weak var collectionView: UICollectionView!

    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------

    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------

    var selectedCareType = 0

    lazy var presenter = GardenPresenter(view: self)

    let cellIdentifier = String(describing: GardenViewCell.self)
    let cellButtonIdentifier = String(describing: GardenButtonCell.self)

    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------

    override func viewDidLoad() {
        addSwipeOnScreen = true
        super.viewDidLoad()

        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let careLabel = careLabels.first(where: {$0.tag == 0})
        careLabel?.text = RLocalization.care_type_all.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        titleLabel.text = RLocalization.garden_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        addPantLabel.text = "+ " + RLocalization.garden_add_plant.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        for careView in careViews {
            switch careView.tag {
            case 0: careView.isHidden = false
            default: careView.isHidden = true
            }
        }
        
        getGardenPlants()
    }

    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func getGardenPlants() {
        guard let gardenId = KeychainService.standard.me?.defaultGardenId else { return }
        presenter.getCaresByGarden(gardenId: gardenId)
        presenter.getGardenPlants(gardenId: gardenId)
    }

    private func setup() {
        hiddenNavigationBar = true
        
        scrollView.contentInset.left = 12
        scrollView.contentInset.right = 12
        
        updateCaresSection()

        collectionView.register(UINib.init(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
        collectionView.register(UINib.init(nibName: cellButtonIdentifier, bundle: nil), forCellWithReuseIdentifier: cellButtonIdentifier)
        collectionView.contentInset.top = 40
        collectionView.reloadData()
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

    @IBAction func selectStackAction(_ sender: UIButton) {        
        selectedCareType = sender.tag
        scrollToTop(animated: true)
        updateCaresSection()

        guard let gardenId = KeychainService.standard.me?.defaultGardenId else { return }
        switch sender.tag {  
        case 1:
            presenter.getGardenPlants(gardenId: gardenId, careTypeId: 1)
        case 2:
            presenter.getGardenPlants(gardenId: gardenId, careTypeId: 2)
        case 3:
            presenter.getGardenPlants(gardenId: gardenId, careTypeId: 3)
        case 4:
            presenter.getGardenPlants(gardenId: gardenId, careTypeId: 4)
        default:
            presenter.getGardenPlants(gardenId: gardenId)
        }
    }

    @IBAction func addPlantAction(_ sender: UIButton) {
        GardenRouter(presenter: navigationController).presentChooseAddPlant(delegate: self)
    }
    
    @objc override func changeLanguageNotifications(_ notification: Notification) {
        super.changeLanguageNotifications(notification)
        collectionView.reloadData()
    }
}

//----------------------------------------------
// MARK: - GardenOutputProtocol
//----------------------------------------------

extension GardenController: GardenOutputProtocol {

    func successCaresByGarden(model: CaresByGardenDataModel) {
                        
        for care in model.caresByGarden {
            switch care.careType.name {
            case .humidity :
                careViews.first(where:{$0.tag == 1})?.isHidden = false
                careLabels.first(where: {$0.tag == 1})?.text = RLocalization.care_type_humidity.localized(PreferencesManager.sharedManager.languageCode.rawValue) + ": " + "\(care.careCount)"
            case .misting:
                careViews.first(where:{$0.tag == 2})?.isHidden = false
                careLabels.first(where: {$0.tag == 2})?.text = RLocalization.care_type_misting.localized(PreferencesManager.sharedManager.languageCode.rawValue) + ": " + "\(care.careCount)"
            case .rotating:
                careViews.first(where:{$0.tag == 3})?.isHidden = false
                careLabels.first(where: {$0.tag == 3})?.text = RLocalization.care_type_rotating.localized(PreferencesManager.sharedManager.languageCode.rawValue) + ": " + "\(care.careCount)"
            case .watering:
                careViews.first(where:{$0.tag == 4})?.isHidden = false
                careLabels.first(where: {$0.tag == 4})?.text = RLocalization.care_type_watering.localized(PreferencesManager.sharedManager.languageCode.rawValue) + ": " + "\(care.careCount)"
            }
        }
    }

    func successGardenPlants() {
        guard let gardenId = KeychainService.standard.me?.defaultGardenId else { return }
        presenter.getCaresByGarden(gardenId: gardenId)
        
        collectionView.reloadData()
    }

    func successDoneAllCaresByGarden(model: DoneAllCaresByGardenDataModel) {
        if model.doneAllCaresByGarden {
            selectedCareType = 0
            updateCaresSection()
            scrollToTop(animated: true)
            getGardenPlants()
        }
    }

    func failure(error: String) {

    }
}

//----------------------------------------------
// MARK: - ChooseIdentifyDelegate
//----------------------------------------------

extension GardenController: GardenChooseAddPlantDelegate {
    func didPressedAddUniquePlant() {
        PopUpRouter(presenter: navigationController).presentUniquePlant(tabBarController: tabBarController, delegate: self)
    }
}

//----------------------------------------------
// MARK: - PopUniqePlanProtocol
//----------------------------------------------

extension GardenController: PopUniqePlanProtocol {
    func dissmiss(controller: PopUniquePlantController, text: String) {
        AddCoverRouter(presenter: navigationController).presentAddCoverIdentifier(tabBarController: tabBarController, text: text, delegate: self)
    }
}

extension GardenController: AddCoverIdentifierProtocol {
    func addCoverIdentifierGoToPlantName(controller: AddCoverIdentifierController) {
        PopUpRouter(presenter: navigationController).presentUniquePlant(tabBarController: tabBarController, delegate: self)
    }
}
