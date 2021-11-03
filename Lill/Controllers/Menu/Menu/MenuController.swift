
import UIKit

class MenuController: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var menuTable: UITableView!
    
    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    
    var meModel: MeDataModel?
    lazy var presenter = MenuPresenter(view: self)
    let menuAccountIdentifire = "MenuAccauntInfoTableViewCell"
    let menuItemIdentifire = "MenuItemTableViewCell"
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------

    override func viewDidLoad() {
        hiddenNavigationBar = true
        super.viewDidLoad()
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Private func
    //----------------------------------------------
    
    private func setup() {
        navigationItem.title = RLocalization.menu_title.localized(PreferencesManager.sharedManager.languageCode.rawValue).capitalized
        titleLabel.text = RLocalization.menu_title.localized(PreferencesManager.sharedManager.languageCode.rawValue).capitalized
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
    
    @objc override func changeLanguageNotifications(_ notification: Notification) {
        super.changeLanguageNotifications(notification)
        languageChange()
    }
}


//----------------------------------------------
// MARK: - MenuOutputProtocol
//----------------------------------------------

extension MenuController: MenuOutputProtocol {
    func success(model: MeDataModel) {
        KeychainService.standard.token = model.me
        self.meModel = model
        self.menuTable.reloadData()
    }
    
    func failure(error: String) {
        
    }
}

extension MenuController {
    private func languageChange() {
        navigationItem.title = RLocalization.menu_title.localized(PreferencesManager.sharedManager.languageCode.rawValue).capitalized
        titleLabel.text = RLocalization.menu_title.localized(PreferencesManager.sharedManager.languageCode.rawValue).capitalized
        menuTable.reloadData()
    }
}
