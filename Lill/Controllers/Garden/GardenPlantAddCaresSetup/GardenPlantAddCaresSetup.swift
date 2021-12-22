
import UIKit

class GardenPlantAddCaresSetup: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------

    @IBOutlet weak var tableView: UITableView!
    
    //----------------------------------------------
    // MARK: - Global property
    //----------------------------------------------
    
    let cellCareInfoIdentifier = String(describing: CareInfoCell.self)
    let cellCareIdentifier = String(describing: CareCell.self)
    let cellAddCareIdentifier = String(describing: AddCareCell.self)
    
    lazy var presenter = GardenPlanAddCaresSetupPresenter(view: self)
    
    let gardenPlantId: String
    var cares: [CaresModel] = []
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(gardenPlantId: String, cares: [CaresModel]) {
        self.gardenPlantId = gardenPlantId
        self.cares = cares
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    func setup() {
        title = RLocalization.garden_plant_add_cares_setup_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
        let rightBarButtonItem = UIBarButtonItem(title: RLocalization.garden_plant_add_cares_setup_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .done, target: self, action: #selector(backAction))
        rightBarButtonItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "SFProDisplay-Regular", size: 17.0)!], for: .normal)
        navigationItem.rightBarButtonItem = rightBarButtonItem
        
        tableView.register(UINib(nibName: cellCareInfoIdentifier, bundle: nil), forCellReuseIdentifier: cellCareInfoIdentifier)
        tableView.register(UINib(nibName: cellCareIdentifier, bundle: nil), forCellReuseIdentifier: cellCareIdentifier)
        tableView.register(UINib(nibName: cellAddCareIdentifier, bundle: nil), forCellReuseIdentifier: cellAddCareIdentifier)
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @objc func backAction() {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: GardenDetailController.self) {
                navigationController?.popToViewController(controller, animated: true)
            }
        }
    }
}

//----------------------------------------------
// MARK: - CareCellDelegate
//----------------------------------------------

extension GardenPlantAddCaresSetup: CareCellDelegate {
    
    func didChangeCareActivity(caresModel: CaresModel, isActive: Bool) { }

    func didTappedCareTimeButton(caresModel: CaresModel) {
        let model = AddPlantTimeModel(type: caresModel.type, period: caresModel.period)
        AddCoverRouter(presenter: navigationController).presentPickerCares(model: model, delegate: self, isDatePicker: true)
    }
    
    func didTappedCareFrequencyButton(caresModel: CaresModel) {
        let model = AddPlantTimeModel(type: caresModel.type, period: caresModel.period)
        AddCoverRouter(presenter: navigationController).presentPickerCares(model: model, delegate: self, isDatePicker: false)
    }
}

//----------------------------------------------
// MARK: - PickerCareDelegate
//----------------------------------------------

extension GardenPlantAddCaresSetup: PickerCareDelegate {
    func pickerCareSelected(controller: PickerCaresController, selectedDay: Int, selectedPeriod: PeriodType, model: AddPlantTimeModel, date: Date?) {
        
        if let index = cares.firstIndex(where: {$0.type == model.type}) {
            if let date = date {
                cares[index].update(count: cares[index].count, period: cares[index].period, date: date)
            } else {
                cares[index].update(count: selectedDay, period: selectedPeriod, date: cares[index].time)
            }
            tableView.reloadRows(at: [IndexPath(row: index + 1, section: 0)], with: .automatic)
        }
    }
}

//----------------------------------------------
// MARK: - AddCareCellProtocol
//----------------------------------------------

extension GardenPlantAddCaresSetup: AddCareCellProtocol {
    func didPressedAddCareButton() {
        presenter.addCares(gardenPlantId: gardenPlantId, cares: cares)
    }
}

//----------------------------------------------
// MARK: - GardenPlantAddCaresSetupOutputProtocol
//----------------------------------------------

extension GardenPlantAddCaresSetup: GardenPlanAddCaresSetupOutputProtocol {
    func successAddCares() {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: GardenPlantCaresEdit.self) {
                navigationController?.popToViewController(controller, animated: true)
            }
        }
        NotificationCenter.default.post(name: NSNotification.Name("update_cares"), object: nil)
    }
    
    func failure(error: String) {
        
    }
}

