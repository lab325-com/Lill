//
//  GardenDetailController+TableView.swift
//  Lill
//
//  Created by Andrey S on 18.11.2021.
//

import UIKit

//----------------------------------------------
// MARK: - UITableViewDataSource, UITableViewDelegate
//----------------------------------------------

extension GardenDetailController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = 1
        
        if selectedTag == 0 {
            if presenter.about.count != 0 || presenter.cares.count != 0 {
                count += 1
            }
            
            if presenter.about.count != 0 {
                count += 1
            }
            
            if presenter.cares.count != 0 {
                count += 1
            }
            
            return count
        } else if selectedTag == 1 {
            count += 2
            if presenter.cares.count != 0 {
                
                if presenter.scheduleFuture.count != 0 {
                    count += presenter.scheduleFuture.count
                }
                
                if presenter.scheduleNoFuture.count != 0 {
                    count += presenter.scheduleNoFuture.count + 1
                }
            }
            return count
        } else {
            count += 3
            if presenter.historyList.count > 0 {
                count += 1
            }
            return count + presenter.historyList.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if selectedTag == 0 {
            switch indexPath.row {
            case 0:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellTitleIdentifier) as? GardenDetailTitleCell else { return UITableViewCell() }
                
                cell.delegate = self
                if let model = presenter.model {
                    cell.setupCell(model: model, cares: presenter.cares)
                }
                return cell
            case 1:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellSegmentIdentifier) as? GardenDetailSegmentCell else { return UITableViewCell() }
                cell.setupCell(selectedTag: selectedTag, needCornerBottom: presenter.about.count == 0)
                cell.delegate = self
                return cell
            case 2:
                if presenter.about.count != 0 {
                    guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellAboutIdentifier) as? GardenDetailAboutCell else { return UITableViewCell() }
                    
                    if let model = presenter.model {
                        cell.setupCell(model: model, abouts: presenter.about)
                    }
                    cell.delegate = self
                    return cell
                } else {
                    guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellCaresIdentifier) as? GardenDetailCaresCell else { return UITableViewCell() }
                    
                    if let model = presenter.model {
                        cell.setupCell(model: model, cares: presenter.cares)
                    }
                    
                    return cell
                }
                
            case 3:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellCaresIdentifier) as? GardenDetailCaresCell else { return UITableViewCell() }
                
                if let model = presenter.model {
                    cell.setupCell(model: model, cares: presenter.cares)
                }
                
                return cell
                
            default:
                return UITableViewCell()
            }
        } else  if selectedTag == 1 {
            switch indexPath.row {
            case 0:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellTitleIdentifier) as? GardenDetailTitleCell else { return UITableViewCell() }
                
                cell.delegate = self
                if let model = presenter.model {
                    cell.setupCell(model: model, cares: presenter.cares)
                }
                return cell
            case 1:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellSegmentIdentifier) as? GardenDetailSegmentCell else { return UITableViewCell() }
                cell.setupCell(selectedTag: selectedTag)
                cell.delegate = self
                return cell
            case 2:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellEditIdentifier) as? GardenDetailEditCareCell else { return UITableViewCell() }
                cell.delegate = self
                return cell
            default:
                if presenter.scheduleFuture.count != 0 {
                    if indexPath.row >= 3 && indexPath.row < presenter.scheduleFuture.count + 3 {
                        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellScheldureIdentifier) as? GardenDetailScheduleCell else { return UITableViewCell() }
                
                        if let model = presenter.scheduleFuture[safe: indexPath.row - 3] {
                            cell.setupCell(model: model)
                        }
                        return cell
                    } else if indexPath.row == (presenter.scheduleFuture.count + 3) {
                        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellAllWaitingIdentifier) as? GardenDetailAllWaitingCell else { return UITableViewCell() }
                        cell.delegate = self
                        
                        return cell
                    } else if indexPath.row >= (presenter.scheduleFuture.count + 4) && indexPath.row < (presenter.scheduleFuture.count + 4 + presenter.scheduleNoFuture.count) {
                        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellScheldureIdentifier) as? GardenDetailScheduleCell else { return UITableViewCell() }
                
                        if let model = presenter.scheduleNoFuture[safe: indexPath.row - presenter.scheduleFuture.count - 4] {
                            cell.setupCell(model: model)
                        }
                        return cell
                    }
                } else {
                    if indexPath.row == 3 {
                        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellAllWaitingIdentifier) as? GardenDetailAllWaitingCell else { return UITableViewCell() }
                        cell.delegate = self
                        
                        return cell
                    } else if indexPath.row >= 4 && indexPath.row < (presenter.scheduleNoFuture.count + 4) {
                        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellScheldureIdentifier) as? GardenDetailScheduleCell else { return UITableViewCell() }
                
                        if let model = presenter.scheduleNoFuture[safe: indexPath.row - presenter.scheduleFuture.count - 4] {
                            cell.setupCell(model: model)
                        }
                        return cell
                    }
                }
                return UITableViewCell()
            }
        } else {
            switch indexPath.row {
            case 0:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellTitleIdentifier) as? GardenDetailTitleCell else { return UITableViewCell() }
                
                cell.delegate = self
                if let model = presenter.model {
                    cell.setupCell(model: model, cares: presenter.cares)
                }
                return cell
            case 1:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellSegmentIdentifier) as? GardenDetailSegmentCell else { return UITableViewCell() }
                cell.setupCell(selectedTag: selectedTag)
                cell.delegate = self
                return cell
            case 2:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellHistoryTitleIdentifier) as? GadenDetailHistoryTitleCell else { return UITableViewCell() }
                cell.setupCell(model: presenter.historyMediaModel)
                return cell
            case 3:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellHistoryStatisticIdentifier) as? GardenDetailHistoryStatisticCell else { return UITableViewCell() }
                cell.setupCell(model: presenter.historyStatistics, isRounded: presenter.historyList.count == 0)
                return cell
            case 4:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellHistoryListHeaderCell) as? GardenDetailListHeaderCell else { return UITableViewCell() }
                
                return cell
            default:
                
                guard let model = presenter.historyList[safe: indexPath.row - 5] else { return UITableViewCell() }
                if model.type == .gardenPlantHistoryTypeCare || model.type == .gardenPlantHistoryTypeCaresToDefault {
                    guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellHistoryListCareCell) as? GardenDetailListCaresCell else { return UITableViewCell() }
                    cell.setupCell(model: model, isHiddenTop: indexPath.row == 5, isHiddenBottom: indexPath.row == 4 + presenter.historyList.count)
                    return cell
                } else {
                    guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellHistoryListPhotoCell) as? GardenDetailHistoryPhotoCell else { return UITableViewCell() }
                    cell.setupCell(model: model, isHiddenTop: indexPath.row == 5, isHiddenBottom: indexPath.row == 4 + presenter.historyList.count)
                    return cell
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            tableView.bringSubviewToFront(cell)
        }
        
        if selectedTag == 2 && indexPath.row == presenter.historyList.count - 1 && presenter.historyPagination?.nextPageExist == true {
            presenter.historyList(gardenId: id)
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        updateHeaderView()
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

//----------------------------------------------
// MARK: - GardenDetailSegmentDelegate
//----------------------------------------------

extension GardenDetailController: GardenDetailSegmentDelegate {
    func changeSegment(cell: GardenDetailSegmentCell, selectedTag: Int) {
        if selectedTag == 0 {
            AnalyticsHelper.sendFirebaseEvents(events: .card_about)
        } else if selectedTag == 1 {
            AnalyticsHelper.sendFirebaseEvents(events: .card_care_plan)
        }
        
        self.selectedTag = selectedTag
        tableView.reloadData()
    }
}

//----------------------------------------------
// MARK: - GardenDetailAboutDelegate
//----------------------------------------------

extension GardenDetailController: GardenDetailAboutDelegate {
    func gardenDetailWiki(cell: GardenDetailAboutCell) {
        if let url = URL(string: wikiUrl) {
            UIApplication.shared.open(url)
        }
    }
}

//----------------------------------------------
// MARK: - GardenDetailTitleCellDelegate
//----------------------------------------------

extension GardenDetailController: GardenDetailTitleCellDelegate {
    func gardenDetailTitleSelectBell(cell: GardenDetailTitleCell, notification: Bool) {
        presenter.getDetailSetNotification(gardenId: id, notification: notification)
    }
}

//----------------------------------------------
// MARK: - GardenDetailEditCareCellDelegate
//----------------------------------------------

extension GardenDetailController: GardenDetailEditCareCellDelegate {
    func gardenDetailEditCareCellEdit(cell: GardenDetailEditCareCell) {
        GardenRouter(presenter: self.navigationController).pushEditCarePlant(gardenPlantId: self.id, delegate: self)
    }
}

//----------------------------------------------
// MARK: - GardenDetailEditCareCellDelegate
//----------------------------------------------

extension GardenDetailController: GardenDetailAllWaitingCellDelegate {
    func gardenDetailAllWaitingCellDoneCares(cell: GardenDetailAllWaitingCell) {
        presenter.doneAllCares(gardenPlantId: id)
    }
}
