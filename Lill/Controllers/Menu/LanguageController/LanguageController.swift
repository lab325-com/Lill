//
//  LanguageController.swift
//  Lill
//
//  Created by mob325 on 02.11.2021.
//

import UIKit
import Apollo

enum LanguageType: String {
    case english = "en"
    case spanish = "es"
    case russian = "ru"
    
    var codes: String {
        switch self {
        case .english:
            return "Eng"
        case .spanish:
            return "Esp"
        case .russian:
            return "Rus"
        }
    }
}

class LanguageController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------

    @IBOutlet weak var tableView: UITableView!
    
    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    
    let cellIdentifier = "LanguageCell"
    var titleText: String {
        return RLocalization.menu_laguage_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
    }
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = false
        colorTitleNavigation = UIColor.black
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        navigationItem.title = titleText
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.sectionHeaderHeight = 34
        tableView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
    
    @objc override func changeLanguageNotifications(_ notification: Notification) {
        super.changeLanguageNotifications(notification)
    }
}

//----------------------------------------------
// MARK: - UITableViewDataSource
//----------------------------------------------

extension LanguageController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier) as? LanguageCell else { return UITableViewCell() }
        
        if indexPath.row == 0 {
            cell.languageLabel.text = "English"
            cell.languageSubLabel.text = "English"
            cell.accessoryType = PreferencesManager.sharedManager.languageCode == .english ? UITableViewCell.AccessoryType.checkmark : UITableViewCell.AccessoryType.none
        } else if indexPath.row == 1 {
            cell.languageLabel.text = "Spanish"
            cell.languageSubLabel.text = "Español"
            cell.accessoryType = PreferencesManager.sharedManager.languageCode == .spanish ? UITableViewCell.AccessoryType.checkmark : UITableViewCell.AccessoryType.none
        } else {
            cell.languageLabel.text = "Russian"
            cell.languageSubLabel.text = "Русский"
            cell.accessoryType = PreferencesManager.sharedManager.languageCode == .russian ? UITableViewCell.AccessoryType.checkmark : UITableViewCell.AccessoryType.none
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return RLocalization.menu_language_header.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
        
        return nil
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        header.tintColor = .clear
        header.textLabel?.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        header.textLabel?.textColor = UIColor(red: 60, green: 60, blue: 67).withAlphaComponent(0.6)
    }
}


//----------------------------------------------
// MARK: - UITableViewDelegate
//----------------------------------------------

extension LanguageController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        var primaryLanguageId = 0
        switch indexPath.row {
        case 0:
            PreferencesManager.sharedManager.languageCode = .english
            primaryLanguageId = 1
        case 1:
            PreferencesManager.sharedManager.languageCode = .spanish
            primaryLanguageId = 2
        case 2:
            PreferencesManager.sharedManager.languageCode = .russian
            primaryLanguageId = 3
        default:
            break
        }
        
        let mutation = ProfileUpdateMutation(record: ProfileUpdateInput(primaryLanguageId: primaryLanguageId))
        let _ = Network.shared.mutation(model: ProfileUpdateDataModel.self, mutation, controller: self) { model in
            print(model.profileUpdate.id)
        } failureHandler: { error in
            print(error.localizedDescription)
        }
        
        NotificationCenter.default.post(name: Constants.Notifications.languageChangeNotifications,
                                        object: self,
                                        userInfo: nil)
        
        tableView.reloadData()
        navigationItem.title = titleText
    }
}
