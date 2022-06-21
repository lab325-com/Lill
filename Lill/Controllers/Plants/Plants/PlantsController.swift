
import UIKit
import FBSDKCoreKit
import Lottie

class PlantsController: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var heightCollectionLayout: NSLayoutConstraint!
    @IBOutlet weak var topCollectionLayout: NSLayoutConstraint!
    @IBOutlet weak var photoIconLayoutTop: NSLayoutConstraint!
    @IBOutlet weak var photoButtonCenterLayout: NSLayoutConstraint!
    @IBOutlet weak var navigationTralingToViewLayout: NSLayoutConstraint!
    @IBOutlet weak var navigationTralingToPhoto: NSLayoutConstraint!
    @IBOutlet weak var uniqueViewBottomLayout: NSLayoutConstraint!
    @IBOutlet weak var backToTopTrailingLayout: NSLayoutConstraint!
    @IBOutlet weak var blurEffectHeighLayout: NSLayoutConstraint!
    
    @IBOutlet weak var buttonToThisView: UIView!
    @IBOutlet weak var identifireLabel: UILabel!
    @IBOutlet weak var explorerLabel: UILabel!
    @IBOutlet weak var favoriteView: UIView!
    @IBOutlet weak var uniquePlantView: UIView!
    
    @IBOutlet weak var onboardingView: GradientView!
    @IBOutlet weak var lottieView: AnimationView!
    
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var wishListButton: UIButton!
    @IBOutlet weak var backToTopButton: UIButton!
    @IBOutlet weak var uniquePlantButton: UIButton!
    @IBOutlet weak var skipOnbordingButton: UIButton!
    
    @IBOutlet weak var dividerImageView: UIImageView!
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var uniquePlantLabel: UILabel!
    @IBOutlet weak var onbordingTitleLabel: UILabel!
    
    @IBOutlet weak var blurEffectView: UIVisualEffectView!
    @IBOutlet weak var searchTextField: UITextField!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    var searchText = ""
    private var isNeedAnimate = true
    
    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------
    
    lazy var presenter = PlantsPresenter(view: self)
    let cellIdentifier = String(describing: PlantCollectionCell.self)
    var plants = [PlantsModel]()
    weak var delegate: WishListDelegate?
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = true
        addSwipeOnScreen = true
        super.viewDidLoad()
        
        AnalyticsHelper.sendFirebaseEvents(events: .main_screen_open)
        setup()
        presenter.getPlants(search: "")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.updateMe()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AnalyticsHelper.sendFirebaseScreenEvent(screen: .main_screen)
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        if LaunchChecker(for: PlantsController.self).isFirstLaunch() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                self.onboardingView.isHidden = false
                self.lottieView.transform = CGAffineTransform(rotationAngle: .pi);
                self.lottieView.loopMode = .loop
                self.lottieView.play()
            }
        }
        
        if KeychainService.standard.me?.access.isPremium == false {
            MenuRouter(presenter: navigationController).presentLongPaywall(isWeek: false, delegate: nil, controller: String(describing: PlantsController.self))
        }
        
        presenter.checkRecepts { result in
            debugPrint("Sended recept to store: \(result)")
        }
        
        searchTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        searchTextField.addTarget(self, action: #selector(textFieldDidTapped(_:)), for: .touchDown)
        
        blurEffectView.alpha = 0.0
        closeButton.isHidden = true
        photoIconLayoutTop.constant = -1000
        heightCollectionLayout.constant = 0
        
        favoriteView.layer.cornerRadius = 10
        favoriteView.layer.borderWidth = 1
        favoriteView.layer.borderColor = UIColor(rgb: 0xC36ED1).cgColor
        
        backToTopButton.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
        backToTopButton.layer.borderColor = UIColor.white.cgColor
        backToTopButton.layer.borderWidth = 3
        backToTopButton.layer.cornerRadius = 18
        uniquePlantView.layer.cornerRadius = 24
        uniquePlantButton.layer.cornerRadius = 18
        
        photoButton.setTitle("", for: .normal)
        closeButton.setTitle("", for: .normal)
        wishListButton.setTitle("", for: .normal)
        
        collectionView.register(UINib.init(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
        collectionView.contentInset.bottom = 54
        collectionView.reloadData()
        collectionView.isScrollEnabled = false
        
        let swipeUpCollection = UISwipeGestureRecognizer(target: self, action: #selector(gestureSwipeUp))
        swipeUpCollection.direction = .up
        self.collectionView.addGestureRecognizer(swipeUpCollection)
        
        blurEffectHeighLayout.constant = UIDevice.current.hasSafeArea ? 98.0 : 82.0
        
//        if PreferencesManager.sharedManager.firstPaywall == true, KeychainService.standard.me?.access.isPremium == false, StoreKitManager.sharedInstance.isYearly50() {
//            MenuRouter(presenter: navigationController).presentYearPaywall(delegate: nil, controller: String(describing: PlantsController.self))
//        }
        
        setupLocalization()
    }
    
    func setupLocalization() {
        navigationItem.title = RLocalization.plant_detail_back.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        identifireLabel.text = RLocalization.plants_identifier.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        explorerLabel.text = RLocalization.plants_explore.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        uniquePlantLabel.text = RLocalization.plants_uniquePlantLabel.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        searchTextField.text = RLocalization.plants_search.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        searchText = RLocalization.plants_search.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        onbordingTitleLabel.text = RLocalization.plants_onbording_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        backToTopButton.setTitle(RLocalization.plants_backToTop.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        uniquePlantButton.setTitle(RLocalization.plants_uniquePlantButton.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        skipOnbordingButton.setTitle(RLocalization.plants_skip_onbording_button.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @IBAction func actionWishList(_ sender: UIButton) {
        PlantsRouter(presenter: navigationController).pushWishList(delegate: self)
    }
    
    @IBAction func actionClear(_ sender: UIButton) {
        searchTextField.text = ""
        presenter.getPlants(search: "")
        closeButton.isHidden = true
    }
    
    @IBAction func actionPhoto(_ sender: UIButton) {
        lottieView.stop()
        onboardingView.isHidden = true
        AnalyticsHelper.sendFirebaseEvents(events: .explore_photo)
        PlantsRouter(presenter: navigationController).presentChooseIdentify(delegate: self)
    }
    
    @IBAction func actionBackToTop(_ sender: UIButton) {
        if plants.count > 0 {
            collectionView.scrollToItem(at: IndexPath(row: 0, section: 0), at: .top, animated: true)
            collectionView.reloadData()
        }
    }
    
    @IBAction func actionAddUnique(_ sender: UIButton) {
//        if KeychainService.standard.me?.access.isPremium == false, StoreKitManager.sharedInstance.isYearly50() {
//            if let date = PreferencesManager.sharedManager.datePaywall, let countDate = PreferencesManager.sharedManager.countInDatePaywall {
//                let calendar = Calendar.current
//
//                let date1 = calendar.startOfDay(for: date)
//                let date2 = calendar.startOfDay(for: Date())
//
//                let components = calendar.dateComponents([.day], from: date1, to: date2)
//
//                if components.day == 0, countDate < 3 {
//                    PreferencesManager.sharedManager.countInDatePaywall = countDate + 1
//                    MenuRouter(presenter: navigationController).presentYearPaywall(delegate: self, controller: String(describing: PlantsController.self))
//                } else if components.day == 0, countDate > 2 {
//                    PopUpRouter(presenter: navigationController).presentUniquePlant(tabBarController: tabBarController, delegate: self)
//                } else {
//                    PreferencesManager.sharedManager.countInDatePaywall = 1
//                    PreferencesManager.sharedManager.datePaywall = Date()
//                    MenuRouter(presenter: navigationController).presentYearPaywall(delegate: self, controller: String(describing: PlantsController.self))
//                }
//            } else {
//                PreferencesManager.sharedManager.countInDatePaywall = 1
//                PreferencesManager.sharedManager.datePaywall = Date()
//                MenuRouter(presenter: navigationController).presentYearPaywall(delegate: self, controller: String(describing: PlantsController.self))
//            }
//        } else {
//            PopUpRouter(presenter: navigationController).presentUniquePlant(tabBarController: tabBarController, delegate: self)
//        }
        guard let meModel = KeychainService.standard.me else { return }
        
        if meModel.access.isPremium {
            PopUpRouter(presenter: navigationController).presentUniquePlant(tabBarController: tabBarController, delegate: self)
        } else {
            if let model = StoreKitManager.sharedInstance.checkSaleType(type: .unique) {
                if meModel.totalUniquePlants >= model.value {
                    switch model.sale {
                    case .saleTypeLifetime_50:
                        MenuRouter(presenter: navigationController).presentLifetimePayWall(controller: String(describing: PlantsController.self))
                    case .saleTypeYearly_50:
                        MenuRouter(presenter: navigationController).presentYearPaywall(delegate: nil, controller: String(describing: PlantsController.self))
                    case .saleTypeCombo, .saleTypeComboFull:
                        if let currentPopUp = PreferencesManager.sharedManager.currentPopUp {
                            MenuRouter(presenter: navigationController).presentComboPaywall(popupType: currentPopUp, controller: String(describing: PlantsController.self))
                        }
                    case .saleTypeLongWeek, .saleTypeLongYear:
                        MenuRouter(presenter: navigationController).presentLongPaywall(isWeek: model.sale == .saleTypeLongWeek,  delegate: nil, controller: String(describing: ChooseIdentify.self))
                    case .saleTypeShortWeek, .saleTypeShortYear:
                        MenuRouter(presenter: navigationController).presentShortPaywall(isWeek: model.sale == .saleTypeShortWeek,  delegate: nil, controller: String(describing: ChooseIdentify.self))
                    default:
                        return
                    }
                } else {
                    PopUpRouter(presenter: navigationController).presentUniquePlant(tabBarController: tabBarController, delegate: self)
                }
            }
        }
    }
    
    @IBAction func actionSkipOnbording(_ sender: UIButton) {
        lottieView.stop()
        onboardingView.isHidden = true
    }
    
    @objc override func changeLanguageNotifications(_ notification: Notification) {
        super.changeLanguageNotifications(notification)
        setupLocalization()
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        
        guard let text = textField.text else { return }
        if text.count >= 3 {
            NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(self.liveSearch), object: nil)
            self.perform(#selector(self.liveSearch), with: nil, afterDelay: 1.0)
        }
    }
    
    @objc func textFieldDidTapped(_ textField: UITextField) {
        closeButton.isHidden = false
    }
    
    @objc func liveSearch() {
        AnalyticsHelper.sendFirebaseEvents(events: .explore_search)
        presenter.getPlants(search: searchTextField.text!)
    }
}

//----------------------------------------------
// MARK: - PlantsOutputProtocol
//----------------------------------------------

extension PlantsController: PaywallYearDelegate {
    func paywallYearClose(controller: PaywallYearController) {
        DispatchQueue.main.async {
            PopUpRouter(presenter: self.navigationController).presentUniquePlant(tabBarController: self.tabBarController, delegate: self)
        }
    }
}

//----------------------------------------------
// MARK: - PlantsOutputProtocol
//----------------------------------------------

extension PlantsController: PlantsOutputProtocol, GardenAddToPlaceDelegate {
    func gardenAddToPlaceSuccessAdd(controller: GardenAddToPlaceController) {
        AnalyticsHelper.sendFirebaseEvents(events: .add_to_garden)
        
        CongradsViewPresenter.showCongradsView()
    }
    
    func successFavorite(isFavorite: Bool, id: String) {
        isFavorite ? AnalyticsHelper.sendFirebaseEvents(events: .add_to_fav) : AnalyticsHelper.sendFirebaseEvents(events: .remove_from_fav)
        
        if let index = plants.firstIndex(where: {$0.id == id }) {
            plants[index].description.changeIsFavorite(isFavorite)
            collectionView.reloadItems(at: [IndexPath(row: index, section: 0)])
            if let countText = countLabel.text, let count = Int(countText) {
                var tempCount = 0
                tempCount = isFavorite ? count + 1 : count - 1
                favoriteView.isHidden = tempCount > 0 ? false : true
                countLabel.text = "\(tempCount)"
            }
        }
        
        presenter.updateMe()
    }
    
    func success(model: CatalogPlantsModel) {
       
        
        if model.getCatalogPlants.pagination.prevPageExist == false {
            plants = model.getCatalogPlants.plants
            setupAnimate()
        } else {
            plants.append(contentsOf: model.getCatalogPlants.plants)
        }
        
        if isNeedAnimate == false {
            topCollectionLayout.constant = plants.count > 8 ? 0 : 98
        }
        
        
        countLabel.text = "\(model.getCatalogPlants.totalFavorites)"
        favoriteView.isHidden = model.getCatalogPlants.totalFavorites != 0 ? false : true
        collectionView.reloadData()
        
    }
    
    func failure(error: String) {
        
    }
}

//----------------------------------------------
// MARK: - PopUniqePlanProtocol
//----------------------------------------------

extension PlantsController: PopUniqePlanProtocol {
    func dissmiss(controller: PopUniquePlantController, text: String) {
        AddCoverRouter(presenter: navigationController).presentAddCoverIdentifier(tabBarController: tabBarController, text: text, delegate: self)
    }
}

extension PlantsController: AddCoverIdentifierProtocol {
    func addCoverIdentifierGoToPlantName(controller: AddCoverIdentifierController) {
        PopUpRouter(presenter: navigationController).presentUniquePlant(tabBarController: tabBarController, delegate: self)
    }
}

//----------------------------------------------
// MARK: - PlantsDetailDelegate
//----------------------------------------------

extension PlantsController: PlantsDetailDelegate, WishListDelegate {
    func updatePlants() {
        presenter.getPlants(search: "")
    }
}

//----------------------------------------------
// MARK: - ChooseIdentifyDelegate
//----------------------------------------------

extension PlantsController: ChooseIdentifyDelegate {
    func didPressedAddUniquePlant() {
        PopUpRouter(presenter: navigationController).presentUniquePlant(tabBarController: tabBarController, delegate: self)
    }
}

//----------------------------------------------
// MARK: - UITextFieldDelegate
//----------------------------------------------

extension PlantsController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        upAnimate()
        
        if textField.text == searchText {
            textField.text = ""
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text?.count == 0 {
            textField.text = searchText
        }
    }
}

//----------------------------------------------
// MARK: - Animate
//----------------------------------------------

extension PlantsController {
    @objc func gestureSwipeUp()
    {
        upAnimate()
    }
    
    private func setupAnimate() {
        DispatchQueue.main.async {
            UIView.animate(withDuration: 0.7) {
                self.photoIconLayoutTop.constant = 80
                self.heightCollectionLayout.constant = 300
                
                self.view.layoutIfNeeded()
            }
        }
    }
    
    private func animatePhotoButton(isHidden: Bool) {
        photoButton.translatesAutoresizingMaskIntoConstraints = isHidden
        
        if isHidden {
            self.identifireLabel.isHidden = isHidden
            self.explorerLabel.isHidden = isHidden
            self.dividerImageView.isHidden = isHidden
        }
        
        UIView.animate(withDuration: 0.7) {
            self.navigationTralingToViewLayout.priority = UILayoutPriority(rawValue: isHidden ? 998 : 999)
            self.navigationTralingToPhoto.priority = UILayoutPriority(rawValue: isHidden ? 999 : 998)
            self.topCollectionLayout.priority = UILayoutPriority(rawValue: isHidden ? 999 : 998)
            self.heightCollectionLayout.priority = UILayoutPriority(rawValue: isHidden ? 998 : 999)
            self.uniqueViewBottomLayout.constant = isHidden ? 10.0 : -50.0
            
            self.view.layoutIfNeeded()
            
            self.blurEffectView.alpha = isHidden ? 1.0 : 0.0
            self.photoButton.transform = CGAffineTransform(scaleX: isHidden ? 0.32 : 1.0, y: isHidden ? 0.32 : 1.0)
            
            if isHidden {
                self.photoButton.center = self.buttonToThisView.center
            }
        } completion: { result in
            self.identifireLabel.isHidden = isHidden
            self.explorerLabel.isHidden = isHidden
            self.dividerImageView.isHidden = isHidden
        }
    }
    
    func upAnimate() {
        if isNeedAnimate {
            collectionView.isScrollEnabled = true
            debugPrint("animate up")
            AnalyticsHelper.sendFirebaseEvents(events: .explore_catalog)
            isNeedAnimate = false
            animatePhotoButton(isHidden: true)
        }
    }
    
    func downAnimate() {
        if !isNeedAnimate {
            collectionView.isScrollEnabled = false
            debugPrint("animate down")
            
            isNeedAnimate = true
            animatePhotoButton(isHidden: false)
            
            if searchTextField.isFirstResponder {
                searchTextField.resignFirstResponder()
                view.endEditing(true)
            }
            
            if !closeButton.isHidden {
                closeButton.isHidden = true
            }
            
            presenter.getPlants(search: "")
        }
    }
    
    func showBackToTop() {
        UIView.animate(withDuration: 0.7) {
            self.backToTopTrailingLayout.constant = -50.0
            
            self.view.layoutIfNeeded()
        }
    }
    
    func hideBackToTop() {
        UIView.animate(withDuration: 0.7) {
            self.backToTopTrailingLayout.constant = -84.0
            
            self.view.layoutIfNeeded()
        }
    }
}
