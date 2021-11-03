
import UIKit
import Kingfisher

class PlantsDetailController: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var aboutTitleLabel: UILabel!
    @IBOutlet weak var caresTitleLabel: UILabel!
    
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var addToGardenButton: UIButton!
    @IBOutlet weak var moreOnWikiButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet var aboutViews: [DetailAboutView]!
    @IBOutlet var caresViews: [DetailCaresView]!
    
    @IBOutlet var verticalStacks: [UIStackView]!
    @IBOutlet var separeteViews: [UIView]!
    @IBOutlet var middleLinesViews: [UIView]!
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var careView: UIView!
    @IBOutlet weak var topCareLayout: NSLayoutConstraint!
    @IBOutlet weak var aboutView: UIView!
    @IBOutlet weak var topAboutLayout: NSLayoutConstraint!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var favoriteStatusLabel: UILabel!
    @IBOutlet weak var favoriteStatusImage: UIImageView!
    @IBOutlet weak var favoriteStatusViewBottomLayout: NSLayoutConstraint!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private lazy var presenter = PlantsDetailPresenter(view: self)
    private var id: String
    private var isFavorite: Bool = false
    private var wikiUrl: String = ""
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(id: String) {
        self.id = id
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //----------------------------------------------
    // MARK: - Life Cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        transparentNavigationBar = true
        super.viewDidLoad()
        
        presenter.getPlantDetail(id: id)
        
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        scrollView.alpha = 1.0
        
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.topItem?.title = RLocalization.plant_detail_back.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        aboutTitleLabel.text = RLocalization.plant_detail_about.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        caresTitleLabel.text = RLocalization.plant_detail_cares.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        addToGardenButton.setTitle(RLocalization.plant_detail_add_to_my_garden.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        moreOnWikiButton.setTitle(RLocalization.plant_detail_more_on_wiki.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        addToGardenButton.layer.cornerRadius = 22
        
        favoriteButton.setTitle("", for: .normal)
        favoriteButton.layer.cornerRadius = 22
        favoriteButton.layer.borderWidth = 1
        favoriteButton.layer.borderColor = UIColor(rgb: 0xC36ED1).cgColor
        
        moreOnWikiButton.layer.cornerRadius = 22
        moreOnWikiButton.layer.borderWidth = 1
        moreOnWikiButton.layer.borderColor = UIColor(rgb: 0x7CDAA3).cgColor
    }
    
    private func updateFavoriteButton(isFavorite: Bool) {
        favoriteButton.setImage(UIImage(named: isFavorite ? "plants_detail_favorite_ic" : "plants_detail_no_favorite_ic"), for: .normal)
        favoriteButton.backgroundColor = isFavorite ? UIColor(rgb: 0xC36ED1) : .white
    }
    
    private func showFavoriteStatusView(isFavorite: Bool) {
        UIView.animate(withDuration: 0.5) {
            self.favoriteStatusViewBottomLayout.constant = 24.0
            self.view.layoutIfNeeded()
        }
        
        favoriteStatusLabel.text = isFavorite ? RLocalization.plant_detail_added_to_wishlist.localized(PreferencesManager.sharedManager.languageCode.rawValue) : RLocalization.plant_detail_removed_from_wishlist.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        favoriteStatusImage.image = UIImage(named: isFavorite ? "plants_detail_added_favorites_ic" : "plants_detail_removed_favorites_ic")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            UIView.animate(withDuration: 0.5) {
                self.favoriteStatusViewBottomLayout.constant = -85.0
                self.view.layoutIfNeeded()
            }
        }
    }
    
    @objc override func changeLanguageNotifications(_ notification: Notification) {
        super.changeLanguageNotifications(notification)
        updateLanguage()
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func plantFavoriteAction(_ sender: Any) {
        presenter.setFaviritePlant(id: id, isFavorite: !isFavorite)
    }
    
    @IBAction func addToGardenAction(_ sender: Any) {
        print("Add to garden ation")
    }
    
    @IBAction func wikiAction(_ sender: Any) {
        if let url = URL(string: wikiUrl) {
            UIApplication.shared.open(url)
        }
    }
}

//----------------------------------------------
// MARK: - PlantsDetailOutputProtocol
//----------------------------------------------

extension PlantsDetailController: PlantsDetailOutputProtocol {
    func success(model: FavoritePlantDataModel) {
        updateFavoriteButton(isFavorite: model.setFavoritePlantById)
        showFavoriteStatusView(isFavorite: model.setFavoritePlantById)
    }
    
    func success(model: PlantDataModel, abouts: [PlantsAboutType], cares: [(type: PlantsCareType, care: CaresModel)]) {
                
        mainImageView.kf.setImage(with: URL(string: model.plantById.mainImages.first?.urlIosFull ?? ""), options: [.transition(.fade(0.25))])
        
        nameLabel.text = model.plantById.names
        descriptionLabel.text = model.plantById.descriptionFull
        wikiUrl = model.plantById.wikiUrl ?? ""
        
        if abouts.count == 0 {
            aboutView.isHidden = true
            DispatchQueue.main.async {
                self.topAboutLayout.constant = -self.aboutView.frame.height
                self.view.layoutIfNeeded()
            }
            return
        }
        
        if let isFavorite = model.plantById.isFavourite {
            self.isFavorite = isFavorite
            updateFavoriteButton(isFavorite: isFavorite)
        }
        
        for view in aboutViews {
            view.isHidden = true
        }
        
        for index in 0..<abouts.count {
            if let about = abouts[safe: index],  let view = aboutViews[safe: index] {
                view.isHidden = false
                view.setup(about: about, model: model)
            }
        }
        
        if abouts.count < 3 {
            for index in 1...2 {
                separeteViews.first(where: {$0.tag == index})?.isHidden = true
            }
            
            for index in 1...3 {
                verticalStacks.first(where: {$0.tag == index})?.isHidden = true
            }
        }
        
        if abouts.count < 5 {
            separeteViews.first(where: {$0.tag == 1})?.isHidden = true
            
            for index in 2...3 {
                verticalStacks.first(where: {$0.tag == index})?.isHidden = true
            }
        }
        
        if abouts.count < 7 {
            separeteViews.first(where: {$0.tag == 2})?.isHidden = true
            verticalStacks.first(where: {$0.tag == 3})?.isHidden = true
        }
        
        switch abouts.count {
        case 1:
            middleLinesViews.first(where: {$0.tag == 0})?.isHidden = true
        case 3:
            middleLinesViews.first(where: {$0.tag == 1})?.isHidden = true
        case 5:
            middleLinesViews.first(where: {$0.tag == 2})?.isHidden = true
        case 7:
            middleLinesViews.first(where: {$0.tag == 3})?.isHidden = true
        default: break
        }
        
        for view in caresViews {
            view.isHidden = true
        }
        
        for index in 0..<cares.count {
            if let care = cares[safe: index], let view = caresViews[safe: index] {
                view.isHidden = false
                view.setup(care: care)
            }
        }
        
        if cares.count == 0 {
            careView.isHidden = true
            DispatchQueue.main.async {
                self.topCareLayout.constant = -self.careView.frame.height
                self.view.layoutIfNeeded()
            }
            return
        }
        
        UIView.animate(withDuration: 0.3) { [weak self] in
            self?.scrollView.alpha  = 1.0
        }
    }
    
    func failure(error: String) {
        
    }
}

extension PlantsDetailController {
    private func updateLanguage() {
        setup()
    }
}
