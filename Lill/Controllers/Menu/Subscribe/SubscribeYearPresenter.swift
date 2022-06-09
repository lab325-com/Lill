//
//  SubscribeYearPresenter.swift
//  Lill
//
//  Created by Andrey S on 07.02.2022.
//

import Foundation
import Apollo
import UIKit
import SwiftyStoreKit
import StoreKit
import Toast
import CryptoKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol SubscribeYearOutputProtocol: BaseController {
    func successRetrive()
    func success()
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol SubscribeYearPresenterProtocol: AnyObject {
    init(view: SubscribeYearOutputProtocol)
    func retriveProduct(id: Set<String>)
    func getSignature()
}

class SubscribeYearPresenter: NSObject, SubscribeYearPresenterProtocol  {
    private weak var view: SubscribeYearOutputProtocol?
   
    var paymentsInfo = [PaymentsModel]()
    var discountInfo = [PaymentsModel]()
    var product: SKProduct?
    var genereteOffer: GeneratePromoOfferModel?
    var userNameHash: String?
    
    required init(view: SubscribeYearOutputProtocol) {
        self.view = view
    }
    
    func getSignature() {
        view?.startLoader()
        
        let inputString = KeychainService.standard.newAuthToken?.token ?? ""
        let inputData = Data(inputString.utf8)
        let hashed = SHA256.hash(data: inputData)
        print(hashed.description)
        userNameHash = hashed.compactMap { String(format: "%02x", $0) }.joined()
        
        let mutation = GeneratePromoOfferMutation(record: GeneratePromoOfferRecordInput(productId: "com.lill.subscription.yearly", offerId: "discount_year_50", userName: userNameHash!))
        
        let _ = Network.shared.mutation(model: GeneratePromoOfferModel.self, mutation, controller: view) { [weak self] model in
            self?.genereteOffer = model
            self?.view?.stopLoading()
        } failureHandler: { [weak self] error in
            self?.view?.failure(error: error.localizedDescription)
        }
    }
    
    func purchase(id: String) {
        guard let products = product, let offer = genereteOffer else {
            return
        }
        
        AnalyticsHelper.sendFirebaseEvents(events: .subscribe_start, params: ["id": id])
        
        
        view?.startLoader()
        
        
        
        let payment = SKMutablePayment(product: products)
        payment.applicationUsername = userNameHash
        payment.paymentDiscount = SKPaymentDiscount(identifier: "discount_year_50", keyIdentifier: offer.generatePromoOffer.keyID, nonce: UUID(uuidString: offer.generatePromoOffer.nonce)!, signature: offer.generatePromoOffer.signature, timestamp: NSNumber(value: Int(offer.generatePromoOffer.timestamp)!))
        SKPaymentQueue.default().add(payment)
    }
    
    func restore(_ restoreCompletion: @escaping (Bool) -> Void) {
        view?.startLoader()
        SwiftyStoreKit.restorePurchases(atomically: true) {[weak self] results in
            
            
            if results.restoreFailedPurchases.count > 0 {
                self?.view?.stopLoading()
                print("Restore Failed: \(results.restoreFailedPurchases)")
                restoreCompletion(false)
            }
            else if results.restoredPurchases.count > 0 {
                for purchase in results.restoredPurchases {
                    // fetch content from your server, then:
                    if purchase.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(purchase.transaction)
                    }
                    
                }
                let receiptData = SwiftyStoreKit.localReceiptData
                if let receiptString = receiptData?.base64EncodedString(options: []) {
                    let mutation = OrderCreateMutation(receipt: receiptString)
                    let _ = Network.shared.mutation(model: OrderCreate.self, mutation, controller: self?.view, successHandler: { [weak self] model in
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
                } else {
                    self?.view?.stopLoading()
                    restoreCompletion(false)
                }
                print("Restore Success: \(results.restoredPurchases)")
               
                
            }
            else {
                self?.view?.stopLoading()
                restoreCompletion(false)
            }
        }
    }
    
    func retriveProduct(id: Set<String>) {
        SKPaymentQueue.default().add(self)
        
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
            
            self?.product = results.retrievedProducts.first
            
            for product in results.retrievedProducts {
                if let priceString = product.localizedPrice,
                   let number = product.subscriptionPeriod?.numberOfUnits,
                   let period = self?.getCurrentPeriod(product.subscriptionPeriod?.unit) {
                    
                    let model = PaymentsModel(product: product.productIdentifier, prettyPrice: priceString, period: period, number: number, price: Double(truncating: product.price), currencySymbol: product.priceLocale.currencySymbol, daysTrial: product.introductoryPrice?.localizedSubscriptionPeriod)
                    self?.paymentsInfo.append(model)
                } else {
                    debugPrint(">>>>>>>>>>>>>>>>>>>incorrect product!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
                }
                
                
                if let discount = product.discounts.first,
                   let priceString = discount.localizedPrice,
                   let period = self?.getCurrentPeriod(discount.subscriptionPeriod.unit) {
                    
                    let number = discount.subscriptionPeriod.numberOfUnits
                    
                    let model = PaymentsModel(product: discount.identifier ?? "", prettyPrice: priceString, period: period, number: number, price: Double(truncating: discount.price), currencySymbol: discount.priceLocale.currencySymbol, daysTrial: product.introductoryPrice?.localizedSubscriptionPeriod)
                    self?.discountInfo.append(model)
                } else {
                    debugPrint(">>>>>>>>>>>>>>>>>>>incorrect product!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
                }
            }
            
            if self?.discountInfo.count == id.count {
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

extension SubscribeYearPresenter: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for transaction in transactions {
            if transaction.error != nil {
                let message = transaction.error?.localizedDescription ?? "error purchaced"
                AnalyticsHelper.sendFirebaseEvents(events: .purchase_error, params: ["message": message])
                self.view?.view.makeToast(message)
                print("error: \(message)")
            }
            switch transaction.transactionState {
            case .purchasing:
                print("handle purchasing state")
                break;
            case .purchased, .restored:
                let id = product?.productIdentifier ?? ""
                
                AnalyticsHelper.sendFirebaseEvents(events: .purchase_success, params: ["id": id])
                AnalyticsHelper.sendAppsFlyerEvent(event: .appsflyer_purchase_success, values: ["id": id])
                AnalyticsHelper.sendFacebookEvent(event: .fb_purchase_success, values: ["id": id])
                

                let receiptData = SwiftyStoreKit.localReceiptData
                if let receiptString = receiptData?.base64EncodedString(options: []) {
                    let mutation = OrderCreateMutation(receipt: receiptString)
                    let _ = Network.shared.mutation(model: OrderCreate.self, mutation, controller: view, successHandler: { [weak self] model in
                        
                        let _ = Network.shared.query(model: MeDataModel.self, MeQuery(), controller: self?.view) { [weak self] model in
                            KeychainService.standard.me = model.me
                            self?.view?.stopLoading()
                            self?.view?.success()
                        } failureHandler: { [weak self] error in
                            self?.view?.stopLoading()
                            self?.view?.view.makeToast(error.localizedDescription)
                        }
                        
                    }, failureHandler: { [weak self] error in
                        self?.view?.stopLoading()
                        self?.view?.view.makeToast(error.localizedDescription)
                    })
                } else {
                    self.view?.success()
                }
                break;
            case .failed:
                print("handle failed state")
                break;
            case .deferred:
                print("handle deferred state")
                break;
            @unknown default:
                print("Fatal Error");
            }
        }
    }
}
