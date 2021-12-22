
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
        return presenter.gardenPlants.count /*+ (presenter.sadGardenPlants.count == 0 ? 0 : 1) + (presenter.sadGardenPlants.count % 2 == 0 ? 0 : 1)*/
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if presenter.sadGardenPlants.count == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! GardenViewCell
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

extension GardenController: UICollectionViewDelegateFlowLayout {
    
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

extension GardenController: GardenButtonCellDelegate {
    func didTappedDoneCaresButton() {
        guard let gardenId = KeychainService.standard.me?.defaultGardenId else { return }
        presenter.doneCares(gardenId: gardenId, careTypeId: selectedCareType)
    }
}

//----------------------------------------------
// MARK: - GardenViewCellDelegate
//----------------------------------------------

extension GardenController: GardenViewCellDelegate {
    func didTappedCaresDetailButton(cell: GardenViewCell) {
        let plantId = presenter.sadGardenPlants[cell.indexPath!.row].id
        GardenRouter(presenter: navigationController).presentGadrenCaresDetail(plantId: plantId)
    }
}

//----------------------------------------------
// MARK: - GardenDetailProtocol
//----------------------------------------------

extension GardenController: GardenDetailProtocolo {
    func gardenDetailDelete(controller: GardenDetailController, id: String) {
        /// not working because reload data in view will appear
        if let index = presenter.gardenPlants.firstIndex(where: {$0.id == id}) {
            presenter.gardenPlants.remove(at: index)
            collectionView.reloadData()
        }
    }
    
    func gardenDetailChangePhoto(controller: GardenDetailController, imageUrl: String, id: String) {
        /// not working because reload data in view will appear
        if let index = presenter.gardenPlants.firstIndex(where: {$0.id == id}) {
            presenter.gardenPlants[index].userMainImage?.changeUrlIosFull(imageUrl)
            collectionView.reloadData()
        }
    }
    
    func gardenDetailChangeName(controller: GardenDetailController, text: String, id: String) {
        /// not working because reload data in view will appear
        if let index = presenter.gardenPlants.firstIndex(where: {$0.id == id}) {
            presenter.gardenPlants[index].changeName(text)
            collectionView.reloadData()
        }
    }
}
