
import UIKit

class ScheduleController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let cellScheduleIdentifier = "ScheduleCell"
    
    var indexSelected: Set<Int> = []
    
    //----------------------------------------------
    // MARK: - Life Cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = true
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(UINib(nibName: cellScheduleIdentifier, bundle: nil), forCellReuseIdentifier: cellScheduleIdentifier)
        tableView.tableFooterView = UIView()
        
        tableView.reloadData()
    }
}
