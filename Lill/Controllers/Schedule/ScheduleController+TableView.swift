//
//  ScheduleController+TableView.swift
//  Lill
//
//  Created by Andrey S on 23.11.2021.
//

import Foundation
import UIKit

extension ScheduleController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellScheduleIdentifier) as? ScheduleCell else { return UITableViewCell() }
        
        cell.setupCell(needCornerBottom: indexSelected.contains(indexPath.row))
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexSelected.contains(indexPath.row) {
            indexSelected.remove(indexPath.row)
        } else {
            indexSelected.insert(indexPath.row)
        }
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}
