//
//  SchedulePresenter.swift
//  Lill
//
//  Created by Andrey S on 24.11.2021.
//

import Foundation
import Apollo
import UIKit

//----------------------------------------------
// MARK: - Outputs Protocol
//----------------------------------------------

protocol ScheduleOutputProtocol: BaseController {
    func success()
    func failure(error: String)
}

//----------------------------------------------
// MARK: - Inputs Protocol
//----------------------------------------------

protocol SchedulePresenterProtocol: AnyObject {
    init(view: ScheduleOutputProtocol)
    
    func getScheduleAll()
    
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
}
