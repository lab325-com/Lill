//
//  ScheduleController+TableView.swift
//  Lill
//
//  Created by Andrey S on 23.11.2021.
//

import Foundation
import UIKit

extension ScheduleController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if scheldureSegment.index == 0 {
            var count = presenter.currentSchedule.count + presenter.futureSchedule.count
            if presenter.currentSchedule.count > 0 {
                count += 1
            }
            return count
        } else {
            return presenter.nextWeekSchedule.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if scheldureSegment.index == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellScheduleIdentifier) as? ScheduleCell else { return UITableViewCell() }
            
            if let model = presenter.nextWeekSchedule[safe: indexPath.row] {
                cell.setupCell(model: model, needCornerBottom: indexSelected.contains(indexPath.row), showCare: false)
            }
            
            return cell
        } else {
            if presenter.currentSchedule.count > 0 {
                switch indexPath.row {
                case 0..<presenter.currentSchedule.count:
                    guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellScheduleIdentifier) as? ScheduleCell else { return UITableViewCell() }
                    
                    if let model = presenter.currentSchedule[safe: indexPath.row] {
                        cell.setupCell(model: model, needCornerBottom: indexSelected.contains(indexPath.row), showCare: model.status == .done ? false : true)
                    }
                    
                    cell.delegate = self
                    return cell
                case presenter.currentSchedule.count:
                    guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellScheduleDoneIdentifier) as? ScheduleDoneAllCell else { return UITableViewCell() }
                    
                    cell.delegate = self
                    return cell
                default:
                    guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellScheduleIdentifier) as? ScheduleCell else { return UITableViewCell() }
                    
                    if let model = presenter.futureSchedule[safe: indexPath.row - presenter.currentSchedule.count - 1] {
                        cell.setupCell(model: model, needCornerBottom: indexSelected.contains(indexPath.row), showCare: model.status == .done ? false : true)
                    } else {
                        debugPrint("ERROR: ->>>>>>>>>>> CELL INDEX")
                    }
                    cell.delegate = self
                    return cell
                }
            } else {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellScheduleIdentifier) as? ScheduleCell else { return UITableViewCell() }
                
                if let model = presenter.futureSchedule[safe: indexPath.row] {
                    cell.setupCell(model: model, needCornerBottom: indexSelected.contains(indexPath.row), showCare: model.status == .done ? false : true)
                } else {
                    debugPrint("ERROR: ->>>>>>>>>>> CELL INDEX")
                }
                cell.delegate = self
                return cell
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexSelected.contains(indexPath.row) {
            indexSelected.remove(indexPath.row)
            tableView.reloadRows(at: [indexPath], with: .automatic)
        } else {
            var model: ScheduleMainModel?
            if scheldureSegment.index == 1 {
                model = presenter.nextWeekSchedule[safe: indexPath.row]
            } else {
                if presenter.currentSchedule.count > 0 {
                    switch indexPath.row {
                    case 0..<presenter.currentSchedule.count:
                        model = presenter.currentSchedule[safe: indexPath.row]
                    case presenter.currentSchedule.count:
                        break
                    default:
                        model = presenter.futureSchedule[safe: indexPath.row - presenter.currentSchedule.count - 1]
                    }
                } else {
                    model = presenter.futureSchedule[safe: indexPath.row]
                }
            }
            
            if let model = model {
                if model.customGardens?.count ?? 0 > 0 {
                    indexSelected.insert(indexPath.row)
                    tableView.reloadRows(at: [indexPath], with: .automatic)
                } else {
                    presenter.gardensById(ids: model.gardenPlantIds, modelSchedule: model, row: indexPath.row)
                }
            }
        }
    }
}

//----------------------------------------------
// MARK: - ScheduleCellDelegate
//----------------------------------------------

extension ScheduleController: ScheduleCellDelegate {
    func scheduleCellCareAll(cell: ScheduleCell, model: ScheduleMainModel) {
        presenter.doneCareByGardens(model: model)
    }
    
    func scheduleCellCare(cell: ScheduleCell, model: ScheduleMainModel, gardenModel: GardenPlantByMainIdsModel) {
        presenter.doneCareByGarden(gardenID: gardenModel.id, careTypeId: model.careTypeId, modelID: model.id)
    }
}

//----------------------------------------------
// MARK: - ScheduleDoneAllDelegate
//----------------------------------------------

extension ScheduleController: ScheduleDoneAllDelegate {
    func scheduleDoneAll(cell: ScheduleDoneAllCell) {
        presenter.doneAllCares()
    }
}
