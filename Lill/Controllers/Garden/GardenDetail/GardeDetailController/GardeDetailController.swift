//
//  GardeDetailController.swift
//  Lill
//
//  Created by Andrey S on 16.11.2021.
//

import UIKit
import Kingfisher
import SwiftUI

protocol GardenDetailProtocolo: AnyObject {
    func gardenDetailChangeName(controller: GardeDetailController, text: String, id: String)
}

class GardeDetailController: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var topImageView: UIImageView!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private lazy var presenter = GardenDetailPresenter(view: self)
    private var id: String
    private var wikiUrl: String = ""
    private var kTableHeaderHeight:CGFloat = 300.0
    private var headerView: UIView!
    
    private let cellTitleIdentifier = "GardenDetailTitleCell"
    private let cellSegmentIdentifier = "GardenDetailSegmentCell"
    private let cellAboutIdentifier = "GardenDetailAboutCell"
    private let cellCaresIdentifier = "GardenDetailCaresCell"
    
    weak var delegate: GardenDetailProtocolo?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(id: String, delegate: GardenDetailProtocolo) {
        self.id = id
        self.delegate = delegate
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
        
        tableView.alpha = 0.0
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
        
        tableView.register(UINib(nibName: cellCaresIdentifier, bundle: nil), forCellReuseIdentifier: cellCaresIdentifier)
        tableView.register(UINib(nibName: cellAboutIdentifier, bundle: nil), forCellReuseIdentifier: cellAboutIdentifier)
        tableView.register(UINib(nibName: cellTitleIdentifier, bundle: nil), forCellReuseIdentifier: cellTitleIdentifier)
        tableView.register(UINib(nibName: cellSegmentIdentifier, bundle: nil), forCellReuseIdentifier: cellSegmentIdentifier)
        
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        
        navigationController?.navigationBar.tintColor = UIColor.white
        
        let dots = UIBarButtonItem(image: RImage.plants_dots_ic(), style: .plain, target: self, action: #selector(editTapped))
        navigationItem.rightBarButtonItems = [dots]
    }
    
    @objc override func changeLanguageNotifications(_ notification: Notification) {
        super.changeLanguageNotifications(notification)
        updateLanguage()
    }
    
    private func updateHeaderView() {
        
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
}

//----------------------------------------------
// MARK: - PlantsDetailOutputProtocol
//----------------------------------------------

extension GardeDetailController: GardenDetailOutputProtocol {
    func success(model: GardenPlanByIDModel, abouts: [PlantsAboutType], cares: [(type: PlantsCareType, care: GardenShortPlantCaresModel)]) {
        tableView.reloadData()
        topImageView.kf.setImage(with: URL(string: model.gardenPlantById.userMainImage?.urlIosFull ?? ""), placeholder: RImage.placeholder_big_ic(), options: [.transition(.fade(0.25))])
        
        wikiUrl = model.gardenPlantById.plant?.wikiUrl ?? ""

        UIView.animate(withDuration: 0.3) { [weak self] in
            self?.tableView.alpha  = 1.0
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
        presenter.model?.gardenPlantById.changeName(text)
        tableView.reloadData()
        delegate?.gardenDetailChangeName(controller: self, text: text, id: id)
    }
}

//----------------------------------------------
// MARK: - UITableViewDataSource, UITableViewDelegate
//----------------------------------------------

extension GardeDetailController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = 1
        
        if presenter.about.count != 0 {
            count += 2
        }
        
        if presenter.cares.count != 0 {
            count += 1
        }
        
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellTitleIdentifier) as? GardenDetailTitleCell else { return UITableViewCell() }
            
            if let model = presenter.model {
                cell.setupCell(model: model, cares: presenter.cares)
            }
            return cell
        case 1:
            if presenter.about.count != 0 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellSegmentIdentifier) as? GardenDetailSegmentCell else { return UITableViewCell() }
                
                return cell
            } else {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellCaresIdentifier) as? GardenDetailCaresCell else { return UITableViewCell() }
                
                if let model = presenter.model {
                    cell.setupCell(model: model, cares: presenter.cares)
                }
                
                return cell
            }
        case 2:
            if presenter.about.count != 0 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellAboutIdentifier) as? GardenDetailAboutCell else { return UITableViewCell() }
                
                if let model = presenter.model {
                    cell.setupCell(model: model, abouts: presenter.about)
                }
                
                return cell
            } else {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellCaresIdentifier) as? GardenDetailCaresCell else { return UITableViewCell() }
                
                if let model = presenter.model {
                    cell.setupCell(model: model, cares: presenter.cares)
                }
                
                return cell
            }
        
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellCaresIdentifier) as? GardenDetailCaresCell else { return UITableViewCell() }
            
            if let model = presenter.model {
                cell.setupCell(model: model, cares: presenter.cares)
            }
            
            return cell
            
        default:
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            tableView.bringSubviewToFront(cell)
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        updateHeaderView()
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

//----------------------------------------------
// MARK: - Editable
//----------------------------------------------

extension GardeDetailController {
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
