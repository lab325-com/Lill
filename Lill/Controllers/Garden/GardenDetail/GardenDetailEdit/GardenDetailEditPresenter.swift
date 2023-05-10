//
//  GardenDetailEditPresenter.swift
//  Lill
//
//  Created by mob325 on 23.12.2021.
//

import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenDetailEditOutputProtocol: BaseController {
    func successChange()
    func successDelete()
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenDetailEditPresenterProtocol: AnyObject {
    init(view: GardenDetailEditOutputProtocol)
    
    func updateMedia(notes: String, mediaID: String)
    func deleteMedia(mediaID: String)
}

class GardenDetailEditPresenter: GardenDetailEditPresenterProtocol {

    private weak var view: GardenDetailEditOutputProtocol?
    
    required init(view: GardenDetailEditOutputProtocol) {
        self.view = view
    }
    
    func updateMedia(notes: String, mediaID: String) {
        view?.startLoader()
        
        let mutation = UpdateMediaNotesMutation(mediaId: mediaID, notes: notes)
        let _ = Network.shared.mutation(model: UpdateMediaNotesModel.self, mutation, controller: view) { [weak self] _ in
            self?.view?.stopLoading()
            self?.view?.successChange()
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
        }
    }
    
    func deleteMedia(mediaID: String) {
        view?.startLoader()
        
        let mutation = GalleryImageDeleteMutation(id: mediaID)
        let _ = Network.shared.mutation(model: GalleryImageDeleteModel.self, mutation, controller: view) { [weak self] _ in
            self?.view?.stopLoading()
            self?.view?.successDelete()
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
        }
    }
    
}
