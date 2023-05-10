//
//  SchedulePresenter.swift
//  Lill
//
//  Created by mob325 on 24.11.2021.
//

import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol ScheduleOutputProtocol: BaseController {
    func success()
    func successDone(gardenID: String, modelID: UUID)
    func successDoneAll(model: ScheduleMainModel)
    func successId(model: [GardenPlantByMainIdsModel], modelSchedule: ScheduleMainModel, row: Int)
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol SchedulePresenterProtocol: AnyObject {
    init(view: ScheduleOutputProtocol)
    
    func doneAllCares()
    func getScheduleAll()
    func gardensById(ids: [String], modelSchedule: ScheduleMainModel, row: Int)
    func doneCareByGarden(gardenID: String, careTypeId: Int, modelID: UUID)
}

class SchedulePresenter: SchedulePresenterProtocol {

    private weak var view: ScheduleOutputProtocol?
    
    var currentSchedule: [ScheduleMainModel] = []
    var futureSchedule: [ScheduleMainModel] = []
    var nextWeekSchedule: [ScheduleMainModel] = []
    
    required init(view: ScheduleOutputProtocol) {
        self.view = view
    }
    
    func getScheduleAll() {
        view?.startLoader()
        var errors: [Error?] = []
        
        let group = DispatchGroup()
        
        group.enter()
        let query = ScheduleByGardensQuery(onlyFuture: false, nextWeek: false)
        let _ = Network.shared.query(model: ScheduleByGardensModel.self, query, controller: view, successHandler: { [weak self] model in
            self?.currentSchedule = model.scheduleByGardens
            group.leave()
        }, failureHandler: { error in
            errors.append(error)
            group.leave()
        })

        group.enter()
        let query2 = ScheduleByGardensQuery(onlyFuture: true, nextWeek: false)
        let _ = Network.shared.query(model: ScheduleByGardensModel.self, query2, controller: view, successHandler: { [weak self] model in
            self?.futureSchedule = model.scheduleByGardens
            group.leave()
        }, failureHandler: { error in
            errors.append(error)
            group.leave()
        })

        group.enter()
        let query3 = ScheduleByGardensQuery(nextWeek: true)
        let _ = Network.shared.query(model: ScheduleByGardensModel.self, query3, controller: view, successHandler: { [weak self] model in
            self?.nextWeekSchedule = model.scheduleByGardens
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
    
    func gardensById(ids: [String], modelSchedule: ScheduleMainModel, row: Int) {
        view?.startLoader()
        
        let query = GardenPlantByIdsQuery(ids: ids)
        let _ = Network.shared.query(model: GardenPlantByIdsModel.self, query, controller: view, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successId(model: model.gardenPlantByIds, modelSchedule: modelSchedule, row: row)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func doneCareByGarden(gardenID: String, careTypeId: Int, modelID: UUID) {
        view?.startLoader()
        
        let mutation = DoneCareByGardenPlantMutation(gardenPlantId: gardenID, careTypeId: careTypeId)
        let _ = Network.shared.mutation(model: DoneCareByGardenPlantModel.self, mutation, controller: view, successHandler: { [weak self] model in
            self?.view?.stopLoading()
            self?.view?.successDone(gardenID: gardenID, modelID: modelID)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func doneCareByGardens(model: ScheduleMainModel) {
        view?.startLoader()
        
        let mutation =  DoneCareByGardenPlantsMutation(gardenPlantIds: model.gardenPlantIds, careTypeId: model.careTypeId)
        let _ = Network.shared.mutation(model: DoneCareByGardenPlantsModel.self, mutation, controller: view, successHandler: { [weak self] _ in
            self?.view?.stopLoading()
            self?.view?.successDoneAll(model: model)
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
    
    func doneAllCares() {
        guard let gardenId = KeychainService.standard.me?.defaultGardenId else { return }
        
        view?.startLoader()
        
        let mutation =  DoneAllCaresByGardensMutation(gardenIds: [gardenId])
        let _ = Network.shared.mutation(model: DoneAllCaresByGardensModel.self, mutation, controller: view, successHandler: { [weak self] _ in
            self?.getScheduleAll()
        }, failureHandler: { [weak self] error in
            self?.view?.stopLoading()
            self?.view?.failure(error: error.localizedDescription)
        })
    }
}
