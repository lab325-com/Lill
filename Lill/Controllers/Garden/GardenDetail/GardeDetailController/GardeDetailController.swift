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
    
    private var id: String
    
    private var kTableHeaderHeight:CGFloat = 300.0
    private var headerView: UIView!
    
    //----------------------------------------------
    // MARK: - Global property
    //----------------------------------------------
    
    let cellTitleIdentifier = "GardenDetailTitleCell"
    let cellSegmentIdentifier = "GardenDetailSegmentCell"
    let cellAboutIdentifier = "GardenDetailAboutCell"
    let cellCaresIdentifier = "GardenDetailCaresCell"
    let cellEditIdentifier = "GardenDetailEditCareCell"
    let cellScheldureIdentifier = "GardenDetailScheduleCell"
    let cellAllWaitingIdentifier = "GardenDetailAllWaitingCell"
    
    var wikiUrl: String = ""
    var selectedTag = 0
    
    lazy var presenter = GardenDetailPresenter(view: self)
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
        tableView.register(UINib(nibName: cellEditIdentifier, bundle: nil), forCellReuseIdentifier: cellEditIdentifier)
        tableView.register(UINib(nibName: cellScheldureIdentifier, bundle: nil), forCellReuseIdentifier: cellScheldureIdentifier)
        tableView.register(UINib(nibName: cellAllWaitingIdentifier, bundle: nil), forCellReuseIdentifier: cellAllWaitingIdentifier)
        
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
    
    func updateHeaderView() {
        
        var headerRect = CGRect(x: 0, y: -kTableHeaderHeight, width: tableView.bounds.width, height: kTableHeaderHeight)
        if tableView.contentOffset.y < -kTableHeaderHeight {
            headerRect.origin.y = tableView.contentOffset.y
            headerRect.size.height = -tableView.contentOffset.y
        }
        
        headerView.frame = headerRect
    }
}

//----------------------------------------------
// MARK: - PlantsDetailOutputProtocol
//----------------------------------------------

extension GardeDetailController: GardenDetailOutputProtocol {
    func success() {
        if presenter.about.count == 0 && presenter.cares.count != 0 {
            selectedTag = 1
        }
        
        tableView.reloadData()
        topImageView.kf.setImage(with: URL(string: presenter.model?.gardenPlantById.userMainImage?.urlIosFull ?? ""), placeholder: RImage.placeholder_big_ic(), options: [.transition(.fade(0.25))])
        
        wikiUrl = presenter.model?.gardenPlantById.plant?.wikiUrl ?? ""

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
