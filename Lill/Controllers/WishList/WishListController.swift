
import UIKit

protocol WishListDelegate: AnyObject {
    func updatePlants()
}

class WishListController: BaseController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var noDataImage: UIImageView!
    @IBOutlet weak var noDataLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------
    
    let cellIdentifier = String(describing: PlantCollectionCell.self)
    var wishList = [PlantsModel]()
    lazy var presenter = WishListPresenter(view: self)
    weak var delegate: WishListDelegate?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(delegate: WishListDelegate) {
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
        transparentNavigationBar = true
        super.viewDidLoad()
        
        presenter.getWishList()
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    private func setup() {
        let backButton = UIBarButtonItem()
        backButton.title = RLocalization.wish_list_back.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        
        navigationItem.title = RLocalization.wish_list_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        noDataLabel.text = RLocalization.wish_list_no_data.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        collectionView.register(UINib.init(nibName: cellIdentifier,
                                           bundle: nil),
                                forCellWithReuseIdentifier: cellIdentifier)
        
        collectionView.reloadData()
    }
}

//----------------------------------------------
// MARK: - PlantsOutputProtocol, GardenAddToPlaceDelegate
//----------------------------------------------

extension WishListController: WishListOutputProtocol, GardenAddToPlaceDelegate {
    func gardenAddToPlaceSuccessAdd(controller: GardenAddToPlaceController) {
        CongradsViewPresenter.showCongradsView()
    }
    
    func successGetWishList(model: CatalogPlantsModel) {
        wishList = model.getCatalogPlants.plants
        
        noDataImage.isHidden = wishList.count > 0 ? true : false
        noDataLabel.isHidden = wishList.count > 0 ? true : false
        
        collectionView.reloadData()
    }
    
    func succesRemoveFromFavorite() {
        presenter.getWishList()
        delegate?.updatePlants()
    }
    
    func failure(error: String) {
        noDataImage.isHidden = false
        noDataLabel.isHidden = false
    }
}
