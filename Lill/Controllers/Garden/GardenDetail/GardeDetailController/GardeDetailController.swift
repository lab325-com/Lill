//
//  GardeDetailController.swift
//  Lill
//
//  Created by Andrey S on 16.11.2021.
//

import UIKit
import Kingfisher

//protocol GardenDetailPresenter: AnyObject {
//    func gardeDetailChangeName(con)
//}

class GardeDetailController: BaseController {

    var kTableHeaderHeight:CGFloat = 250.0
    var headerView: UIView!
    private let cellTitleIdentifier = "GardenDetailTitleCell"
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
    
    
    
    
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var bellButton: UIButton!
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet var topCaresViews: [DetailCaresView]!
    
    @IBOutlet weak var caresTitleLabel: UILabel!
    
    @IBOutlet weak var careView: UIView!
    @IBOutlet weak var topCareLayout: NSLayoutConstraint!
    
    @IBOutlet weak var aboutView: UIView!
    @IBOutlet weak var topAboutLayout: NSLayoutConstraint!
    
    @IBOutlet var aboutViews: [DetailAboutView]!
    @IBOutlet var caresViews: [DetailCaresView]!
    
    @IBOutlet var verticalStacks: [UIStackView]!
    @IBOutlet var separeteViews: [UIView]!
    @IBOutlet var middleLinesViews: [UIView]!
    
    @IBOutlet weak var moreOnWikiButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private lazy var presenter = GardenDetailPresenter(view: self)
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
        
        scrollView.alpha = 0.0
        presenter.getDetailGarden(gardenId: id)
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        tableView.rowHeight = UITableView.automaticDimension
        
        headerView = tableView.tableHeaderView
        tableView.tableHeaderView = nil
        tableView.addSubview(headerView)
        tableView.contentInset = UIEdgeInsets(top: kTableHeaderHeight, left: 0, bottom: 0, right: 0)
        tableView.contentOffset = CGPoint(x: 0, y: -kTableHeaderHeight)
        updateHeaderView()
        
        tableView.register(UINib(nibName: cellTitleIdentifier, bundle: nil), forCellReuseIdentifier: cellTitleIdentifier)
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        
        
        bellButton.setTitle("", for: .normal)
        navigationController?.navigationBar.tintColor = UIColor.white
        
        moreOnWikiButton.setTitle(RLocalization.plant_detail_more_on_wiki.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        caresTitleLabel.text = RLocalization.plant_detail_cares.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        moreOnWikiButton.layer.cornerRadius = 22
        moreOnWikiButton.layer.borderWidth = 1
        moreOnWikiButton.layer.borderColor = UIColor(rgb: 0x7CDAA3).cgColor
        
        
        let dots = UIBarButtonItem(image: RImage.plants_dots_ic(), style: .plain, target: self, action: #selector(editTapped))
        navigationItem.rightBarButtonItems = [dots]
    }
    
    @objc override func changeLanguageNotifications(_ notification: Notification) {
        super.changeLanguageNotifications(notification)
        updateLanguage()
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        updateHeaderView()
    }
    
    
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
    func updateHeaderView() {
        
        var headerRect = CGRect(x: 0, y: -kTableHeaderHeight, width: tableView.bounds.width, height: kTableHeaderHeight)
        if tableView.contentOffset.y < -kTableHeaderHeight {
            headerRect.origin.y = tableView.contentOffset.y
            headerRect.size.height = -tableView.contentOffset.y
        }
        
        headerView.frame = headerRect
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func wikiAction(_ sender: Any) {
        if let url = URL(string: wikiUrl) {
            UIApplication.shared.open(url)
        }
    }
    
    @objc func editTapped() {
        
        let title = RLocalization.action_edit_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        let changeNameTitle = RLocalization.action_edit_change_name.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        let addPhotoTitle = RLocalization.action_edit_add_photo.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        let editTitle = RLocalization.action_edit_care_plan.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        let cloneTitle = RLocalization.action_edit_clone_plant.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        let deleteTitle = RLocalization.action_edit_delete_plant.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        let cancel = RLocalization.action_edit_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        let alert = UIAlertController(title: title, message: nil, preferredStyle: UIAlertController.Style.actionSheet)
        
        let changeName = UIAlertAction(title: changeNameTitle, style: .default) { [weak self] (action: UIAlertAction) in
            guard let `self` = self else { return }
            
            PopUpRouter(presenter: self.navigationController).presentPopChangeName(delegate: self, text: self.presenter.model?.gardenPlantById.name, plantID: self.id)
        }
        
        let addPhoto = UIAlertAction(title: addPhotoTitle, style: .default) { (action: UIAlertAction) in
            // Code to unfollow
        }
        
        let editCarePlan = UIAlertAction(title: editTitle, style: .default) { (action: UIAlertAction) in
            // Code to unfollow
        }
        
        let clonePlant = UIAlertAction(title: cloneTitle, style: .default) { (action: UIAlertAction) in
            // Code to unfollow
        }
        
        let deletePlant = UIAlertAction(title: deleteTitle, style: .destructive) { (action: UIAlertAction) in
            // Code to unfollow
        }
        
        let cancelAction = UIAlertAction(title: cancel, style: .cancel, handler: nil)
        
        alert.addAction(changeName)
        alert.addAction(addPhoto)
        alert.addAction(editCarePlan)
        alert.addAction(clonePlant)
        alert.addAction(deletePlant)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
}

//----------------------------------------------
// MARK: - PlantsDetailOutputProtocol
//----------------------------------------------

extension GardeDetailController: GardenDetailOutputProtocol {
    func success(model: GardenPlanByIDModel, abouts: [PlantsAboutType], cares: [(type: PlantsCareType, care: GardenShortPlantCaresModel)]) {
                
        mainImageView.kf.setImage(with: URL(string: model.gardenPlantById.userMainImage?.urlIosFull ?? ""), placeholder: RImage.placeholder_big_ic(), options: [.transition(.fade(0.25))])

       
        wikiUrl = model.gardenPlantById.plant?.wikiUrl ?? ""

        UIView.animate(withDuration: 0.3) { [weak self] in
            self?.scrollView.alpha  = 1.0
        }
        
        if abouts.count == 0 {
            aboutView.isHidden = true
            DispatchQueue.main.async {
                self.topAboutLayout.constant = -self.aboutView.frame.height
                self.view.layoutIfNeeded()
            }
        } else {
            
            for view in aboutViews {
                view.isHidden = true
            }
            
            for index in 0..<abouts.count {
                if let about = abouts[safe: index],  let view = aboutViews[safe: index] {
                    view.isHidden = false
                    view.setup(about: about, model: model.gardenPlantById.plant?.climate)
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
        }
        
        for view in caresViews {
            view.isHidden = true
        }

        for view in topCaresViews {
            view.isHidden = true
        }
        
        for index in 0..<cares.count {
            if let care = cares[safe: index],
               let view = caresViews[safe: index],
               let topView = topCaresViews[safe:index] {
                topView.isHidden = false
                topView.setupWithDate(care: care)
                
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
        }
    }
    
    func failure(error: String) {
        
    }
}

extension GardeDetailController {
    private func updateLanguage() {
        setup()
    }
}

//----------------------------------------------
// MARK: - PopChangeNameProtocol
//----------------------------------------------

extension GardeDetailController: PopChangeNameProtocol {
    func dissmiss(controller: PopChangeNameController, text: String) {
        nameLabel.text = text
    }
}

extension GardeDetailController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellTitleIdentifier) as? GardenDetailTitleCell else { return UITableViewCell() }
        
        if let model = presenter.model, let cares = presenter.cares {
            cell.setupCell(model: model, cares: cares)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            tableView.bringSubviewToFront(cell)
        }
    }
}
