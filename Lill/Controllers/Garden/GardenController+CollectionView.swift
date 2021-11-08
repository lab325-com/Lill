
import UIKit

//----------------------------------------------
// MARK: - UICollectionViewDataSource, UICollectionViewDelegate
//----------------------------------------------

extension GardenController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gardenPlants.count + 1 + (sadGardenPlants.count % 2 == 0 ? 0 : 1)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case sadGardenPlants.count + (sadGardenPlants.count % 2 == 0 ? 0 : 1):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellButtonIdentifier, for: indexPath) as! GardenButtonCell
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
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        debugPrint("select item")
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDelegateFlowLayout
//----------------------------------------------

extension GardenController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.row {
        case sadGardenPlants.count + (sadGardenPlants.count % 2 == 0 ? 0 : 1):
            return CGSize(width: UIScreen.main.bounds.size.width - 24, height: 44)
        default:
            return CGSize(width: UIScreen.main.bounds.size.width / 2 - 13 , height: UIScreen.main.bounds.size.width / 2 - 13)
        }
    }
}
