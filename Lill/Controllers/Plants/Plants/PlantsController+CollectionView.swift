
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
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if indexPath.row == plants.count - 5 {
            if presenter.paginationModel?.nextPageExist == true {
                presenter.getPlants(offset: plants.count, search: searchTextField.text! == searchText ? "" : searchTextField.text!)
            }
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        if scrollView.contentOffset.y > 0 {
//            upAnimate()
//        } else
        if scrollView.contentOffset.y < -100 {
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
            AnalyticsHelper.sendFirebaseEvents(events: .card_view)
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

        guard let meModel = KeychainService.standard.me else { return }
        
        if meModel.access.isPremium {
            GardenRouter(presenter: navigationController).presentAddToGarden(tabBarController: tabBarController, delegate: self, plantId: id)
        } else {
            if meModel.totalGardenPlants > 4 {
                if StoreKitManager.sharedInstance.isYearly50() {
                    MenuRouter(presenter: navigationController).presentYearPaywall(delegate: nil, controller: String(describing: PlantsController.self))
                } else if StoreKitManager.sharedInstance.isLifeTime50() {
                    MenuRouter(presenter: navigationController).presentLifetimePayWall(controller: String(describing: PlantsController.self))
                } else if StoreKitManager.sharedInstance.isCombo() {
                    
                } else {
                    
                }
            } else {
                GardenRouter(presenter: navigationController).presentAddToGarden(tabBarController: tabBarController, delegate: self, plantId: id)
            }
        }
    }
    
    func setFavorite(cell: PlantCollectionCell, id: String, isFavorite: Bool) {

        guard let meModel = KeychainService.standard.me else { return }
        
        if meModel.access.isPremium {
            presenter.setFavoritePlant(id: id, isFavorite: isFavorite)
        } else {
            if meModel.totalFavouritePlants > 4 && !isFavorite {
                if StoreKitManager.sharedInstance.isYearly50() {
                    MenuRouter(presenter: navigationController).presentYearPaywall(delegate: nil, controller: String(describing: PlantsController.self))
                } else if StoreKitManager.sharedInstance.isLifeTime50() {
                    MenuRouter(presenter: navigationController).presentLifetimePayWall(controller: String(describing: PlantsController.self))
                } else if StoreKitManager.sharedInstance.isCombo() {
                    
                } else {
                    
                }
            } else {
                presenter.setFavoritePlant(id: id, isFavorite: isFavorite)
            }
        }
    }
}

