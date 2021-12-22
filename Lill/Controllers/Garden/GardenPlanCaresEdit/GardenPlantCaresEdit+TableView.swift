
import Foundation
import UIKit

//----------------------------------------------
// MARK: - UITableViewDataSource, UITableViewDelegate
//----------------------------------------------

extension GardenPlantCaresEdit: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.plantCares.count > 0 ? presenter.plantCares.count + (presenter.plantCares.count == 4 ? 1 : 2) : 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if presenter.plantCares.count > 0 {
            switch indexPath.row {
            case 0:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellCareInfoIdentifier) as? CareInfoCell else { return UITableViewCell() }
                cell.setupCell(infoText: RLocalization.garden_plant_cares_edit_info.localized(PreferencesManager.sharedManager.languageCode.rawValue))
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
            guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellAddCareIdentifier) as? AddCareCell else { return UITableViewCell() }
            cell.delegate = self
            cell.setupCell()
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
