
import Foundation
import UIKit

//----------------------------------------------
// MARK: - UICollectionViewDataSource, UICollectionViewDelegate
//----------------------------------------------

extension IdentifyController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return identifyResults.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  cellIdentifier, for: indexPath) as! PlantCollectionCell
        
        if let model = identifyResults[safe: indexPath.row] {
            cell.configure(model: model)
        }
        
        cell.delegate = self
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if !onboardingView.isHidden {
            lottieView.stop()
            onboardingView.isHidden = true
        }
        if let model = identifyResults[safe: indexPath.row] {
            PlantsRouter(presenter: navigationController).pushDetail(id: model.id, delegate: self)
        }
    }
}

//----------------------------------------------
// MARK: - PlantsDetailDelegate
//----------------------------------------------

extension IdentifyController: PlantsDetailDelegate {
    func updatePlants() {
        
    }
    
    func successSetFavorite(id: String, isFavorite: Bool) {
        if let index = identifyResults.firstIndex(where: {$0.id == id }) {
            identifyResults[index].changeIsFavorite(isFavorite)
            collectionView.reloadItems(at: [IndexPath(row: index, section: 0)])
        }
    }
}

//----------------------------------------------
// MARK: - PlantCollectionDelegate
//----------------------------------------------

extension IdentifyController: PlantCollectionDelegate {
    func setFavorite(cell: PlantCollectionCell, id: String, isFavorite: Bool) {
        if let totalFavouritePlants = KeychainService.standard.me?.totalFavouritePlants, totalFavouritePlants > 4 && KeychainService.standard.me?.access.subscription?.name == nil && !isFavorite {
            MenuRouter(presenter: navigationController).presentPaywall(delegate: nil, controller: String(describing: IdentifyController.self))
        } else {
            presenter.setFavoritePlant(id: id, isFavorite: isFavorite)
        }
    }
    
    func setToGarden(cell: PlantCollectionCell, id: String) {
        if let totalGardenPlants = KeychainService.standard.me?.totalGardenPlants, totalGardenPlants > 0 && KeychainService.standard.me?.access.subscription?.name == nil {
            MenuRouter(presenter: navigationController).presentPaywall(delegate: nil, controller: String(describing: IdentifyController.self))
        } else {
            GardenRouter(presenter: navigationController).presentAddToGarden(tabBarController: tabBarController, delegate: self, plantId: id)
        }
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDelegateFlowLayout
//----------------------------------------------

extension IdentifyController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.size.width / 2 - 13 , height: UIScreen.main.bounds.size.width / 2 - 13)
    }
}
