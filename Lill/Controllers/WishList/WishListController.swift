
import UIKit

class WishListController: BaseController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var noDataImage: UIImageView!
    @IBOutlet weak var noDataLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    
    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------
    
    let cellIdentifier = String(describing: PlantCollectionCell.self)
    var wishList = [PlantsModel]()
    lazy var presenter = WishListPresenter(view: self)
    
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
        backButton.title = RLocalization.wish_list_back()
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        
        navigationItem.title = RLocalization.wish_list_title()
        
        noDataLabel.text = RLocalization.wish_list_no_data()
        
        collectionView.register(UINib.init(nibName: cellIdentifier,
                                           bundle: nil),
                                forCellWithReuseIdentifier: cellIdentifier)
        
        collectionView.reloadData()
    }
}

//----------------------------------------------
// MARK: - PlantsOutputProtocol
//----------------------------------------------

extension WishListController: WishListOutputProtocol {
    func successGetWishList(model: CatalogPlantsModel) {
        wishList = model.getCatalogPlants.plants
        
        noDataImage.isHidden = wishList.count > 0 ? true : false
        noDataLabel.isHidden = wishList.count > 0 ? true : false
        
        collectionView.reloadData()
    }
    
    func succesRemoveFromFavorite() {
        presenter.getWishList()
    }
    
    func successAddToGarden() {
        CongradsViewPresenter.showCongradsView(textSubtitle: RLocalization.add_plants_success.localized(PreferencesManager.sharedManager.languageCode.rawValue))
    }
    
    func failure(error: String) {
        noDataImage.isHidden = false
        noDataLabel.isHidden = false
    }
}
