//
//  MenuController+TableView.swift
//  Lill
//
//  Created by Andrew Bilohorodskiy on 22.10.2021.
//

import UIKit

extension MenuController: UITableViewDelegate {
    
}

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
            return "account".uppercased()
        case .archive:
            return  "archive".uppercased()
        case .settings:
            return "settings".uppercased()
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
