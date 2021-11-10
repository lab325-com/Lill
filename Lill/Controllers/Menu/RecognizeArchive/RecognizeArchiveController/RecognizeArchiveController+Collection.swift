//
//  RecognizeArchiveController+Collection.swift
//  Lill
//
//  Created by Andrey S on 03.11.2021.
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
        guard let gardenId = KeychainService.standard.me?.defaultGardenId else { return }
        presenter.addPlantToGarden(plantId: id, gardenId: gardenId)
    }
    
    func setFavorite(cell: PlantCollectionCell, id: String, isFavorite: Bool) {
        presenter.setFavoritePlant(id: id, isFavorite: isFavorite)
    }
}
