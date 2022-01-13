
import UIKit

//----------------------------------------------
// MARK: - UICollectionViewDataSource, UICollectionViewDelegate
//----------------------------------------------

extension WishListController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return wishList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  cellIdentifier, for: indexPath) as! PlantCollectionCell
        
        if let model = wishList[safe: indexPath.row] {
            cell.delegate = self
            cell.configure(model: model)
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let model = wishList[safe: indexPath.row] {
            PlantsRouter(presenter: navigationController).pushDetail(id: model.id, delegate: self)
        }
    }
}

extension WishListController: PlantsDetailDelegate {
    func updatePlants() {
        presenter.getWishList()
        delegate?.updatePlants()
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDelegateFlowLayout
//----------------------------------------------

extension WishListController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.size.width / 2 - 13 , height: UIScreen.main.bounds.size.width / 2 - 13)
    }
}

//----------------------------------------------
// MARK: - PlantCollectionDelegate
//----------------------------------------------

extension WishListController: PlantCollectionDelegate {
    func setToGarden(cell: PlantCollectionCell, id: String) {
        GardenRouter(presenter: navigationController).presentAddToGarden(tabBarController: tabBarController, delegate: self, plantId: id)
    }
    
    func setFavorite(cell: PlantCollectionCell, id: String, isFavorite: Bool) {
        presenter.setFavoritePlant(id: id)
    }
}
