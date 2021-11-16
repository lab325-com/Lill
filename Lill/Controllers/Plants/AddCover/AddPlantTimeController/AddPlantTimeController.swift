//
//  AddPlantTimeController.swift
//  Lill
//
//  Created by Andrey S on 11.11.2021.
//

import UIKit

struct AddPlantTimeModel {
    let plan: CareType
    var time: Date? = Calendar.current.date(bySettingHour: 12, minute: 00, second: 0, of: Date())
    var frequency: Int = 7
    var period: PeriodType = .periodTypeDay
    
    mutating func change(frequency: Int, period: PeriodType, date: Date?) {
        
        self.time = date
        self.frequency = frequency
        self.period = period
    }
    
    var getTime: String {
        guard let date = time else { return "12:00" }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        let dateString = dateFormatter.string(from: date)
        
        return dateString
    }
    
    var nextTime: String {
        var dayComponent    = DateComponents()
        
        switch period {
        case .periodTypeDay:
            dayComponent.day = frequency
        case .periodTypeMonth:
            dayComponent.month = frequency
        case .periodTypeWeek:
            dayComponent.day = frequency * 7
        default:
            return ""
        }
        
        guard let nextDate = Calendar.current.date(byAdding: dayComponent, to: Date()) else { return "" }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd"
        let dateString = dateFormatter.string(from: nextDate)
        
        return dateString
    }
}

extension PeriodType {
    var text: String {
        switch self {
        case .periodTypeDay:
            return RLocalization.period_type_day.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .periodTypeMonth:
            return RLocalization.period_type_month.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .periodTypeWeek:
            return RLocalization.period_type_week.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        default:
            return ""
        }
    }
}

class AddPlantTimeController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var topView: ShadowView!
    @IBOutlet weak var doneButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private let cellIdentifier = "AddPlantTimeCell"
    private let cellTitleIdentifier = "AddPlantTitleCell"
    private var selectedCares: Set<CareType>
    private var plantsTime: [AddPlantTimeModel]
    private let coverImage: UIImage
    private let text: String
    private lazy var presenter = AddPlantsCarePresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(coverImage: UIImage, text: String, selectedCares: Set<CareType>) {
        self.plantsTime = []
        
        for selectedCare in selectedCares {
            plantsTime.append(AddPlantTimeModel(plan: selectedCare))
        }
        self.coverImage = coverImage
        self.text = text
        self.selectedCares = selectedCares
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        transparentNavigationBar = true
        backgroundNavigationColor = UIColor.white
        colorTitleNavigation = UIColor.black
        super.viewDidLoad()

        setup()
    }

    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        doneButton.setTitle(RLocalization.add_plant_done.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        let cancel = UIBarButtonItem(title: RLocalization.uniques_cover_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .plain, target: self, action: #selector(playTapped))
        navigationItem.rightBarButtonItems = [cancel]
        
        topView.layer.cornerRadius = 24.0
        topView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
        navigationItem.title = RLocalization.uniques_cover_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
        tableView.register(UINib(nibName: cellTitleIdentifier, bundle: nil), forCellReuseIdentifier: cellTitleIdentifier)
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @objc func playTapped() {
        dismiss(animated: true)
    }
    
    @IBAction func actionDone(_ sender: UIButton) {
        presenter.sendUniquesPlants(img: coverImage, text: text, plantsTime: plantsTime)
    }
}

//----------------------------------------------
// MARK: - UITableViewDataSource
//----------------------------------------------

extension AddPlantTimeController: UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return plantsTime.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellTitleIdentifier) as? AddPlantTitleCell else { return UITableViewCell() }
            return cell
        default :
            guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier) as? AddPlantTimeCell else { return UITableViewCell() }
            cell.setupCell(model: plantsTime[indexPath.row - 1])
            cell.delegate = self
            return cell
        }
    }
}

//----------------------------------------------
// MARK: - UITableViewDataSource
//----------------------------------------------

extension AddPlantTimeController: AddPlantTimeProtocol {
    func addPlantTime(cell: AddPlantTimeCell, model: AddPlantTimeModel) {
        AddCoverRouter(presenter: navigationController).presentPickerCares(model: model, delegate: self, isDatePicker: true)
    }
    
    func addPlantFrequency(cell: AddPlantTimeCell, model: AddPlantTimeModel) {
        AddCoverRouter(presenter: navigationController).presentPickerCares(model: model, delegate: self, isDatePicker: false)
    }
}

//----------------------------------------------
// MARK: - PickerCareDelegate
//----------------------------------------------

extension AddPlantTimeController: PickerCareDelegate {
    func pickerCareSelected(controller: PickerCaresController, selectedDay: Int, selectedPeriod: PeriodType, model: AddPlantTimeModel, date: Date?) {
        if let index = plantsTime.firstIndex(where: {$0.plan == model.plan}) {
            plantsTime[index].change(frequency: selectedDay, period: selectedPeriod, date: date ?? Calendar.current.date(bySettingHour: 12, minute: 00, second: 0, of: Date()))
            tableView.reloadRows(at: [IndexPath(row: index + 1, section: 0)], with: .automatic)
        }
    }
}

//----------------------------------------------
// MARK: - AddPlantsCareOutputProtocol
//----------------------------------------------

extension AddPlantTimeController: AddPlantsCareOutputProtocol {
    func successSaveUniquesPlant() {
        dismiss(animated: true) {
            CongradsViewPresenter.showCongradsView(textSubtitle: RLocalization.add_plants_success.localized(PreferencesManager.sharedManager.languageCode.rawValue))
        }
    }
    
    func failure(error: String) {
        
    }
}
