//
//  ScheduleSettingsController.swift
//  Lill
//
//  Created by Andrey S on 29.11.2021.
//

import UIKit

class ScheduleSettingsController: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var frequencyTextField: UITextField!
    @IBOutlet weak var sendTextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    
    @IBOutlet weak var caresNotificationLabel: UILabel!
    @IBOutlet weak var caresNotificationSubTitleLabel: UILabel!
    
    @IBOutlet weak var waitingCaresLabel: UILabel!
    @IBOutlet weak var missedCaresLabel: UILabel!
    
    @IBOutlet weak var frequencyLabel: UILabel!
    @IBOutlet weak var frequencySubLabel: UILabel!
    
    @IBOutlet weak var secondChanceAlertLabel: UILabel!
    @IBOutlet weak var sendAfteLabel: UILabel!
    @IBOutlet weak var sendAfterSubLabel: UILabel!
    
    @IBOutlet weak var todayListNotificationLabel: UILabel!
    @IBOutlet weak var sendTimeLabel: UILabel!
    @IBOutlet weak var sendTimeSubLabel: UILabel!
    
    @IBOutlet weak var caresSwitcher: UISwitch!
    @IBOutlet weak var waitingSwitcher: UISwitch!
    @IBOutlet weak var missedSwitcher: UISwitch!
    
    @IBOutlet weak var secondChanceSwitcher: UISwitch!
    @IBOutlet weak var listNotificationsSwitcher: UISwitch!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private var frequencyPicker: UIPickerView?
    private var selectedRowFrequency: Int = 0
    
    private var sendPicker: UIPickerView?
    private var selectedRowSend: Int = 0
    
    private var datePicker = UIDatePicker()
    
    private let hourData = (Array(1...24)).map(String.init)
    private lazy var presenter = ScheduleSettingsPresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Life Cycle
    //----------------------------------------------

    override func viewDidLoad() {
        hiddenNavigationBar = false
        colorTitleNavigation = UIColor.black
        super.viewDidLoad()
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        if #available(iOS 13.4, *) {
            datePicker.preferredDatePickerStyle = .wheels
        } else {
           
        }
        datePicker.datePickerMode = .time
        datePicker.minuteInterval = 1
        
        
        let screenWidth = UIScreen.main.bounds.width
        timeTextField.inputView = datePicker
        
        let toolBar = UIToolbar(frame: CGRect(x: 0.0, y: 0.0, width: screenWidth, height: 44.0))
        let flexible = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancel = UIBarButtonItem(title: RLocalization.scheldure_setting_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .plain, target: nil, action: #selector(tapCancel))
        let barButton = UIBarButtonItem(title: RLocalization.scheldure_setting_done.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .plain, target: target, action: #selector(actionTimeDone)) //7
        toolBar.setItems([cancel, flexible, barButton], animated: false)
        timeTextField.inputAccessoryView = toolBar
        
        frequencyPicker = frequencyTextField.setInputViewDatePicker(target: self, selector: #selector(actionFrequencyDone))
        frequencyPicker?.delegate = self
        frequencyPicker?.dataSource = self
        
        sendPicker = sendTextField.setInputViewDatePicker(target: self, selector: #selector(actionSendDone))
        sendPicker?.delegate = self
        sendPicker?.dataSource = self
        
        navigationItem.title = RLocalization.scheldure_setting_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        let done = UIBarButtonItem(title: RLocalization.scheldure_setting_done.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .plain, target: self, action: #selector(actionDone))
        navigationItem.rightBarButtonItems = [done]
        
        
        caresNotificationLabel.text = RLocalization.scheldure_setting_cares_notification.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        caresNotificationSubTitleLabel.text = RLocalization.scheldure_setting_cares_notification_sub.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        
        let attrs1 = [NSAttributedString.Key.font : UIFont(name: "SFProDisplay-Bold", size: 17.0)!, NSAttributedString.Key.foregroundColor : UIColor(rgb: 0xFFCD4A)]
        let attrs2 = [NSAttributedString.Key.font :  UIFont(name: "SFProDisplay-Bold", size: 17.0)!, NSAttributedString.Key.foregroundColor : UIColor.black]
        let attrs3 = [NSAttributedString.Key.font : UIFont(name: "SFProDisplay-Bold", size: 17.0)!, NSAttributedString.Key.foregroundColor : UIColor(rgb: 0xFF2F2F)]
        
        let attributedString1 = NSMutableAttributedString(string:RLocalization.scheldure_setting_waiting.localized(PreferencesManager.sharedManager.languageCode.rawValue), attributes:attrs1)
        let attributedString2 = NSMutableAttributedString(string:" \(RLocalization.scheldure_setting_cares.localized(PreferencesManager.sharedManager.languageCode.rawValue))", attributes:attrs2)
        let attributedString3 = NSMutableAttributedString(string:RLocalization.scheldure_setting_missed.localized(PreferencesManager.sharedManager.languageCode.rawValue), attributes:attrs3)
        
        attributedString1.append(attributedString2)
        waitingCaresLabel.attributedText = attributedString1
        
        attributedString3.append(attributedString2)
        missedCaresLabel.attributedText = attributedString3
        
        frequencyLabel.text = RLocalization.scheldure_setting_frequency.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        frequencySubLabel.text = RLocalization.scheldure_setting_frequency_sub.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        secondChanceAlertLabel.text = RLocalization.scheldure_setting_alert.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        sendAfteLabel.text = RLocalization.scheldure_setting_after.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        sendAfterSubLabel.text = RLocalization.scheldure_setting_after_sub.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        todayListNotificationLabel.text = RLocalization.scheldure_setting_list_notification.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        sendTimeLabel.text = RLocalization.scheldure_setting_send_time.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        sendTimeSubLabel.text = RLocalization.scheldure_setting_send_daily_list.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        
        if let notification = KeychainService.standard.me?.notificationSettings {
            caresSwitcher.setOn(notification.cares, animated: true)
            missedSwitcher.setOn(notification.missedCares, animated: true)
            secondChanceSwitcher.setOn(notification.secondChance, animated: true)
            waitingSwitcher.setOn(notification.waitingCares, animated: true)
            listNotificationsSwitcher.setOn(notification.todayList, animated: true)
            
            
            selectedRowFrequency = notification.frequency.hours - 1
            frequencyPicker?.selectRow(selectedRowFrequency, inComponent: 0, animated: true)
            
            selectedRowSend  =  notification.secondChanceSendAfter.hours - 1
            sendPicker?.selectRow(selectedRowSend, inComponent: 0, animated: true)
            
            actionFrequencyDone()
            actionSendDone()
            
            let separateTodayList = notification.todayListSendAt.components(separatedBy: ":")
            let hour = Int(separateTodayList.first ?? "8")  ?? 8
            let minute = Int(separateTodayList[safe: 1] ?? "0")  ?? 8
            let second = Int(separateTodayList.last ?? "0")  ?? 8
            
            datePicker.setDate(Calendar.current.date(bySettingHour: hour, minute: minute, second: second, of: Date())!, animated: true)
            
            actionTimeDone()
        }
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @objc func tapCancel() {
        self.resignFirstResponder()
    }
    
    
    @objc func actionFrequencyDone() {
        frequencyTextField.text = "\(hourData[selectedRowFrequency]) \(RLocalization.scheldure_setting_hour.localized(PreferencesManager.sharedManager.languageCode.rawValue))"
        view.endEditing(true)
    }
    
    @objc func actionSendDone() {
        sendTextField.text = "\(hourData[selectedRowSend]) \(RLocalization.scheldure_setting_hour.localized(PreferencesManager.sharedManager.languageCode.rawValue))"
        view.endEditing(true)
    }
    
    
    @objc func actionTimeDone() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        timeTextField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    @objc func actionDone() {
        presenter.setNotifications(cares: caresSwitcher.isOn,
                                   waitingCares: waitingSwitcher.isOn,
                                   missedCares: missedSwitcher.isOn,
                                   frequency: hourData[selectedRowFrequency],
                                   secondChance: secondChanceSwitcher.isOn,
                                   secondChanceSendAfter: hourData[selectedRowSend],
                                   groupNotifications: listNotificationsSwitcher.isOn,
                                   groupNotificationsSendAt: datePicker.date.sendToServerFormat())
    }
}

//----------------------------------------------
// MARK: - UIPickerViewDelegate, UIPickerViewDataSource
//----------------------------------------------

extension ScheduleSettingsController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView( _ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return hourData.count
    }

    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
     return hourData[row]
    }

    func pickerView( _ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == frequencyPicker {
            selectedRowFrequency = row
        } else if pickerView == sendPicker {
            selectedRowSend = row
        }
    }

}

//----------------------------------------------
// MARK: - ScheduleSettingsOutputProtocol
//----------------------------------------------

extension ScheduleSettingsController: ScheduleSettingsOutputProtocol {
    func success() {
        
    }
    
    func failure(error: String) {
        
    }
}

