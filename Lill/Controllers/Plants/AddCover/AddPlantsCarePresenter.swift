//
//  AddPlantsCarePresenter.swift
//  Lill
//
//  Created by Andrey S on 15.11.2021.
//

import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------
protocol AddPlantsCareOutputProtocol: BaseController {
    func successCares(models: [CareType])
    func successSaveUniquesPlant()
    func failure(error: String)
}

extension AddPlantsCareOutputProtocol {
    func successCares(models: [CareType]) {}
    func successSaveUniquesPlant() {}
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------
protocol AddPlantsCarePresenterProtocol: AnyObject {
    init(view: AddPlantsCareOutputProtocol)
    
    func getCares()
    func sendUniquesPlants(img: UIImage, text: String, plantsTime: [AddPlantTimeModel])
}

class AddPlantsCarePresenter: AddPlantsCarePresenterProtocol {
    
    private weak var view: AddPlantsCareOutputProtocol?
    private var isLoaded = false
    private var request: Cancellable?
    
    required init(view: AddPlantsCareOutputProtocol) {
        self.view = view
    }
    
    func getCares() {
        view?.startLoader()
        
        request?.cancel()
        
        request = Network.shared.query(model: CareTypesModel.self, CareTypesQuery()) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successCares(models: model.careTypes)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
    
    func sendUniquesPlants(img: UIImage, text: String, plantsTime: [AddPlantTimeModel]) {
        
        guard let gardenId = KeychainService.standard.me?.defaultGardenId else { return }
        
        view?.startLoader()
        
        var cares: [PlantCareCreateInput] = []
        
        for plantsTime in plantsTime {
            if let id = Int(plantsTime.plan.id ?? "") {
                cares.append(PlantCareCreateInput(count: plantsTime.frequency, period: plantsTime.period, careTypeId: id))
            }
        }
        
        let plantsImage = img.jpegData(compressionQuality: 0.9)!
        let file = GraphQLFile(fieldName: "image", originalName: "image.jpeg", mimeType: "image/jpeg", data: plantsImage)
        let uploadMedia = UploadMediaMutation(image: "image")
        
        let _ = Network.shared.upload(model: MediaDataModel.self, uploadMedia, files: [file]) { [weak self] model in
            if let userMainImageId = model.uploadMedia.id {
                let input = GardenPlantCreateInput(name: text, gardenId: gardenId, userMainImageId: userMainImageId)
                let record = GardenPlantCreateRecordInput(plant: input, cares: cares)
                let mutation = GardenPlantCreateMutation(record: record)
                
                let _ = Network.shared.mutation(model: GardenPlantCreateModel.self, mutation) { [weak self] _ in
                    self?.view?.stopLoading()
                    self?.view?.successSaveUniquesPlant()
                } failureHandler: { [weak self] error in
                    self?.view?.stopLoading()
                    self?.view?.failure(error: error.localizedDescription)
                }
            } else {
                self?.view?.stopLoading()
            }
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
}
