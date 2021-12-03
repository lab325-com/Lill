
import UIKit

class GardenPlantCaresEdit: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var setRecommendedButton: UIButton!
    @IBOutlet weak var deleteCaresButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Global property
    //----------------------------------------------
    
    let cellCareInfoIdentifier = String(describing: CareInfoCell.self)
    let cellCareIdentifier = String(describing: CareCell.self)
    let cellAddCareIdentifier = String(describing: AddCareCell.self)
    
    lazy var presenter = GardenPlantCaresEditPresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private let gardenPlantId: String
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(gardenPlantId: String) {
        self.gardenPlantId = gardenPlantId
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
        presenter.getGardenPlantCares(gardenPlantId: gardenPlantId)
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    func setup() {
        hiddenNavigationBar = false
        
        tableView.contentInset.bottom = 24
        tableView.estimatedRowHeight = 82
        tableView.rowHeight = UITableView.automaticDimension
        
        bottomView.roundCorners(corners: [.topLeft, .topRight], radius: 24.0)
        
        tableView.register(UINib(nibName: cellCareInfoIdentifier, bundle: nil), forCellReuseIdentifier: cellCareInfoIdentifier)
        tableView.register(UINib(nibName: cellCareIdentifier, bundle: nil), forCellReuseIdentifier: cellCareIdentifier)
        tableView.register(UINib(nibName: cellAddCareIdentifier, bundle: nil), forCellReuseIdentifier: cellAddCareIdentifier)
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------

    @IBAction func cancelAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func doneAction(_ sender: Any) {
        dismiss(animated: true)
    }
}

//----------------------------------------------
// MARK: - GardenPlantCaresEditOutputProtocol
//----------------------------------------------

extension GardenPlantCaresEdit: GardenPlantCaresEditOutputProtocol {
    func successGetGardenPlantCares() {
        tableView.reloadData()
    }

    func failure(error: String) {
        
    }
}

extension GardenPlantCaresEdit: CareCellDelegate {
    
    func didChangeCareActivity() {
        print("didChangeCareActivity")
    }

    func didTappedCareTimeButton(caresModel: CaresModel) {
        let caresModel = AddPlantTimeModel(plan: caresModel.type, period: caresModel.period)
        AddCoverRouter(presenter: navigationController).presentPickerCares(model: caresModel, delegate: self, isDatePicker: true)
    }
    
    func didTappedCareFrequencyButton(caresModel: CaresModel) {
        let caresModel = AddPlantTimeModel(plan: caresModel.type, period: caresModel.period)
        AddCoverRouter(presenter: navigationController).presentPickerCares(model: caresModel, delegate: self, isDatePicker: false)
    }
    
    func didTappedCareNextDateButton() {
        print("didTappedCareNextDateButton")
    }
}

extension GardenPlantCaresEdit: AddCareCellProtocol {
    func didPressedAddCareButton() {
        print("didPressedAddCareButton")
    }
}

extension GardenPlantCaresEdit: PickerCareDelegate {
    func pickerCareSelected(controller: PickerCaresController, selectedDay: Int, selectedPeriod: PeriodType, model: AddPlantTimeModel, date: Date?) {
        
    }
}
