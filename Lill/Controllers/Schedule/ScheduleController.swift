
import UIKit

class ScheduleController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var scheldureSegment: UISegmentedControl!
    
    
    let cellScheduleIdentifier = "ScheduleCell"
    
    var indexSelected: Set<Int> = []
    
    var array1 = Array(0...20)
    var array2 = Array(0...3)
    
    //----------------------------------------------
    // MARK: - Life Cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = true
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        tableView.contentInset.bottom = 10
        
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(UINib(nibName: cellScheduleIdentifier, bundle: nil), forCellReuseIdentifier: cellScheduleIdentifier)
        tableView.tableFooterView = UIView()
        
        tableView.reloadData()
        
        
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @IBAction func actionChangeSheldure(_ sender: UISegmentedControl) {
        indexSelected.removeAll()
        tableView.reloadData()
    }
}
