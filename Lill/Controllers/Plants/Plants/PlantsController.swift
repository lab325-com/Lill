
import UIKit
import AppTrackingTransparency
import FBSDKCoreKit

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
    
    @IBOutlet weak var buttonToThisView: UIView!
    @IBOutlet weak var identifireLabel: UILabel!
    @IBOutlet weak var explorerLabel: UILabel!
    @IBOutlet weak var favoriteView: UIView!
    @IBOutlet weak var uniquePlantView: UIView!
    
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var wishListButton: UIButton!
    @IBOutlet weak var backToTopButton: UIButton!
    @IBOutlet weak var uniquePlantButton: UIButton!
    
    @IBOutlet weak var dividerImageView: UIImageView!
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var uniquePlantLabel: UILabel!
    
    @IBOutlet weak var searchTextField: UITextField!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    let searchText = RLocalization.plants_search()
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
        super.viewDidLoad()
        
        AnalyticsHelper.sendFirebaseEvents(events: .main_screen_open)
        askTrackingTransparency()
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
        navigationItem.title = RLocalization.plant_detail_back.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        identifireLabel.text = RLocalization.plants_identifier()
        explorerLabel.text = RLocalization.plants_explore()
        uniquePlantLabel.text = RLocalization.plants_uniquePlantLabel()
        
        searchTextField.text = searchText
        searchTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
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
        backToTopButton.setTitle(RLocalization.plants_backToTop(), for: .normal)
        uniquePlantButton.setTitle(RLocalization.plants_uniquePlantButton(), for: .normal)
        
        collectionView.register(UINib.init(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
        collectionView.contentInset.bottom = 54
        collectionView.reloadData()
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
        AnalyticsHelper.sendFirebaseEvents(events: .explore_photo)
        PlantsRouter(presenter: navigationController).presentChooseIdentify()
    }
    
    @IBAction func actionBackToTop(_ sender: UIButton) {
        if plants.count > 0 {
            collectionView.scrollToItem(at: IndexPath(row: 0, section: 0), at: .top, animated: true)
            collectionView.reloadData()
        }
    }
    
    @IBAction func actionAddUnique(_ sender: UIButton) {
        PopUpRouter(presenter: navigationController).presentUniquePlant(tabBarController: tabBarController, delegate: self)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        
        guard let text = textField.text else { return }
        if text.count >= 3 {
            NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(self.liveSearch), object: nil)
            self.perform(#selector(self.liveSearch), with: nil, afterDelay: 1.0)
        }
        
        if text.count >= 1 {
            closeButton.isHidden = false
        } else {
            closeButton.isHidden = true
        }
    }
    
    @objc func liveSearch() {
        AnalyticsHelper.sendFirebaseEvents(events: .explore_search)
        presenter.getPlants(search: searchTextField.text!)
    }
    
    private func askTrackingTransparency() {
        if #available(iOS 14, *) {
            if ATTrackingManager.trackingAuthorizationStatus != .authorized && ATTrackingManager.trackingAuthorizationStatus != .denied {
                ATTrackingManager.requestTrackingAuthorization {  status in
                    switch status {
                    case .authorized:
                        Settings.isAdvertiserIDCollectionEnabled = true
                        break
                    case .denied:
                        Settings.isAdvertiserIDCollectionEnabled = false
                        break
                    case .notDetermined:
                        // Tracking authorization dialog has not been shown
                        print("Not Determined")
                    case .restricted:
                        Settings.isAdvertiserIDCollectionEnabled = false
                        print("Restricted")
                    @unknown default:
                        print("Unknown")
                    }
                    
                }
            }
        } else {
            
        }
    }
}

//----------------------------------------------
// MARK: - PlantsOutputProtocol
//----------------------------------------------

extension PlantsController: PlantsOutputProtocol {
    func successAddToGarden() {
        AnalyticsHelper.sendFirebaseEvents(events: .add_to_garden)
        
        CongradsViewPresenter.showCongradsView(textSubtitle: RLocalization.add_plants_success.localized(PreferencesManager.sharedManager.languageCode.rawValue))
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
    }
    
    func success(model: CatalogPlantsModel) {
        if model.getCatalogPlants.pagination.prevPageExist == false {
            plants = model.getCatalogPlants.plants
            setupAnimate()
        } else {
            plants.append(contentsOf: model.getCatalogPlants.plants)
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
        
        UIView.animate(withDuration: 0.7) {
            self.navigationTralingToViewLayout.priority = UILayoutPriority(rawValue: isHidden ? 998 : 999)
            self.navigationTralingToPhoto.priority = UILayoutPriority(rawValue: isHidden ? 999 : 998)
            self.topCollectionLayout.priority = UILayoutPriority(rawValue: isHidden ? 999 : 998)
            self.heightCollectionLayout.priority = UILayoutPriority(rawValue: isHidden ? 998 : 999)
            self.uniqueViewBottomLayout.constant = isHidden ? 8.0 : -50.0
            
            self.view.layoutIfNeeded()
            
            self.photoButton.transform = CGAffineTransform(scaleX: isHidden ? 0.23 : 1.0, y: isHidden ? 0.23 : 1.0)
            self.identifireLabel.isHidden = isHidden
            self.explorerLabel.isHidden = isHidden
            self.dividerImageView.isHidden = isHidden

            if isHidden {
                self.photoButton.center = self.buttonToThisView.center
            }
        }
    }
    
    func upAnimate() {
        if isNeedAnimate {
            debugPrint("animate")
            AnalyticsHelper.sendFirebaseEvents(events: .explore_catalog)
            isNeedAnimate = false
            animatePhotoButton(isHidden: true)
        }
    }
    
    func downAnimate() {
        if !isNeedAnimate {
            debugPrint("animate")
            
            isNeedAnimate = true
            animatePhotoButton(isHidden: false)
            
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
