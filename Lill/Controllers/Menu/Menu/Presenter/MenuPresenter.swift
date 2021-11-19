//
//  MenuPresenter.swift
//  Lill
//
//  Created by Andrew Bilohorodskiy on 22.10.2021.
//
import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol MenuOutputProtocol: BaseController {
    func success(model: MeDataModel)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol MenuPresenterProtocol: AnyObject {
    init(view: MenuOutputProtocol)
    func getMe()
}

class MenuPresenter: MenuPresenterProtocol {
    private weak var view: MenuOutputProtocol?
    let menuItems: [MenuSectionItem] = [
            MenuSectionItem(type: .account, items: [
                MenuItem(type: .accountInfo),
                MenuItem(type: .subscriptions)
        ]),
            MenuSectionItem(type: .archive, items: [
                MenuItem(type: .recognized),
                MenuItem(type: .disease)
            ]),
            MenuSectionItem(type: .settings, items: [
                MenuItem(type: .lang),
                MenuItem(type: .share),
                MenuItem(type: .rate),
                MenuItem(type: .terms),
                MenuItem(type: .privacyPolice)
            ])
    ]
    
    required init(view: MenuOutputProtocol) {
        self.view = view
    }
    
    func getMe() {
        view?.startLoader()
                
        let query = MeQuery()
        
        let _ = Network.shared.query(model: MeDataModel.self, query, controller: view) { [weak self] model in
            KeychainService.standard.me = model.me
            self?.view?.stopLoading()
            self?.view?.success(model: model)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}

//----------------------------------------------
// MARK: - Public types
//----------------------------------------------
enum MenuSectionType {
    case account
    case archive
    case settings
}

enum MenuItemType {
    case accountInfo
    case subscriptions
    case recognized
    case disease
    case lang
    case share
    case rate
    case terms
    case privacyPolice
}

struct MenuSectionItem {
    let type: MenuSectionType
    let items: [MenuItem]
}

struct MenuItem {
    let type: MenuItemType
}
