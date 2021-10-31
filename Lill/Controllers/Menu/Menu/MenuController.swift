
import UIKit

class MenuController: BaseController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var menuTable: UITableView!
    
    var meModel: MeDataModel?
    lazy var presenter = MenuPresenter(view: self)
    let menuAccountIdentifire = "MenuAccauntInfoTableViewCell"
    let menuItemIdentifire = "MenuItemTableViewCell"
    
    override func viewDidLoad() {
        hiddenNavigationBar = true
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        titleLabel.text = RLocalization.menu_title().capitalized
        setupTable()
        presenter.getMe()
    }
    
    private func setupTable(){
        menuTable.delegate = self
        menuTable.dataSource = self
        menuTable.tableFooterView = UIView()
        menuTable.rowHeight = UITableView.automaticDimension
        menuTable.sectionHeaderHeight = 34
        
        menuTable.register(UINib(nibName: menuAccountIdentifire, bundle: nil), forCellReuseIdentifier: menuAccountIdentifire)
        menuTable.register(UINib(nibName: menuItemIdentifire, bundle: nil), forCellReuseIdentifier: menuItemIdentifire)
    }
}


//----------------------------------------------
// MARK: - MenuOutputProtocol
//----------------------------------------------

extension MenuController: MenuOutputProtocol {
    func success(model: MeDataModel) {
        self.meModel = model
        self.menuTable.reloadData()
    }
    
    func failure(error: String) {
        
    }
}
