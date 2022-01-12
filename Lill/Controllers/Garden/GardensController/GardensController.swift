//
import UIKit
import Foundation

class GardensController: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var addPantLabel: UILabel!
    
    @IBOutlet weak var gardensSegment: UISegmentedControl!
    
    @IBOutlet weak var gardensTableView: UITableView!
    
    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------

    lazy var presenter = GardensPresenter(view: self)
    
    let gardenCellIdentifier = String(describing: GardenCell.self)
    let addPlaceCellIdentifier = String(describing: AddPlaceCell.self)

    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        presenter.getGardens()
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    private func setup() {
        hiddenNavigationBar = true
        
        navigationItem.title = "My Garden"
        
        gardensTableView.contentInset.top = 52.0
        
        gardensTableView.register(UINib(nibName: gardenCellIdentifier, bundle: nil), forCellReuseIdentifier: gardenCellIdentifier)
        gardensTableView.register(UINib(nibName: addPlaceCellIdentifier, bundle: nil), forCellReuseIdentifier: addPlaceCellIdentifier)
    }
    
    private func updateView() {
        
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @IBAction func addPlantAction(_ sender: UIButton) {
        GardenRouter(presenter: navigationController).presentChooseAddPlant(delegate: self)
    }
    
    @IBAction func gardensSegmentAction(_ sender: UIButton) {
        if gardensSegment.selectedSegmentIndex == 0 {
//            if presenter.currentSchedule.count == 0 && presenter.futureSchedule.count == 0 {
//                emptyView.isHidden = false
//                tableView.alpha = 0
//            } else {
//                UIView.animate(withDuration: 0.3) {
//                    self.emptyView.isHidden = true
//                    self.tableView.alpha = 1.0
//                }
//            }
        } else {
//            if presenter.nextWeekSchedule.count == 0 {
//                emptyView.isHidden = false
//                tableView.alpha = 0
//            } else {
//                UIView.animate(withDuration: 0.3) {
//                    self.emptyView.isHidden = true
//                    self.tableView.alpha = 1.0
//                }
//            }
        }
    }
}

//----------------------------------------------
// MARK: - GardensOutputProtocol
//----------------------------------------------

extension GardensController: GardensOutputProtocol {
    func successGetGardens() {
        gardensTableView.reloadData()
    }
    
    func failure(error: String) {
        
    }
}

//----------------------------------------------
// MARK: - ChooseIdentifyDelegate
//----------------------------------------------

extension GardensController: GardenChooseAddPlantDelegate {
    func didPressedAddUniquePlant() {
        PopUpRouter(presenter: navigationController).presentUniquePlant(tabBarController: tabBarController, delegate: self)
    }
}

//----------------------------------------------
// MARK: - PopUniqePlanProtocol
//----------------------------------------------

extension GardensController: PopUniqePlanProtocol {
    func dissmiss(controller: PopUniquePlantController, text: String) {
        AddCoverRouter(presenter: navigationController).presentAddCoverIdentifier(tabBarController: tabBarController, text: text, delegate: self)
    }
}

extension GardensController: AddCoverIdentifierProtocol {
    func addCoverIdentifierGoToPlantName(controller: AddCoverIdentifierController) {
        PopUpRouter(presenter: navigationController).presentUniquePlant(tabBarController: tabBarController, delegate: self)
    }
}
