
import Foundation
import UIKit

//----------------------------------------------
// MARK: - UITableViewDataSource, UITableViewDelegate
//----------------------------------------------

extension GardenPlantCaresEdit: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.plantCares.count > 0 ? presenter.plantCares.count + 2 : 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if presenter.plantCares.count > 0 {
            switch indexPath.row {
            case 0:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellCareInfoIdentifier) as? CareInfoCell else { return UITableViewCell() }
                cell.setupCell(infoLabel: "Turn on/off Cares\nto add/remove from Care Plan")
                return cell
            case presenter.plantCares.count + 1:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellAddCareIdentifier) as? AddCareCell else { return UITableViewCell() }
                cell.delegate = self
                cell.setupCell()
                return cell
            default:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellCareIdentifier) as? CareCell else { return UITableViewCell() }
                cell.delegate = self
                if let caresModel = presenter.plantCares[safe: indexPath.row - 1] {
                    cell.setupCell(caresModel: caresModel)
                }
                return cell
            }
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
