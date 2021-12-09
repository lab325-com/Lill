
import UIKit
import SwiftUI

protocol GardenPlantCaresEditDelegate: AnyObject {
    func gardenPlantCaresEditSuccessDelete()
}

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
    weak var delegate: GardenPlantCaresEditDelegate?
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private let gardenPlantId: String
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(gardenPlantId: String, delegate: GardenPlantCaresEditDelegate) {
        self.delegate = delegate
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
        
        navigationItem.title = "Edit Care Plan"
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
        let cancel = RLocalization.action_edit_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        let recommended = "Set to Recommended Cares"
        
        let alert = UIAlertController(title: title, message: nil, preferredStyle: UIAlertController.Style.actionSheet)
        
        let setToRecommended = UIAlertAction(title: recommended, style: .destructive) { [weak self] (action: UIAlertAction) in
            guard let `self` = self else { return }
            self.presenter.gardenPlantCaresToDefault(gardenPlantId: self.gardenPlantId)
        }
        
        let cancelAction = UIAlertAction(title: cancel, style: .cancel, handler: nil)
        
        alert.addAction(setToRecommended)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func deleteCaresAction(_ sender: Any) {
        if presenter.plantCares.count > 0 {
            GardenRouter(presenter: navigationController).pushDeleteGarden(cares: presenter.plantCares, delegate: self)
        }
    }
    
    @objc func closeAction() {
        navigationController?.popViewController(animated: true)
    }
}

//----------------------------------------------
// MARK: - GardenPlantCaresEditDeleteDelegate
//----------------------------------------------

extension GardenPlantCaresEdit: GardenPlantCaresEditDeleteDelegate {
    func successDelete() {
        delegate?.gardenPlantCaresEditSuccessDelete()
        presenter.getGardenPlantCares(gardenPlantId: gardenPlantId)
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
    
    func successGardenPlantCaresToDefault() {
        presenter.getGardenPlantCares(gardenPlantId: gardenPlantId)
    }

    func failure(error: String) {
        
    }
}

//----------------------------------------------
// MARK: - CareCellDelegate
//----------------------------------------------

extension GardenPlantCaresEdit: CareCellDelegate {
    
    func didChangeCareActivity(caresModel: CaresModel, isActive: Bool) {
        guard let id = caresModel.id else { return }
        presenter.updateGardenPlantCare(id: id, count: nil, period: nil, sendNotificationAt: nil, isActive: isActive)
    }

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
// MARK: - AddCareCellProtocol
//----------------------------------------------

extension GardenPlantCaresEdit: AddCareCellProtocol {
    func didPressedAddCareButton() {
        let cares = presenter.plantCares.map( {$0.type} )
        GardenPlantCaresEditRouter(presenter: navigationController).pushAddCare(cares: cares)
    }
}

//----------------------------------------------
// MARK: - PickerCareDelegate
//----------------------------------------------

extension GardenPlantCaresEdit: PickerCareDelegate {
    func pickerCareSelected(controller: PickerCaresController, selectedDay: Int, selectedPeriod: PeriodType, model: AddPlantTimeModel, date: Date?) {
        guard let id = selectedModel?.id else { return }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        let sendNotificationAt = formatter.string(from: date ?? Date())
        
        presenter.updateGardenPlantCare(id: id, count: selectedDay, period: selectedPeriod, sendNotificationAt: sendNotificationAt, isActive: nil)
        selectedModel = nil
    }
}
