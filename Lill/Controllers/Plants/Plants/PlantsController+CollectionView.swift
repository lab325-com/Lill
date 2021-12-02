
import UIKit

//----------------------------------------------
// MARK: - UICollectionViewDataSource, UICollectionViewDelegate
//----------------------------------------------

extension PlantsController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return plants.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  cellIdentifier, for: indexPath) as! PlantCollectionCell
        
        if let model = plants[safe: indexPath.row] {
            cell.delegate = self
            cell.configure(model: model)
        }
        
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y > 0 {
            upAnimate()
        } else if scrollView.contentOffset.y < -100 {
            downAnimate()
        }
        
        if scrollView.contentOffset.y > 250 {
            showBackToTop()
        } else {
            hideBackToTop()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let model = plants[safe: indexPath.row] {
            PlantsRouter(presenter: navigationController).pushDetail(id: model.id, delegate: self)
        }
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDelegateFlowLayout
//----------------------------------------------

extension PlantsController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.size.width / 2 - 13 , height: UIScreen.main.bounds.size.width / 2 - 13)
    }
}

extension PlantsController: PlantCollectionDelegate {
    func setToGarden(cell: PlantCollectionCell, id: String) {
        guard let gardenId = KeychainService.standard.me?.defaultGardenId else { return }
        presenter.addPlantToGarden(plantId: id, gardenId: gardenId)
    }
    
    func setFavorite(cell: PlantCollectionCell, id: String, isFavorite: Bool) {
        presenter.setFavoritePlant(id: id, isFavorite: isFavorite)
    }
}
