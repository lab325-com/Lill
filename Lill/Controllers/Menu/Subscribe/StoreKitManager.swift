//
//  StoreKitManager.swift
//  Lill
//
//  Created by Andrey S on 04.02.2022.
//

import StoreKit

class StoreKitManager: NSObject {
    
    static let sharedInstance = StoreKitManager()
    
    var products: [SKProduct]?
    
    func getProducts(product: String) {
        let request = SKProductsRequest(productIdentifiers: [product])
        request.delegate = self
        request.start()
    }
    
    func purchase(productParam : SKProduct) -> Bool {
        guard let products = products, products.count > 0 else {
            return false
        }
//        let payment = SKPayment(product: productParam)
        let payment = SKMutablePayment(product: productParam)
        //payment.paymentDiscount = SKPaymentDiscount(identifier: <#T##String#>, keyIdentifier: <#T##String#>, nonce: <#T##UUID#>, signature: <#T##String#>, timestamp: <#T##NSNumber#>)
        SKPaymentQueue.default().add(payment)
        return true
    }
    
    func restorePurchases() {
        SKPaymentQueue.default().restoreCompletedTransactions()
    }
}

extension StoreKitManager: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        print("recevied products")
        products = response.products
        
    }
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        print("error")
    }
    
    func requestDidFinish(_ request: SKRequest) {
        print("the request is finished")
    }
}

extension StoreKitManager: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for transaction in transactions {
            if transaction.error != nil {
                print("error: \(transaction.error?.localizedDescription)")
            }
            switch transaction.transactionState {
            case .purchasing:
                print("handle purchasing state")
                break;
            case .purchased:
                print("handle purchased state")
                break;
            case .restored:
                print("handle restored state")
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
