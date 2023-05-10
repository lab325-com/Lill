//
//  GardenDetailListPhotoPresenter.swift
//  Lill
//
//  Created by mob325 on 23.12.2021.
//

import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenDetailListPhotoOutputProtocol: BaseController {
    func successUpdate(models: [MediaModel])
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenDetailListPhotoPresenterProtocol: AnyObject {
    init(view: GardenDetailListPhotoOutputProtocol)
    
    func updateMedia(gardenID: String)
}

class GardenDetailListPhotoPresenter: GardenDetailListPhotoPresenterProtocol {

    private weak var view: GardenDetailListPhotoOutputProtocol?
    
    required init(view: GardenDetailListPhotoOutputProtocol) {
        self.view = view
    }
    
    func updateMedia(gardenID: String) {
        view?.startLoader()
        
        let query = GalleryImagesQuery(gardenPlantId: gardenID)
        let _ = Network.shared.query(model: GalleryImagesModel.self, query, controller: self.view, successHandler: { [weak self] model in
            self?.view?.successUpdate(models: model.galleryImages)
            self?.view?.stopLoading()
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
        })
    }
    
}
