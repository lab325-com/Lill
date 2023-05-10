//
//  GardenHistoryAddPhotoPresenter.swift
//  Lill
//
//  Created by mob325 on 22.12.2021.
//

import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenHistoryAddPhotoOutputProtocol: BaseController {
    func success()
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenHistoryAddPhotoPresenterProtocol: AnyObject {
    init(view: GardenHistoryAddPhotoOutputProtocol)
    
    func uploadMedia(gardenPlantId: String, notes: String, img: UIImage)
}

class GardenHistoryAddPhotoPresenter: GardenHistoryAddPhotoPresenterProtocol {

    private weak var view: GardenHistoryAddPhotoOutputProtocol?
    
    required init(view: GardenHistoryAddPhotoOutputProtocol) {
        self.view = view
    }
    
    func uploadMedia(gardenPlantId: String, notes: String, img: UIImage) {
        view?.startLoader()
        
        let plantsImage = img.jpegData(compressionQuality: 0.9)!
        
        let file = GraphQLFile(fieldName: "image", originalName: "image.jpeg", mimeType: "image/jpeg", data: plantsImage)
        
        let mutation = UploadMediaMutation(image: "image", notes: notes)
        
        let _ = Network.shared.upload(model: MediaDataModel.self, mutation, controller: view, files: [file]) { [weak self] model in
            
            guard let id = model.uploadMedia.id else {
                self?.view?.stopLoading()
                return
            }
            
            let mutation2 = AddImageToGalleryMutation(gardenPlantId: gardenPlantId, mediaId: id)
            
            let _ = Network.shared.mutation(model: AddImageToGalleryModel.self, mutation2, controller: self?.view) { [weak self] model in
                self?.view?.success()
                self?.view?.stopLoading()
            } failureHandler: { [weak self] error in
                self?.view?.stopLoading()
            }
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
        }
    }
}
