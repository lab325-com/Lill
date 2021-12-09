
import UIKit

class GardenPlantAddCaresSetup: UIViewController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------

    @IBOutlet weak var tableView: UITableView!
    
    //----------------------------------------------
    // MARK: - Global property
    //----------------------------------------------
    
    let cellCareIdentifier = String(describing: CareCell.self)
    let cellAddCareIdentifier = String(describing: AddCareCell.self)
    
    var cares: [CareType] = []
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------

    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(cares: [CareType]) {
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
        
//        tableView.contentInset.bottom = 24
//        tableView.estimatedRowHeight = 82
//        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.register(UINib(nibName: cellCareIdentifier, bundle: nil), forCellReuseIdentifier: cellCareIdentifier)
        tableView.register(UINib(nibName: cellAddCareIdentifier, bundle: nil), forCellReuseIdentifier: cellAddCareIdentifier)
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @IBAction func addCareAction(_ sender: Any) {
        
    }
    
    @objc func backAction() {
        navigationController?.popViewController(animated: true)
    }
}

//----------------------------------------------
// MARK: - CareCellDelegate
//----------------------------------------------

extension AddCareCellProtocol: CareCellDelegate {
    
    func didChangeCareActivity(caresModel: CaresModel, isActive: Bool) {
//        guard let id = caresModel.id else { return }
//        presenter.updateGardenPlantCare(id: id, count: nil, period: nil, sendNotificationAt: nil, isActive: isActive)
    }

    func didTappedCareTimeButton(caresModel: CaresModel) {
//        selectedModel = caresModel
//        let model = AddPlantTimeModel(type: caresModel.type, period: caresModel.period)
//        AddCoverRouter(presenter: navigationController).presentPickerCares(model: model, delegate: self, isDatePicker: true)
    }
    
    func didTappedCareFrequencyButton(caresModel: CaresModel) {
//        selectedModel = caresModel
//        let model = AddPlantTimeModel(type: caresModel.type, period: caresModel.period)
//        AddCoverRouter(presenter: navigationController).presentPickerCares(model: model, delegate: self, isDatePicker: false)
    }
}

//----------------------------------------------
// MARK: - AddCareCellProtocol
//----------------------------------------------

extension GardenPlantAddCaresSetup: AddCareCellProtocol {
    func didPressedAddCareButton() {
//        let cares = presenter.plantCares.map( {$0.type} )
//        GardenPlantCaresEditRouter(presenter: navigationController).pushAddCare(cares: cares)
    }
}

//----------------------------------------------
// MARK: - PickerCareDelegate
//----------------------------------------------

extension GardenPlantAddCaresSetup: PickerCareDelegate {
    func pickerCareSelected(controller: PickerCaresController, selectedDay: Int, selectedPeriod: PeriodType, model: AddPlantTimeModel, date: Date?) {
//        guard let id = selectedModel?.id else { return }
//
//        let formatter = DateFormatter()
//        formatter.dateFormat = "HH:mm:ss"
//        let sendNotificationAt = formatter.string(from: date ?? Date())
//
//        presenter.updateGardenPlantCare(id: id, count: selectedDay, period: selectedPeriod, sendNotificationAt: sendNotificationAt, isActive: nil)
//        selectedModel = nil
    }
}
