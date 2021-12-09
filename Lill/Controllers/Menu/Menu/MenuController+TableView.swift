//
//  MenuController+TableView.swift
//  Lill
//
//  Created by Andrew Bilohorodskiy on 22.10.2021.
//

import UIKit

//----------------------------------------------
// MARK: - UITableViewDataSource
//----------------------------------------------

extension MenuController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.presenter.menuItems.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.presenter.menuItems[section].items.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch (self.presenter.menuItems[section].type) {
        case .account:
            return RLocalization.menu_account.localized(PreferencesManager.sharedManager.languageCode.rawValue).uppercased()
        case .archive:
            return  RLocalization.menu_section_archive_title.localized(PreferencesManager.sharedManager.languageCode.rawValue).uppercased()
        case .settings:
            return RLocalization.menu_section_settings_title.localized(PreferencesManager.sharedManager.languageCode.rawValue).uppercased()
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        header.tintColor = .clear
        header.textLabel?.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        header.textLabel?.textColor = UIColor(red: 60, green: 60, blue: 67).withAlphaComponent(0.6)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowType = self.presenter.menuItems[indexPath.section].items[indexPath.row].type
        if rowType == .accountInfo {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: self.menuAccountIdentifire) as? MenuAccauntInfoTableViewCell else { return UITableViewCell() }
            cell.setup(model: self.meModel)
            return cell
        } else{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: self.menuItemIdentifire) as? MenuItemTableViewCell else { return UITableViewCell() }
            cell.setup(type: rowType, with: self.meModel)
            return cell
        }
    }
}

//----------------------------------------------
// MARK: - UITableViewDelegate
//----------------------------------------------

extension MenuController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let itemType  = self.presenter.menuItems[indexPath.section].items[indexPath.row].type
        switch(itemType){
        case .accountInfo:
            AnalyticsHelper.sendFirebaseEvents(events: .menu_log_out)
            
            
            let title = RLocalization.allert_logout_message.localized(PreferencesManager.sharedManager.languageCode.rawValue)
            let yesText = RLocalization.allert_yes.localized(PreferencesManager.sharedManager.languageCode.rawValue)
            let noText = RLocalization.allert_no.localized(PreferencesManager.sharedManager.languageCode.rawValue)
            
            let alert = UIAlertController(title: "Lill", message: title, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: yesText, style: .default, handler: { action in
                MenuRouter(presenter: self.navigationController).logOut()
            }))
            
            alert.addAction(UIAlertAction(title: noText, style: .cancel, handler: { action in
                
            }))
            
            self.present(alert, animated: true, completion: nil)
        case .recognized:
            AnalyticsHelper.sendFirebaseEvents(events: .menu_recognize)
            MenuRouter(presenter: self.navigationController).pushRecognizedArchive()
        case .disease:
            AnalyticsHelper.sendFirebaseEvents(events: .menu_disease)
            MenuRouter(presenter: self.navigationController).pushDiseaseArchive()
        case .lang:
            AnalyticsHelper.sendFirebaseEvents(events: .menu_language)
            MenuRouter(presenter: self.navigationController).pushLanguage()
        case .privacyPolice:
            AnalyticsHelper.sendFirebaseEvents(events: .menu_privacy)
            if let url = URL(string: "https://www.hackingwithswift.com") {
                UIApplication.shared.open(url)
            }
        case .terms:
            AnalyticsHelper.sendFirebaseEvents(events: .menu_terms)
            if let url = URL(string: "https://www.hackingwithswift.com") {
                UIApplication.shared.open(url)
            }
        case .rate:
            AnalyticsHelper.sendFirebaseEvents(events: .menu_rate_app)
            if let url = URL(string: "itms-apps://itunes.apple.com/app/" + "id1586099684") { ///ID => 1586099684
                if #available(iOS 10, *) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    
                } else {
                    UIApplication.shared.openURL(url)
                }
            }
        case .share:
            AnalyticsHelper.sendFirebaseEvents(events: .menu_invite_friends)
            if let url = URL(string: "https://apps.apple.com/ru/app/telegram/id686449807") {
                SharingManager.sharedManager.sendSharingLink(url: url, controller: self)
            }
        case .subscriptions:
            AnalyticsHelper.sendFirebaseEvents(events: .menu_subscription)
            MenuRouter(presenter: navigationController).presentSubscription()
        }
    }
}
