//
//  PickerCaresController.swift
//  Lill
//
//  Created by Andrey S on 12.11.2021.
//

import UIKit

protocol PickerCareDelegate: AnyObject {
    func pickerCareSelected(controller: PickerCaresController, selectedDay: Int, selectedPeriod: PeriodType, model: AddPlantTimeModel, date: Date?)
}

class PickerCaresController: BaseController {

    let first = Array(1...30)
    let second: [PeriodType] = [PeriodType.periodTypeDay, PeriodType.periodTypeWeek, PeriodType.periodTypeMonth]
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var datePickerView: UIDatePicker!
    @IBOutlet weak var applyButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private var model: AddPlantTimeModel
    private var selectedDay: Int
    private var selectedPeriod: PeriodType
    private var isDatePicker: Bool
    private var selectedDate: Date?
    
    weak var delegate: PickerCareDelegate?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(model: AddPlantTimeModel, delegate: PickerCareDelegate, isDatePicker: Bool) {
        self.model = model
        self.delegate = delegate
        self.selectedDay = model.frequency
        self.selectedPeriod = model.period
        self.isDatePicker = isDatePicker
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

        applyButton.setTitle(RLocalization.uniques_cover_add_apply.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        datePickerView.isHidden = !isDatePicker
        pickerView.isHidden = isDatePicker
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        pickerView.selectRow(selectedDay - 1, inComponent: 0, animated: true)
        pickerView.selectRow(second.firstIndex(where: {$0 == selectedPeriod}) ?? 0, inComponent: 1, animated: true)
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @IBAction func actionApply(_ sender: UIButton) {
        delegate?.pickerCareSelected(controller: self, selectedDay: selectedDay, selectedPeriod: selectedPeriod, model: model, date: selectedDate)
         dismiss(animated: true)
    }
    
    @IBAction func actionValueChange(_ sender: UIDatePicker) {
        selectedDate = sender.date
    }
}

extension PickerCaresController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return first.count
        default:
            return second.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return "\(first[row])"
        default:
            return second[row].text
        }
    }
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return component == 0 ? 50 : 150
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            selectedDay = first[row]
        default:
            selectedPeriod = second[row]
        }
    }
}
