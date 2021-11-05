//
//  PopUniquePlantController.swift
//  Lill
//
//  Created by Andrey S on 05.11.2021.
//

import UIKit

class PopUniquePlantController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var titleNameLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var createPlanButton: UIButton!
    
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var namePlantstextField: UITextField!
    @IBOutlet weak var mainView: UIView!
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        addTapOnScreen = false
        correctionKeyboard = 20
        super.viewDidLoad()
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        namePlantstextField.becomeFirstResponder()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        titleNameLabel.text = RLocalization.uniquel_plan_name_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        subTitleLabel.text = RLocalization.uniquel_plan_name_sub_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        
        mainView.layer.cornerRadius = 24.0
        mainView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        closeButton.setTitle("", for: .normal)
        createPlanButton.setTitle(RLocalization.uniquel_plan_create.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @IBAction func actionClose(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
