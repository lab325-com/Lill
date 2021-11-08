//
//  PopUniquePlantController.swift
//  Lill
//
//  Created by Andrey S on 05.11.2021.
//

import UIKit

protocol PopUniqePlanProtocol: AnyObject {
    func dissmiss(controller: PopUniquePlantController, text: String)
}

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
    // MARK: - Private property
    //----------------------------------------------
    
    private weak var delegate: PopUniqePlanProtocol?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(delegate: PopUniqePlanProtocol) {
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
        hideKeyboard()
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func actionAddPlant(_ sender: UIButton) {
        if let text = namePlantstextField.text, text.count > 0 {
            dismiss(animated: false) {
                self.delegate?.dissmiss(controller: self, text: text)
            }
        }
    }
}
