
import Foundation
import Apollo
import UIKit
import SwiftyStoreKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol PlantsOutputProtocol: BaseController {
    func successFavorite(isFavorite: Bool, id: String)
    func success(model: CatalogPlantsModel)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol PlantsPresenterProtocol: AnyObject {
    init(view: PlantsOutputProtocol)
    
    func getPlants(offset: Int, search: String)
    func updateMe()
    func checkRecepts(restoreCompletion: @escaping (Bool)->())
}

class PlantsPresenter: PlantsPresenterProtocol {
    
    private weak var view: PlantsOutputProtocol?
    private var isLoaded = false
    private var request: Cancellable?
    
    var paginationModel: PaginationModel?
    
    required init(view: PlantsOutputProtocol) {
        self.view = view
    }
    
    func getPlants(offset: Int = 0, search: String) {
        view?.startLoader()
        
        request?.cancel()
        
        let query = GetCatalogPlantsQuery(pagination: InputPagination(offset: offset, limit: 50), search: search, onlyFavorites: false)
        request = Network.shared.query(model: CatalogPlantsModel.self, query, controller: view) { [weak self] model in
            self?.paginationModel = model.getCatalogPlants.pagination
            self?.view?.stopLoading()
            self?.view?.success(model: model)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
    
    func setFavoritePlant(id: String, isFavorite: Bool) {
        
        let mutation = SetFavoritePlantByIdMutation(id: id, isFavorite: !isFavorite)
        let _ = Network.shared.mutation(model: FavoritePlantDataModel.self, mutation, controller: view, successHandler: { [weak self] model in
            self?.view?.successFavorite(isFavorite: !isFavorite, id: id)
        }, failureHandler: { [weak self] error in
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func updateMe() {
        let query = MeQuery()
        
        let _ = Network.shared.query(model: MeDataModel.self, query, controller: view) { model in
            KeychainService.standard.me = model.me
        } failureHandler: { _ in
        }
    }
    
    func checkRecepts(restoreCompletion: @escaping (Bool)->()) {
        if PreferencesManager.sharedManager.isNeedSendReceipts == true {
            let receiptData = SwiftyStoreKit.localReceiptData
            if let receiptString = receiptData?.base64EncodedString(options: []) {
                view?.startLoader()
                let mutation = OrderCreateMutation(receipt: receiptString)
                let _ = Network.shared.mutation(model: OrderCreate.self, mutation, controller: self.view, successHandler: { [weak self] model in
                    let _ = Network.shared.query(model: MeDataModel.self, MeQuery(), controller: self?.view) { [weak self] model in
                        KeychainService.standard.me = model.me
                        self?.view?.stopLoading()
                        restoreCompletion(true)
                    } failureHandler: { [weak self] error in
                        self?.view?.stopLoading()
                        restoreCompletion(false)
                    }
                    
                }, failureHandler: { [weak self] error in
                    self?.view?.stopLoading()
                    restoreCompletion(false)
                })
            }
        }
    }
}
