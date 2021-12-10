
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

    private var selectedModel: CaresModel?
    
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

        title = "Add Care"
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
        let rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(backAction))
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
        navigationController?.popViewController(animated: true)
    }
}

//----------------------------------------------
// MARK: - CareCellDelegate
//----------------------------------------------

extension GardenPlantAddCaresSetup: CareCellDelegate {
    
    func didChangeCareActivity(caresModel: CaresModel, isActive: Bool) { }

    func didTappedCareTimeButton(caresModel: CaresModel) {
        selectedModel = caresModel
        let model = AddPlantTimeModel(type: caresModel.type, period: caresModel.period)
        AddCoverRouter(presenter: navigationController).presentPickerCares(model: model, delegate: self, isDatePicker: true)
    }
    
    func didTappedCareFrequencyButton(caresModel: CaresModel) {
        selectedModel = caresModel
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
            cares[index].update(frequency: selectedDay, period: selectedPeriod, date: date ?? Calendar.current.date(bySettingHour: 12, minute: 00, second: 0, of: Date()))
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

