//
//  AddPlantsCarePresenter.swift
//  Lill
//
//  Created by mob325 on 15.11.2021.
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
    func sendUniquesPlants(img: UIImage, text: String, plantsTime: [AddPlantTimeModel], gardenId: String)
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
        
        request = Network.shared.query(model: CareTypesModel.self, CareTypesQuery(), controller: view) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successCares(models: model.careTypes)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
    
    func sendUniquesPlants(img: UIImage, text: String, plantsTime: [AddPlantTimeModel], gardenId: String) {
        func dateToString(fromDate date: Date) -> String {
            //let dateFormmater = DateFormatter()
            //dateFormmater.timeZone = TimeZone(identifier: "UTC")
            //dateFormmater.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
            //return dateFormmater.string(from: date)
            let calendar = Calendar.current

            let hour = calendar.component(.hour, from: date)
            let minutes = calendar.component(.minute, from: date)
            let seconds = calendar.component(.second, from: date)
            
            return "\(hour):\(minutes):\(seconds)"
        }
        
        view?.startLoader()
        
        var cares: [GPCareCreateInput] = []
        
        for plantsTime in plantsTime {
            let dateString = dateToString(fromDate: plantsTime.time ?? Date())
            if let id = Int(plantsTime.type.id ?? "") {
                cares.append(GPCareCreateInput(count: plantsTime.frequency, period: plantsTime.period, sendNotificationAt: dateString, careTypeId: id))
            }
        }
        
        let plantsImage = img.jpegData(compressionQuality: 0.9)!
        let file = GraphQLFile(fieldName: "image", originalName: "image.jpeg", mimeType: "image/jpeg", data: plantsImage)
        let uploadMedia = UploadMediaMutation(image: "image")
        
        let _ = Network.shared.upload(model: MediaDataModel.self, uploadMedia, controller: view, files: [file]) { [weak self] model in
            if let userMainImageId = model.uploadMedia.id {
                let input = GardenPlantCreateInput(name: text, gardenId: gardenId, userMainImageId: userMainImageId)
                let record = GardenPlantCreateRecordInput(plant: input, cares: cares)
                let mutation = GardenPlantCreateMutation(record: record)
                
                let _ = Network.shared.mutation(model: GardenPlantCreateModel.self, mutation, controller: self?.view) { [weak self] _ in
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
