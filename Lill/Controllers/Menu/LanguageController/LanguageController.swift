//
//  LanguageController.swift
//  Lill
//
//  Created by Andrey S on 02.11.2021.
//

import UIKit

enum LanguageType: String {
    case english = "en"
    case spanish = "es"
    
    var codes: String {
        switch self {
        case .english:
            return "Eng"
        case .spanish:
            return "Esp"
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
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        
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
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier) as? LanguageCell else { return UITableViewCell() }
        
        if indexPath.row == 0 {
            cell.languageLabel.text = "English"
            cell.accessoryType = PreferencesManager.sharedManager.languageCode == .english ? UITableViewCell.AccessoryType.checkmark : UITableViewCell.AccessoryType.none
        } else {
            cell.languageLabel.text = "Spanish"
            cell.accessoryType = PreferencesManager.sharedManager.languageCode == .spanish ? UITableViewCell.AccessoryType.checkmark : UITableViewCell.AccessoryType.none
        }
        
        return cell
        
    }
}


//----------------------------------------------
// MARK: - UITableViewDelegate
//----------------------------------------------

extension LanguageController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            PreferencesManager.sharedManager.languageCode = .english
        case 1:
            PreferencesManager.sharedManager.languageCode = .spanish
        default:
            break
        }
        
        NotificationCenter.default.post(name: Constants.Notifications.languageChangeNotifications,
                                        object: self,
                                        userInfo: nil)
        
        tableView.reloadData()
    }
}
