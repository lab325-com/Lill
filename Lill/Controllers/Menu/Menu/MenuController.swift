
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
        addSwipeOnScreen = true
        super.viewDidLoad()
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.getMe(withoutLoader: false)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AnalyticsHelper.sendFirebaseScreenEvent(screen: .menu)
    }
    
    //----------------------------------------------
    // MARK: - Private func
    //----------------------------------------------
    
    private func setup() {
        navigationItem.title = RLocalization.menu_title.localized(PreferencesManager.sharedManager.languageCode.rawValue).capitalized
        titleLabel.text = RLocalization.menu_title.localized(PreferencesManager.sharedManager.languageCode.rawValue).capitalized
        setupTable()
        presenter.getMe(withoutLoader: true)
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
