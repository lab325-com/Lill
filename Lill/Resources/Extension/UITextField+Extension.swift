//
//  UITextField+Extension.swift
//  Lill
//
//  Created by mob325 on 29.11.2021.
//

import UIKit

extension UITextField {
    
    func setInputViewDatePicker(target: Any, selector: Selector) -> UIPickerView  {
        // Create a UIDatePicker object and assign to inputView
        let screenWidth = UIScreen.main.bounds.width
        let datePicker = UIPickerView()//1
        self.inputView = datePicker //3
        
        // Create a toolbar and assign it to inputAccessoryView
        let toolBar = UIToolbar(frame: CGRect(x: 0.0, y: 0.0, width: screenWidth, height: 44.0)) //4
        let flexible = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil) //5
        let cancel = UIBarButtonItem(title: RLocalization.scheldure_setting_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .plain, target: nil, action: #selector(tapCancel)) // 6
        let barButton = UIBarButtonItem(title: RLocalization.scheldure_setting_done.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .plain, target: target, action: selector) //7
        toolBar.setItems([cancel, flexible, barButton], animated: false) //8
        self.inputAccessoryView = toolBar //9
        
        return datePicker
    }
    
    @objc func tapCancel() {
        self.resignFirstResponder()
    }
    
}
