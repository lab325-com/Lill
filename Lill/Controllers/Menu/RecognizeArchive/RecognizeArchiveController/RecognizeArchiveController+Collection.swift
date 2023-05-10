//
//  RecognizeArchiveController+Collection.swift
//  Lill
//
//  Created by mob325 on 03.11.2021.
//

import UIKit

//----------------------------------------------
// MARK: - UICollectionViewDataSource, UICollectionViewDelegate
//----------------------------------------------

extension RecognizeArchiveController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  cellIdentifier, for: indexPath) as! PlantCollectionCell
        
        if let model = models[safe: indexPath.row] {
            cell.configure(model: model)
            cell.delegate = self
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let id =  models[safe: indexPath.row]?.id {
            PlantsRouter(presenter: navigationController).pushDetail(id: id)
        }
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDelegateFlowLayout
//----------------------------------------------

extension RecognizeArchiveController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.size.width / 2 - 13 , height: UIScreen.main.bounds.size.width / 2 - 13)
    }
}

//----------------------------------------------
// MARK: - PlantCollectionDelegate
//----------------------------------------------

extension RecognizeArchiveController: PlantCollectionDelegate {
    func setToGarden(cell: PlantCollectionCell, id: String) {
        if let totalGardenPlants = KeychainService.standard.me?.totalGardenPlants, totalGardenPlants > 0 && KeychainService.standard.me?.access.subscription?.name == nil {
            MenuRouter(presenter: navigationController).presentPaywall(delegate: nil, controller: String(describing: RecognizeArchiveController.self))
        } else {
            GardenRouter(presenter: navigationController).presentAddToGarden(tabBarController: tabBarController, delegate: self, plantId: id)
        }
    }
    
    func setFavorite(cell: PlantCollectionCell, id: String, isFavorite: Bool) {
        if let totalFavouritePlants = KeychainService.standard.me?.totalFavouritePlants, totalFavouritePlants > 4 && KeychainService.standard.me?.access.subscription?.name == nil && !isFavorite {
            MenuRouter(presenter: navigationController).presentPaywall(delegate: nil, controller: String(describing: RecognizeArchiveController.self)) 
        } else {
            presenter.setFavoritePlant(id: id, isFavorite: isFavorite)
        }
    }
}
