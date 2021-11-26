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
        if scheldureSegment.selectedSegmentIndex == 0 {
            var count = presenter.currentSchedule.count + presenter.futureSchedule.count
            if presenter.futureSchedule.count > 0 {
                count += 1
            }
            
            return count
        } else {
            return presenter.nextWeekSchedule.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if scheldureSegment.selectedSegmentIndex == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellScheduleIdentifier) as? ScheduleCell else { return UITableViewCell() }
            
            if let model = presenter.nextWeekSchedule[safe: indexPath.row] {
                cell.setupCell(model: model, needCornerBottom: indexSelected.contains(indexPath.row))
            }
            
            return cell
        } else {
            switch indexPath.row {
            case 0..<presenter.currentSchedule.count:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellScheduleIdentifier) as? ScheduleCell else { return UITableViewCell() }
                
                if let model = presenter.currentSchedule[safe: indexPath.row] {
                    cell.setupCell(model: model, needCornerBottom: indexSelected.contains(indexPath.row))
                }
                
                cell.delegate = self
                return cell
            case presenter.currentSchedule.count:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellScheduleDoneIdentifier) as? ScheduleDoneAllCell else { return UITableViewCell() }
                
                return cell
            default:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellScheduleIdentifier) as? ScheduleCell else { return UITableViewCell() }
                
                if let model = presenter.futureSchedule[safe: indexPath.row - presenter.currentSchedule.count - 1] {
                    cell.setupCell(model: model, needCornerBottom: indexSelected.contains(indexPath.row))
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
            
            if scheldureSegment.selectedSegmentIndex == 1 {
                model = presenter.nextWeekSchedule[safe: indexPath.row]
            } else {
                switch indexPath.row {
                case 0..<presenter.currentSchedule.count:
                    model = presenter.currentSchedule[safe: indexPath.row]
                case presenter.currentSchedule.count:
                    break
                default:
                    model = presenter.futureSchedule[safe: indexPath.row - presenter.currentSchedule.count - 1]
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
    func scheduleCellCare(cell: ScheduleCell, model: ScheduleMainModel, gardenModel: GardenPlantByMainIdsModel) {
        if let index = presenter.futureSchedule.firstIndex(where: {$0.id == model.id}) {
            if let indexGarden = presenter.futureSchedule[index].customGardens?.firstIndex(where: {$0.id == gardenModel.id}) {
                presenter.futureSchedule[index].customGardens?[indexGarden].setCustomIsDone(true)
                UIView.performWithoutAnimation {
                    self.tableView.reloadRows(at: [IndexPath(row: index + 1 + presenter.currentSchedule.count, section: 0)], with: .none)
                }
            }
        } else if let index = presenter.currentSchedule.firstIndex(where: {$0.id == model.id}) {
            if let indexGarden = presenter.currentSchedule[index].customGardens?.firstIndex(where: {$0.id == gardenModel.id}) {
                presenter.currentSchedule[index].customGardens?[indexGarden].setCustomIsDone(true)
                UIView.performWithoutAnimation {
                    self.tableView.reloadRows(at: [IndexPath(row: index, section: 0)], with: .none)
                  }
            }
        }
    }
}
