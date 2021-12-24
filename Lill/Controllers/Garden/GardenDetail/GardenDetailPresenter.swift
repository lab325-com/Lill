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
    func successNotificationChange(notification: Bool)
    func successDelete()
    func successUploadMedia(imageUrl: String)
    func successDoneCare()
    func successDoneAllCares()
    func failure(error: String)
}

extension GardenDetailOutputProtocol {
    func successNotificationChange(notification: Bool) {}
    func success() {}
    func successDelete() {}
    func successUploadMedia(imageUrl: String) {}
    func successDoneCare() {}
    func successDoneAllCares () {}
    func failure(error: String) {}
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol GardenDetailPresenterProtocol: AnyObject {
    init(view: GardenDetailOutputProtocol)
    
    func getDetailGarden(gardenId: String, updateHistoryOnly: Bool, updateTiteImage: Bool)
    func getDetailSetNotification(gardenId: String, notification: Bool)
    func doneAllCares(gardenPlantId: String)
    func historyList(gardenId: String)
}

class GardenDetailPresenter: GardenDetailPresenterProtocol {

    private weak var view: GardenDetailOutputProtocol?
    
    var model: GardenPlanByIDModel?
    var cares: [(type: PlantsCareType, care: GardenShortPlantCaresModel)] = []
    var about: [PlantsAboutType] = []
    
    var historyStatistics: GardenPlantStatisticsMainModel?
    var historyList: [GardenPlantsHistoryListModel] = []
    var historyPagination: PaginationModel?
    var historyMediaModel: [MediaModel] = []
    
    var scheduleFuture: [ScheduleByGardenPlantMainModel] = []
    var scheduleNoFuture: [ScheduleByGardenPlantMainModel] = []
    
    required init(view: GardenDetailOutputProtocol) {
        self.view = view
    }
    
    func getDetailGarden(gardenId: String, updateHistoryOnly: Bool, updateTiteImage: Bool) {
        view?.startLoader()
        var errors: [Error?] = []
        
        
        let group = DispatchGroup()
        
        if updateTiteImage {
            group.enter()
            let query = GardenPlantByIdQuery(id: gardenId)
            let _ = Network.shared.query(model: GardenPlanByIDModel.self, query, controller: view, successHandler: { [weak self] model in
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
        } else if !updateHistoryOnly {
            group.enter()
            let query = GardenPlantByIdQuery(id: gardenId)
            let _ = Network.shared.query(model: GardenPlanByIDModel.self, query, controller: view, successHandler: { [weak self] model in
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
            let _ = Network.shared.query(model: ScheduleByGardenPlantModel.self, query2, controller: view, successHandler: { [weak self] model in
                self?.scheduleFuture = model.scheduleByGardenPlant
                group.leave()
            }, failureHandler: { error in
                errors.append(error)
                group.leave()
            })
            
            group.enter()
            let query3 = ScheduleByGardenPlantQuery(gardenPlantId: gardenId, onlyFuture: false)
            let _ = Network.shared.query(model: ScheduleByGardenPlantModel.self, query3, controller: view, successHandler: { [weak self] model in
                self?.scheduleNoFuture = model.scheduleByGardenPlant
                group.leave()
            }, failureHandler: { error in
                errors.append(error)
                group.leave()
            })
            
            group.enter()
            let query4 = GardenPlantStatisticsQuery(gardenPlantId: gardenId)
            let _ = Network.shared.query(model: GardenPlantStatisticsModel.self, query4, controller: view, successHandler: { [weak self] model in
                self?.historyStatistics = model.gardenPlantStatistics
                group.leave()
            }, failureHandler: { error in
                errors.append(error)
                group.leave()
            })
            
            group.enter()
            let query5 = GardenPlantHistoryQuery(gardenPlantId: gardenId, pagination: InputPagination(offset: 0, limit: 8))
            let _ = Network.shared.query(model: GardenPlantHistoryModel.self, query5, controller: view, successHandler: { [weak self] model in
                self?.historyList = model.gardenPlantHistory.gardenPlantsHistoryList
                self?.historyPagination = model.gardenPlantHistory.pagination
                group.leave()
            }, failureHandler: { error in
                errors.append(error)
                group.leave()
            })
            
            group.enter()
            let query6 = GalleryImagesQuery(gardenPlantId: gardenId)
            let _ = Network.shared.query(model: GalleryImagesModel.self, query6, controller: view, successHandler: { [weak self] model in
                self?.historyMediaModel = model.galleryImages
                group.leave()
            }, failureHandler: { error in
                errors.append(error)
                group.leave()
            })
        } else {
            group.enter()
            let query5 = GardenPlantHistoryQuery(gardenPlantId: gardenId, pagination: InputPagination(offset: 0, limit: 8))
            let _ = Network.shared.query(model: GardenPlantHistoryModel.self, query5, controller: view, successHandler: { [weak self] model in
                self?.historyList = model.gardenPlantHistory.gardenPlantsHistoryList
                self?.historyPagination = model.gardenPlantHistory.pagination
                group.leave()
            }, failureHandler: { error in
                errors.append(error)
                group.leave()
            })
            
            group.enter()
            let query6 = GalleryImagesQuery(gardenPlantId: gardenId)
            let _ = Network.shared.query(model: GalleryImagesModel.self, query6, controller: view, successHandler: { [weak self] model in
                self?.historyMediaModel = model.galleryImages
                group.leave()
            }, failureHandler: { error in
                errors.append(error)
                group.leave()
            })
        }
        
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
        
        let _ = Network.shared.upload(model: MediaDataModel.self, mutation, controller: view, files: [file]) { [weak self] model in
            self?.view?.stopLoading()
            
            let mutation2 = GardenPlantUpdateMutation(record: GardenPlantUpdateInput(id: id, userMainImageId: model.uploadMedia.id  ?? ""))
            let _ = Network.shared.mutation(model: GardenPlantUpdateModel.self, mutation2, controller: self?.view) { [weak self] model in
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
        let _ = Network.shared.mutation(model: GardenPlantDeleteModel.self, mutation, controller: view) { [weak self] _ in
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
    
    func getDetailSetNotification(gardenId: String, notification: Bool) {
        view?.startLoader()
        
        let mutation = SetGardenPlantNotificationsMutation(gardenPlantId: gardenId, sendNotifications: notification)
        let _ = Network.shared.mutation(model: SetGardenPlantNotificationsModel.self, mutation, controller: view) { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successNotificationChange(notification: notification)
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
    
    func doneAllCares(gardenPlantId: String) {
        view?.startLoader()
        
        let mutation = DoneAllCaresByGardenPlantMutation(gardenPlantId: gardenPlantId)
        
        let _ = Network.shared.mutation(model: DoneAllCaresByGardenPlantModel.self, mutation, controller: view) { [weak self] model in
            self?.view?.stopLoading()
            if model.doneAllCaresByGardenPlant {
                self?.view?.successDoneAllCares()
            }
        } failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        }
    }
    
    func historyList(gardenId: String) {
        view?.startLoader()
        
        let query = GardenPlantHistoryQuery(gardenPlantId: gardenId, pagination: InputPagination(offset: historyList.count, limit: 30))
        let _ = Network.shared.query(model: GardenPlantHistoryModel.self, query, controller: view, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.historyList.append(contentsOf: model.gardenPlantHistory.gardenPlantsHistoryList)
            self?.historyPagination = model.gardenPlantHistory.pagination
            self?.view?.success()
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
}
