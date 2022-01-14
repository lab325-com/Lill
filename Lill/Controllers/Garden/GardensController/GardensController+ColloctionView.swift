
import UIKit
import Foundation

fileprivate let gardenViewCellSize = CGSize(width: UIScreen.main.bounds.size.width / 2 - 13,
                                            height: UIScreen.main.bounds.size.width / 2 - 13)
fileprivate let gardenButtonCellSize = CGSize(width: UIScreen.main.bounds.size.width - 24,
                                              height: 44)

//----------------------------------------------
// MARK: - UICollectionViewDataSource, UICollectionViewDelegate
//----------------------------------------------

extension GardensController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.gardenPlants.count + (presenter.sadGardenPlants.count == 0 ? 0 : 1) + (presenter.sadGardenPlants.count % 2 == 0 ? 0 : 1)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if presenter.sadGardenPlants.count == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: gardenViewCellIdentifier, for: indexPath) as! GardenViewCell
            cell.delegate = self
            cell.indexPath = indexPath
            if presenter.sadGardenPlants.count % 2 != 0, indexPath.row == presenter.sadGardenPlants.count + (presenter.sadGardenPlants.count % 2 == 0 ? 0 : 1) - 1 {
                cell.containView.isHidden = true
                cell.isUserInteractionEnabled = false
            } else {
                cell.containView.isHidden = false
                cell.isUserInteractionEnabled = true
            }
            if let model = presenter.gardenPlants[safe: indexPath.row] {
                cell.configure(model: model)
            }
            return cell
        } else {
            switch indexPath.row {
            case presenter.sadGardenPlants.count + (presenter.sadGardenPlants.count % 2 == 0 ? 0 : 1):
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: gardenButtonCellIdentifier, for: indexPath) as! GardenButtonCell
                cell.delegate = self
                switch selectedCareType {
                case 1: cell.configure(title: RLocalization.garden_done_all_humidity.localized(PreferencesManager.sharedManager.languageCode.rawValue))
                case 2: cell.configure(title: RLocalization.garden_done_all_misting.localized(PreferencesManager.sharedManager.languageCode.rawValue))
                case 3: cell.configure(title: RLocalization.garden_done_all_rotate.localized(PreferencesManager.sharedManager.languageCode.rawValue))
                case 4: cell.configure(title: RLocalization.garden_done_all_watering.localized(PreferencesManager.sharedManager.languageCode.rawValue))
                default: cell.configure(title: RLocalization.garden_done_all_cares.localized(PreferencesManager.sharedManager.languageCode.rawValue))
                }
                return cell
            default:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: gardenViewCellIdentifier, for: indexPath) as! GardenViewCell
                cell.delegate = self
                cell.indexPath = indexPath
                if presenter.sadGardenPlants.count % 2 != 0, indexPath.row == presenter.sadGardenPlants.count + (presenter.sadGardenPlants.count % 2 == 0 ? 0 : 1) - 1 {
                    cell.containView.isHidden = true
                    cell.isUserInteractionEnabled = false
                } else {
                    cell.containView.isHidden = false
                    cell.isUserInteractionEnabled = true
                }
                if let model = presenter.gardenPlants[safe: indexPath.row] {
                    cell.configure(model: model)
                }
                return cell
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let model = presenter.gardenPlants[safe: indexPath.row] {
            GardenRouter(presenter: navigationController).pushGardenDetail(id: model.id, delegate: self)
        }
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDelegateFlowLayout
//----------------------------------------------

extension GardensController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        if presenter.sadGardenPlants.count == 0 {
            return gardenViewCellSize
        } else {
            switch indexPath.row {
            case presenter.sadGardenPlants.count + (presenter.sadGardenPlants.count % 2 == 0 ? 0 : 1):
                return gardenButtonCellSize
            default:
                return gardenViewCellSize
            }
        }
    }
}

//----------------------------------------------
// MARK: - GardenButtonCellDelegate
//----------------------------------------------

extension GardensController: GardenButtonCellDelegate {
    func didTappedDoneCaresButton() {
        presenter.doneCares(careTypeId: selectedCareType)
    }
}

//----------------------------------------------
// MARK: - GardenViewCellDelegate
//----------------------------------------------

extension GardensController: GardenViewCellDelegate {
    func didTappedCaresDetailButton(cell: GardenViewCell) {
        let plantId = presenter.sadGardenPlants[cell.indexPath!.row].id
        GardenRouter(presenter: navigationController).presentGadrenCaresDetail(plantId: plantId)
    }
}

//----------------------------------------------
// MARK: - GardenDetailProtocol
//----------------------------------------------

extension GardensController: GardenDetailProtocolo {
    func gardenDetailDelete(controller: GardenDetailController, id: String) {
        presenter.getPlants()
    }

    func gardenDetailChangeName(controller: GardenDetailController, text: String, id: String) {
        presenter.getPlants()
    }

    func gardenDetailChangePhoto(controller: GardenDetailController, imageUrl: String, id: String) {
        presenter.getPlants()
    }
}
