
import UIKit

fileprivate let gardenViewCellSize = CGSize(width: UIScreen.main.bounds.size.width / 2 - 13,
                                            height: UIScreen.main.bounds.size.width / 2 - 13)
fileprivate let gardenButtonCellSize = CGSize(width: UIScreen.main.bounds.size.width - 24,
                                              height: 44)

//----------------------------------------------
// MARK: - UICollectionViewDataSource, UICollectionViewDelegate
//----------------------------------------------

extension GardenController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gardenPlants.count + (sadGardenPlants.count == 0 ? 0 : 1) + (sadGardenPlants.count % 2 == 0 ? 0 : 1)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if sadGardenPlants.count == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! GardenViewCell
            if sadGardenPlants.count % 2 != 0, indexPath.row == sadGardenPlants.count + (sadGardenPlants.count % 2 == 0 ? 0 : 1) - 1 {
                cell.containView.isHidden = true
                cell.isUserInteractionEnabled = false
            } else {
                cell.containView.isHidden = false
                cell.isUserInteractionEnabled = true
            }
            if let model = gardenPlants[safe: indexPath.row] {
                cell.configure(model: model)
            }
            return cell
        } else {
            switch indexPath.row {
            case sadGardenPlants.count + (sadGardenPlants.count % 2 == 0 ? 0 : 1):
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellButtonIdentifier, for: indexPath) as! GardenButtonCell
                cell.delegate = self
                switch selectedCareType {
                case 1: cell.configure(title: "Done all Humidity")
                case 2: cell.configure(title: "Done all Misting")
                case 3: cell.configure(title: "Done all Rotate")
                case 4: cell.configure(title: "Done all Watering")
                default: cell.configure(title: "Done all Cares")
                }
                return cell
            default:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! GardenViewCell
                if sadGardenPlants.count % 2 != 0, indexPath.row == sadGardenPlants.count + (sadGardenPlants.count % 2 == 0 ? 0 : 1) - 1 {
                    cell.containView.isHidden = true
                    cell.isUserInteractionEnabled = false
                } else {
                    cell.containView.isHidden = false
                    cell.isUserInteractionEnabled = true
                }
                if let model = gardenPlants[safe: indexPath.row] {
                    cell.configure(model: model)
                }
                return cell
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let model = gardenPlants[safe: indexPath.row] {
            GardenRouter(presenter: navigationController).pushGardenDetail(id: model.id)
        }
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDelegateFlowLayout
//----------------------------------------------

extension GardenController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        if sadGardenPlants.count == 0 {
            return gardenViewCellSize
        } else {
            switch indexPath.row {
            case sadGardenPlants.count + (sadGardenPlants.count % 2 == 0 ? 0 : 1):
                return gardenButtonCellSize
            default:
                return gardenViewCellSize
            }
        }
    }
}

extension GardenController: GardenButtonCellDelegate {
    func doneCares() {
        guard let gardenId = KeychainService.standard.me?.defaultGardenId else { return }
        presenter.doneCares(gardenId: gardenId)
    }
}
