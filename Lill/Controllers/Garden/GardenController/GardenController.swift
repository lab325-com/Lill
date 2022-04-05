
import UIKit
import Foundation
import Lottie

class GardenController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var onboardingView: GradientView!
    @IBOutlet weak var lottieView: AnimationView!
    
    @IBOutlet weak var onbordingTitleLabel: UILabel!
    
    @IBOutlet var careViews: [ShadowView]!
    @IBOutlet var careButtons: [UIButton]!
    @IBOutlet var careLabels: [UILabel]!

    @IBOutlet weak var collectionView: UICollectionView!

    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private let gardenName: String

    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------

    let gardenId: String
    var selectedCareType = 0

    lazy var presenter = GardenPresenter(view: self)

    let cellIdentifier = String(describing: GardenViewCell.self)
    let cellButtonIdentifier = String(describing: GardenButtonCell.self)
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(gardenId: String, gardenName: String) {
        self.gardenId = gardenId
        self.gardenName = gardenName
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------

    override func viewDidLoad() {
        addSwipeOnScreen = true
        super.viewDidLoad()

        getGardenPlants()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setup()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if !onboardingView.isHidden {
            lottieView.stop()
            onboardingView.isHidden = true
        }
    }

    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    private func getGardenPlants() {
        presenter.getCaresByGarden(gardenId: gardenId)
        presenter.getGardenPlants(gardenId: gardenId)        
    }

    private func setup() {
        hiddenNavigationBar = false
        
        if LaunchChecker(for: GardenController.self).isFirstLaunch() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                self.onboardingView.isHidden = false
                self.lottieView.transform = CGAffineTransform(rotationAngle: .pi);
                self.lottieView.loopMode = .loop
                self.lottieView.play()
            }
        }
        
        navigationItem.title = gardenName.capitalized
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
                
        let rightBarButtonItem = UIBarButtonItem(title: RLocalization.garden_controller_edit.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .done, target: self, action: #selector(editGardenAction))
        rightBarButtonItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "SFProDisplay-Regular", size: 17.0)!, NSAttributedString.Key.foregroundColor : UIColor(rgb: 0x7CDAA3)], for: .normal)
        navigationItem.rightBarButtonItem = rightBarButtonItem
        
        let careLabel = careLabels.first(where: {$0.tag == 0})
        careLabel?.text = RLocalization.care_type_all.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        onbordingTitleLabel.text = RLocalization.garden_controller_onboarding_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        resetCaresViews()
        updateCaresSection()
        
        scrollView.contentInset.left = 12
        scrollView.contentInset.right = 12

        collectionView.register(UINib.init(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
        collectionView.register(UINib.init(nibName: cellButtonIdentifier, bundle: nil), forCellWithReuseIdentifier: cellButtonIdentifier)
        collectionView.contentInset.top = 40
    }
    
    private func resetCaresViews() {
        for careView in careViews {
            switch careView.tag {
            case 0: careView.isHidden = false
            default: careView.isHidden = true
            }
        }
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

    @objc func editGardenAction() {
        GardenRouter(presenter: navigationController).pushToEditGarden(gardenId: gardenId)
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
                
        resetCaresViews()
        
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
