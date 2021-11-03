
import UIKit

class WishListController: BaseController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var noDataImage: UIImageView!
    @IBOutlet weak var noDataLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private lazy var presenter = WishListPresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------
    
    let cellIdentifier = String(describing: PlantCollectionCell.self)
    var wishList = [PlantsModel]()
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        transparentNavigationBar = true
        super.viewDidLoad()
        
        
        
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    private func setup() {
        presenter.getWishList()
        
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
    func success(model: CatalogPlantsModel) {
        wishList = model.getCatalogPlants.plants
        if wishList.count > 0 {
            noDataImage.isHidden = true
            noDataLabel.isHidden = true
        } else {
            noDataImage.isHidden = false
            noDataLabel.isHidden = false
        }
        collectionView.reloadData()
    }
    
    func failure(error: String) {
        noDataImage.isHidden = false
        noDataLabel.isHidden = false
    }
}
