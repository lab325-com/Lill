//
//  DiseaseArchivePresenter.swift
//  Lill
//
//  Created by Andrew Bilohorodskiy on 01.11.2021.
//

import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol DiseaseArchiveOutputProtocol: BaseController {
    func success(model: DiseaseArchiveModel)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol DiseaseArchivePresenterProtocol: AnyObject {
    init(view: DiseaseArchiveOutputProtocol)
    func getDiseaseArchive()
}

class DiseaseArchivePresenter: DiseaseArchivePresenterProtocol {
    private weak var view: DiseaseArchiveOutputProtocol?
    
    required init(view: DiseaseArchiveOutputProtocol) {
        self.view = view
    }
    
    func getDiseaseArchive() {
        view?.startLoader()
        
        let query = DiagnoseArhiveQuery(pagination: InputPagination(offset: 0, limit: 10))
        
        let _ = Network.shared.query(model: DiseaseArchiveModel.self, query) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.success(model: model)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}
