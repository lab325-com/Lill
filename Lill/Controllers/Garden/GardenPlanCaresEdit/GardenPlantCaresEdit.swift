
import UIKit
import SwiftUI

class GardenPlantCaresEdit: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var setRecommendedButton: UIButton!
    @IBOutlet weak var deleteCaresButton: UIButton!
    @IBOutlet weak var setRecommendedButtonHeighConstaint: NSLayoutConstraint!
    
    //----------------------------------------------
    // MARK: - Global property
    //----------------------------------------------
    
    let cellCareInfoIdentifier = String(describing: CareInfoCell.self)
    let cellCareIdentifier = String(describing: CareCell.self)
    let cellAddCareIdentifier = String(describing: AddCareCell.self)
    
    private var selectedModel: CaresModel?
    
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
        tableView.alpha = 0.0
        bottomView.isHidden = true
        
        title = "Edit Care Plan"
        let rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(closeAction))
        let leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .done, target: self, action: #selector(closeAction))
        rightBarButtonItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "SFProDisplay-Regular", size: 17.0)!, NSAttributedString.Key.foregroundColor : UIColor(rgb: 0x7CDAA3)], for: .normal)
        leftBarButtonItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "SFProDisplay-Regular", size: 17.0)!, NSAttributedString.Key.foregroundColor : UIColor(rgb: 0x7CDAA3)], for: .normal)
        navigationItem.rightBarButtonItem = rightBarButtonItem
        navigationItem.leftBarButtonItem = leftBarButtonItem
        
        tableView.contentInset.bottom = 24
        tableView.estimatedRowHeight = 82
        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.register(UINib(nibName: cellCareInfoIdentifier, bundle: nil), forCellReuseIdentifier: cellCareInfoIdentifier)
        tableView.register(UINib(nibName: cellCareIdentifier, bundle: nil), forCellReuseIdentifier: cellCareIdentifier)
        tableView.register(UINib(nibName: cellAddCareIdentifier, bundle: nil), forCellReuseIdentifier: cellAddCareIdentifier)
        
        bottomView.roundCorners(corners: [.topLeft, .topRight], radius: 24.0)
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @IBAction func setToRecommendedAction(_ sender: Any) {
        presenter.gardenPlantCaresToDefault(gardenPlantId: gardenPlantId)
    }
    
    @IBAction func deleteCaresAction(_ sender: Any) {
        //presenter.deleteGardenPlantCare(gardenPlantId: gardenPlantId)
    }
    
    @objc func closeAction() {
        navigationController?.popViewController(animated: true)
    }
}

//----------------------------------------------
// MARK: - GardenPlantCaresEditOutputProtocol
//----------------------------------------------

extension GardenPlantCaresEdit: GardenPlantCaresEditOutputProtocol {
    
    func successGetGardenPlantCares(caresToDefaultButton: Bool) {
        tableView.alpha = 1.0
        bottomView.isHidden = false
        setRecommendedButton.isHidden = caresToDefaultButton ? false : true
        setRecommendedButtonHeighConstaint.constant = caresToDefaultButton ? 44.0 : 0.0
        tableView.reloadData()
    }
    
    func successUpdateGardenPlantCare() {
        presenter.getGardenPlantCares(gardenPlantId: gardenPlantId)
    }
    
    func successDeleteGardenPlantCare() {
        presenter.getGardenPlantCares(gardenPlantId: gardenPlantId)
    }
    
    func successGardenPlantCaresToDefault() {
        presenter.getGardenPlantCares(gardenPlantId: gardenPlantId)
    }

    func failure(error: String) {
        
    }
}

extension GardenPlantCaresEdit: CareCellDelegate {
    
    func didChangeCareActivity(caresModel: CaresModel, isActive: Bool) {
        //presenter.updateGardenPlantCare(gardenPlantId: caresModel.id ?? "", isActive: isActive)
        guard let id = caresModel.id else { return }
        presenter.updateGardenPlantCare(id: id, period: nil, sendNotificationAt: nil, isActive: isActive)
    }

    func didTappedCareTimeButton(caresModel: CaresModel) {
        selectedModel = caresModel
        let caresModel = AddPlantTimeModel(type: caresModel.type, period: caresModel.period)
        AddCoverRouter(presenter: navigationController).presentPickerCares(model: caresModel, delegate: self, isDatePicker: true)
    }
    
    func didTappedCareFrequencyButton(caresModel: CaresModel) {
        selectedModel = caresModel
        let caresModel = AddPlantTimeModel(type: caresModel.type, period: caresModel.period)
        AddCoverRouter(presenter: navigationController).presentPickerCares(model: caresModel, delegate: self, isDatePicker: false)
    }
}

extension GardenPlantCaresEdit: AddCareCellProtocol {
    func didPressedAddCareButton() {
        print("didPressedAddCareButton")
    }
}

extension GardenPlantCaresEdit: PickerCareDelegate {
    func pickerCareSelected(controller: PickerCaresController, selectedDay: Int, selectedPeriod: PeriodType, model: AddPlantTimeModel, date: Date?) {
        guard let id = selectedModel?.id else { return }
        presenter.updateGardenPlantCare(id: id, period: selectedPeriod, sendNotificationAt: model.getTime, isActive: nil)
        selectedModel = nil
//        if let index = presenter.plantCares.firstIndex(where: {$0.type == model.plan}) {
//            plantsTime[index].change(frequency: selectedDay, period: selectedPeriod, date: date ?? Calendar.current.date(bySettingHour: 12, minute: 00, second: 0, of: Date()))
//            tableView.reloadRows(at: [IndexPath(row: index + 1, section: 0)], with: .automatic)
//        }
    }
}
