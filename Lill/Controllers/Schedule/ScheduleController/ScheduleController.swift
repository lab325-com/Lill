
import UIKit

class ScheduleController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var scheldureSegment: UISegmentedControl!
    @IBOutlet weak var emptyView: UIView!
    
    @IBOutlet weak var scheduleTitleLabel: UILabel!
    @IBOutlet weak var emptyTextLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    
    lazy var presenter = SchedulePresenter(view: self)
    let cellScheduleIdentifier = "ScheduleCell"
    let cellScheduleDoneIdentifier = "ScheduleDoneAllCell"
    
    var indexSelected: Set<Int> = []

    //----------------------------------------------
    // MARK: - Life Cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = true
        addSwipeOnScreen = true
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        navigationItem.title = RLocalization.scheldure_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        scheduleTitleLabel.text = RLocalization.scheldure_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        emptyTextLabel.text = RLocalization.scheldure_empty_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        scheldureSegment.setTitle(RLocalization.scheldure_today.localized(PreferencesManager.sharedManager.languageCode.rawValue), forSegmentAt: 0)
        scheldureSegment.setTitle(RLocalization.scheldure_next_days.localized(PreferencesManager.sharedManager.languageCode.rawValue), forSegmentAt: 1)
        
        presenter.getScheduleAll()
        tableView.alpha = 0
        
        tableView.contentInset.bottom = 10
        
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.register(UINib(nibName: cellScheduleIdentifier, bundle: nil), forCellReuseIdentifier: cellScheduleIdentifier)
        tableView.register(UINib(nibName: cellScheduleDoneIdentifier, bundle: nil), forCellReuseIdentifier: cellScheduleDoneIdentifier)
        
        tableView.tableFooterView = UIView()
        tableView.addHeader(withTarget: self, action: #selector(self.headerRefresh(sender:)))
        tableView.reloadData()
    }
    
    
    private func changeViews() {
        if scheldureSegment.selectedSegmentIndex == 0 {
            if presenter.currentSchedule.count == 0 && presenter.futureSchedule.count == 0 {
                emptyView.isHidden = false
                tableView.alpha = 0
            } else {
                UIView.animate(withDuration: 0.3) {
                    self.emptyView.isHidden = true
                    self.tableView.alpha = 1.0
                }
            }
        } else {
            if presenter.nextWeekSchedule.count == 0 {
                emptyView.isHidden = false
                tableView.alpha = 0
            } else {
                UIView.animate(withDuration: 0.3) {
                    self.emptyView.isHidden = true
                    self.tableView.alpha = 1.0
                }
            }
        }
        
        tableView.reloadData()
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @objc func headerRefresh(sender: AnyObject) {
        presenter.getScheduleAll()
    }
    
    @IBAction func actionScheduleSettings(sender: UIButton) {
        ScheduleRouter(presenter: navigationController).pushScheduleSettings()
    }
    
    @IBAction func actionChangeSheldure(_ sender: UISegmentedControl) {
        changeViews()
    }
}

//----------------------------------------------
// MARK: - ScheduleOutputProtocol
//----------------------------------------------

extension ScheduleController: ScheduleOutputProtocol {
    func successDoneAll(model: ScheduleMainModel) {
        if let index = presenter.futureSchedule.firstIndex(where: {$0.id == model.id}) {
            
            for (indexGarden, _) in (presenter.futureSchedule[index].customGardens ?? []).enumerated() {
                presenter.futureSchedule[index].customGardens?[indexGarden].setCustomIsDone(true)
            }
            UIView.performWithoutAnimation {
                self.tableView.reloadRows(at: [IndexPath(row: index + 1 + presenter.currentSchedule.count, section: 0)], with: .none)
            }
        } else if let index = presenter.currentSchedule.firstIndex(where: {$0.id == model.id}) {
            for (indexGarden, _) in (presenter.currentSchedule[index].customGardens ?? []).enumerated() {
                presenter.currentSchedule[index].customGardens?[indexGarden].setCustomIsDone(true)
            }
            UIView.performWithoutAnimation {
                self.tableView.reloadRows(at: [IndexPath(row: index, section: 0)], with: .none)
              }
        }
    }
    
    func successDone(gardenID: String, modelID: UUID) {
        if let index = presenter.futureSchedule.firstIndex(where: {$0.id == modelID}) {
            if let indexGarden = presenter.futureSchedule[index].customGardens?.firstIndex(where: {$0.id == gardenID}) {
                presenter.futureSchedule[index].customGardens?[indexGarden].setCustomIsDone(true)
                UIView.performWithoutAnimation {
                    self.tableView.reloadRows(at: [IndexPath(row: index + 1 + presenter.currentSchedule.count, section: 0)], with: .none)
                }
            }
        } else if let index = presenter.currentSchedule.firstIndex(where: {$0.id == modelID}) {
            if let indexGarden = presenter.currentSchedule[index].customGardens?.firstIndex(where: {$0.id == gardenID}) {
                presenter.currentSchedule[index].customGardens?[indexGarden].setCustomIsDone(true)
                UIView.performWithoutAnimation {
                    self.tableView.reloadRows(at: [IndexPath(row: index, section: 0)], with: .none)
                  }
            }
        }
    }
    
    func successId(model: [GardenPlantByMainIdsModel], modelSchedule: ScheduleMainModel, row: Int) {
        
        if let index = presenter.futureSchedule.firstIndex(where: {$0.id == modelSchedule.id}) {
            presenter.futureSchedule[index].setGardens(model)
        } else if let index = presenter.nextWeekSchedule.firstIndex(where: {$0.id == modelSchedule.id}) {
            presenter.nextWeekSchedule[index].setGardens(model)
        } else if let index = presenter.currentSchedule.firstIndex(where: {$0.id == modelSchedule.id}) {
            presenter.currentSchedule[index].setGardens(model)
        }
        
        indexSelected.insert(row)
        tableView.reloadRows(at: [IndexPath(item: row, section: 0)], with: .automatic)
    }
    
    func success() {
        indexSelected.removeAll()
        tableView.headerEndRefreshing()
        changeViews()
    }
    
    func failure(error: String) {
        tableView.headerEndRefreshing()
    }
}
