//
//  SubscribePresenter.swift
//  Lill
//
//  Created by Andrey S on 04.11.2021.
//

import Foundation
import Apollo
import UIKit
import SwiftyStoreKit
import StoreKit

struct PaymentsModel {
    let product: String
    let price: String
    let period: String
    let daysTrial: Int? = nil
}

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol SubscribeOutputProtocol: BaseController {
    func successRetrive()
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol SubscribePresenterProtocol: AnyObject {
    init(view: SubscribeOutputProtocol)
    func retriveProduct(id: Set<String>)
}

class SubscribePresenter: SubscribePresenterProtocol {
    private weak var view: SubscribeOutputProtocol?
   
    var paymentsInfo = [PaymentsModel]()
    
    required init(view: SubscribeOutputProtocol) {
        self.view = view
    }
    
    func purchase(id: String, purchaseSuccess: @escaping () -> Void) {
        view?.startLoader()
        SwiftyStoreKit.purchaseProduct(id, quantity: 1, atomically: true) { [weak self] result in
            self?.view?.stopLoading()
            
            switch result {
            case .success(let product):
                //self?.sendPrepay()
                // fetch content from your server, then:
                if product.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(product.transaction)
                }
                print("Purchase Success: \(product.productId)")
            case .error(let error):
                switch error.code {
                case .unknown: print("Unknown error. Please contact support")
                case .clientInvalid: print("Not allowed to make the payment")
                case .paymentCancelled: break
                case .paymentInvalid: print("The purchase identifier was invalid")
                case .paymentNotAllowed: print("The device is not allowed to make the payment")
                case .storeProductNotAvailable: print("The product is not available in the current storefront")
                case .cloudServicePermissionDenied: print("Access to cloud service information is not allowed")
                case .cloudServiceNetworkConnectionFailed: print("Could not connect to the network")
                case .cloudServiceRevoked: print("User has revoked permission to use this cloud service")
                default: print((error as NSError).localizedDescription)
                }
            }
        }
    }
    
    func restore(_ restoreSuccess: @escaping () -> Void) {
        view?.startLoader()
        SwiftyStoreKit.restorePurchases(atomically: true) {[weak self] results in
            self?.view?.stopLoading()
            
            if results.restoreFailedPurchases.count > 0 {
                print("Restore Failed: \(results.restoreFailedPurchases)")
            }
            else if results.restoredPurchases.count > 0 {
                for purchase in results.restoredPurchases {
                    // fetch content from your server, then:
                    if purchase.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(purchase.transaction)
                    }
                    
                }
                print("Restore Success: \(results.restoredPurchases)")
               
                restoreSuccess()
            }
            else {
                print("Nothing to Restore")
            }
        }
    }
    
    func retriveProduct(id: Set<String>) {
        if paymentsInfo.count == id.count  {
            return
        }
        view?.startLoader()
        SwiftyStoreKit.retrieveProductsInfo(id) { [weak self] results in
            if let invalidProductId = results.invalidProductIDs.first {
                print("Invalid product identifier: \(invalidProductId)")
                self?.view?.stopLoading()
                return
            }
            
            for product in results.retrievedProducts {
                if let priceString = product.localizedPrice,
                   let number = product.subscriptionPeriod?.numberOfUnits,
                   let period = self?.getCurrentPeriod(product.subscriptionPeriod?.unit) {
                    
                    let model = PaymentsModel(product: product.productIdentifier, price: priceString, period: period)
                    self?.paymentsInfo.append(model)
                } else {
                    debugPrint(">>>>>>>>>>>>>>>>>>>incorrect product!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
                }
            }
            
            if self?.paymentsInfo.count == id.count {
                self?.view?.stopLoading()
                self?.view?.successRetrive()
            }
        }
    }
    
    private func getCurrentPeriod(_ product: SKProduct.PeriodUnit?) -> String? {
        switch product {
        case .day:
            return "day"
        case .month:
            return "month"
        case .week:
            return "week"
        case .year:
            return "year"
        case .none:
            return "none"
        @unknown default:
            return "default"
        }
    }
}
