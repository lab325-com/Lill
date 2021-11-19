//
//  GardenPresenter.swift
//  Lill
//
//  Created by Andrey S on 16.11.2021.
//

import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol GardenDetailOutputProtocol: BaseController {
    func success()
    func successDelete()
    func successUploadMedia(imageUrl: String)
    func failure(error: String)
}

extension GardenDetailOutputProtocol {
    func success() {}
    func successDelete() {}
    func successUploadMedia(imageUrl: String) {}
    func failure(error: String) {}
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenDetailPresenterProtocol: AnyObject {
    init(view: GardenDetailOutputProtocol)
    
    func getDetailGarden(gardenId: String)
    
}

class GardenDetailPresenter: GardenDetailPresenterProtocol {

    private weak var view: GardenDetailOutputProtocol?
    
    var model: GardenPlanByIDModel?
    var cares: [(type: PlantsCareType, care: GardenShortPlantCaresModel)] = []
    var about: [PlantsAboutType] = []
    
    var scheduleFuture: [ScheduleByGardenPlantMainModel] = []
    var scheduleNoFuture: [ScheduleByGardenPlantMainModel] = []
    
    required init(view: GardenDetailOutputProtocol) {
        self.view = view
    }
    
    func getDetailGarden(gardenId: String) {
        view?.startLoader()
        var errors: [Error?] = []
        
        let group = DispatchGroup()
        
        group.enter()
        let query = GardenPlantByIdQuery(id: gardenId)
        let _ = Network.shared.query(model: GardenPlanByIDModel.self, query, successHandler: { [weak self] model in
            guard let `self` = self else {
                group.leave()
                return
            }
            
            self.model = model

            let about = self.createAbout(model: model.gardenPlantById.plant?.climate)
            self.about = about
            
            let cares = self.createCares(model: model)
            self.cares = cares
            group.leave()
        }, failureHandler: { error in
            errors.append(error)
            group.leave()
        })

        group.enter()
        let query2 = ScheduleByGardenPlantQuery(gardenPlantId: gardenId, onlyFuture: true)
        let _ = Network.shared.query(model: ScheduleByGardenPlantModel.self, query2, successHandler: { [weak self] model in
            self?.scheduleFuture = model.scheduleByGardenPlant
            group.leave()
        }, failureHandler: { error in
            errors.append(error)
            group.leave()
        })

        group.enter()
        let query3 = ScheduleByGardenPlantQuery(gardenPlantId: gardenId, onlyFuture: false)
        let _ = Network.shared.query(model: ScheduleByGardenPlantModel.self, query3, successHandler: { [weak self] model in
            self?.scheduleNoFuture = model.scheduleByGardenPlant
            group.leave()
        }, failureHandler: { error in
            errors.append(error)
            group.leave()
        })
        
        group.notify(queue: DispatchQueue.main) { [weak self] in
            self?.view?.stopLoading()
            if let error = errors.first??.localizedDescription {
                self?.view?.failure(error: error)
            } else {
                self?.view?.success()
            }
        }
    }
    
    func uploadMedia(id: String, img: UIImage) {
        view?.startLoader()
        
        let plantsImage = img.jpegData(compressionQuality: 0.9)!

        let file = GraphQLFile(fieldName: "image", originalName: "image.jpeg", mimeType: "image/jpeg", data: plantsImage)
        
        let mutation = UploadMediaMutation(image: "image")
        
        let _ = Network.shared.upload(model: MediaDataModel.self, mutation, files: [file]) { [weak self] model in
            self?.view?.stopLoading()
            
            let mutation2 = GardenPlantUpdateMutation(record: GardenPlantUpdateInput(id: id, userMainImageId: model.uploadMedia.id  ?? ""))
            let _ = Network.shared.mutation(model: GardenPlantUpdateModel.self, mutation2) { [weak self] model in
                self?.view?.stopLoading()
                self?.view?.successUploadMedia(imageUrl: model.gardenPlantUpdate.userMainImage?.urlIosFull ?? "")
            } failureHandler: { [weak self] error in
                self?.view?.stopLoading()
                self?.view?.failure(error: error.localizedDescription)
            }
            
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
    
    func deletePlant(plantId: String) {
        view?.startLoader()
        
        let mutation = GardenPlantDeleteMutation(id: plantId)
        let _ = Network.shared.mutation(model: GardenPlantDeleteModel.self, mutation) { [weak self] _ in
            self?.view?.stopLoading()
            self?.view?.successDelete()
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
    
    private func createAbout(model: ClimatModel?) -> [PlantsAboutType] {
        var abouts: [PlantsAboutType] = []
        
        if let _ = model?.habit {
            abouts.append(.habit)
        }
        
        if let _ = model?.shade {
            abouts.append(.shade)
        }

        if let _ = model?.moisture {
            abouts.append(.moisture)
        }

        if let _ = model?.height {
            abouts.append(.height)
        }

        if let _ = model?.soil {
            abouts.append(.soil)
        }

        if let _ = model?.ph {
            abouts.append(.ph)
        }

        if let _ = model?.deciduous {
            abouts.append(.deciduous)
        }

        if let _ = model?.hardiness {
            abouts.append(.hardiness)
        }
        
        return abouts
    }
    
    func createCares(model: GardenPlanByIDModel) -> [(type: PlantsCareType, care: GardenShortPlantCaresModel)] {
        var caresType = [(type: PlantsCareType, care: GardenShortPlantCaresModel)]()
        let cares = model.gardenPlantById.gardenPlantCares
        for care in cares {
            
            caresType.append((type: care.type.name, care: care))
            if caresType.count == 4 {
                return caresType
            }
        }
        
        return caresType
    }
}
