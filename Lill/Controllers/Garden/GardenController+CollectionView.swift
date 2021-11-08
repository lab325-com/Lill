
import UIKit

//----------------------------------------------
// MARK: - UICollectionViewDataSource, UICollectionViewDelegate
//----------------------------------------------

extension GardenController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gardenPlants.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == sadGardenPlants.count {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellButtonIdentifier, for: indexPath) as! GardenButtonCell
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! GardenViewCell
            if let model = gardenPlants[safe: indexPath.row] {
                cell.configure(model: model)
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
        if indexPath.row == 4 {
            return CGSize(width: UIScreen.main.bounds.size.width - 24, height: 44)
        } else {
            return CGSize(width: UIScreen.main.bounds.size.width / 2 - 13 , height: UIScreen.main.bounds.size.width / 2 - 13)
        }
    }
}
