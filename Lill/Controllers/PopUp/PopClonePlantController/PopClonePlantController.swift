//
//  PopClonePlantController.swift
//  Lill
//
//  Created by mob325 on 20.11.2021.
//

import UIKit

protocol PopClonePlantDelegate: AnyObject {
    func popClonePlantSuccess(controller: PopClonePlantController)
}

class PopClonePlantController: BaseController {
    
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
    
    private weak var delegate: PopClonePlantDelegate?
    private let id: String
    private lazy var presenter = PopClonePresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(delegate: PopClonePlantDelegate, id: String) {
        self.id = id
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
        
        titleNameLabel.text = RLocalization.garden_clone_plant_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        subTitleLabel.text = RLocalization.garden_clone_plant_subtitle.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        
        mainView.layer.cornerRadius = 24.0
        mainView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        closeButton.setTitle("", for: .normal)
        createPlanButton.setTitle(RLocalization.garden_clone_plant_button.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        namePlantstextField.addTarget(self, action: #selector(PopClonePlantController.textFieldDidChange(_:)), for: .editingChanged)
        createPlanButton.alpha = namePlantstextField.text?.count ?? 0 > 0 ? 1.0 : 0.5
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
            presenter.clonePlant(gardenId: self.id, name: text)
        }
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        createPlanButton.alpha = textField.text?.count ?? 0 > 0 ? 1.0 : 0.5
    }
}

//----------------------------------------------
// MARK: - PopCloneOutputProtocol
//----------------------------------------------

extension PopClonePlantController: PopCloneOutputProtocol {
    func success() {
        dismiss(animated: true) {
            self.delegate?.popClonePlantSuccess(controller: self)
        }
    }
}

