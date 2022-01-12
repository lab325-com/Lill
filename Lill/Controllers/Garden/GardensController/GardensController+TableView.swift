
import UIKit
import Foundation

extension GardensController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.gardens.count > 0 ? presenter.gardens.count + 1 : 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if presenter.gardens.count > 0 {
            switch indexPath.row {
            case presenter.gardens.count:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.addPlaceCellIdentifier) as? AddPlaceCell else { return UITableViewCell() }
                cell.delegate = self
                cell.configure()
                return cell
            default:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.gardenCellIdentifier) as? GardenCell else { return UITableViewCell() }
                if let model = presenter.gardens[safe: indexPath.row] {
                    cell.configure(model: model)
                }
                return cell
            }
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: self.addPlaceCellIdentifier) as? AddPlaceCell else { return UITableViewCell() }
            cell.delegate = self
            cell.configure()
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let gardenId = presenter.gardens[safe: indexPath.row]?.id, let gardenName = presenter.gardens[safe: indexPath.row]?.name {
            GardenRouter(presenter: navigationController).pushToGarden(gardenId: gardenId, gardenName: gardenName)
        }
    }
}

//----------------------------------------------
// MARK: - AddPlaceCellDelegate
//----------------------------------------------

extension GardensController: AddPlaceCellDelegate {
    func didTappedAddPlaceButton() {
        /// Open add place logic
    }
}
