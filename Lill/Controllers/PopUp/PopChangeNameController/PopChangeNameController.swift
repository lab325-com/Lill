//
//  PopChangeNameController.swift
//  Lill
//
//  Created by mob325 on 15.11.2021.
//

import UIKit

protocol PopChangeNameProtocol: AnyObject {
    func dissmiss(controller: PopChangeNameController, text: String)
}

class PopChangeNameController: BaseController {
    
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
    
    private weak var delegate: PopChangeNameProtocol?
    private var text: String?
    private let plantID: String
    private lazy var presenter = PopChangeNamePresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(delegate: PopChangeNameProtocol, text: String?, plantID: String) {
        self.text = text
        self.plantID = plantID
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
        namePlantstextField.text = text
        titleNameLabel.text = RLocalization.pop_change_name_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        subTitleLabel.text = RLocalization.pop_change_name_subtitle.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        
        mainView.layer.cornerRadius = 24.0
        mainView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        closeButton.setTitle("", for: .normal)
        createPlanButton.setTitle(RLocalization.pop_change_name_button.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        namePlantstextField.addTarget(self, action: #selector(PopChangeNameController.textFieldDidChange(_:)), for: .editingChanged)
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
            presenter.changeName(id: plantID, name: text)
        }
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        createPlanButton.alpha = textField.text?.count ?? 0 > 0 ? 1.0 : 0.5
    }
}

//----------------------------------------------
// MARK: - PopChangeNameOutputProtocol
//----------------------------------------------

extension PopChangeNameController: PopChangeNameOutputProtocol {
    func success(text: String) {
        dismiss(animated: false) {
            self.delegate?.dissmiss(controller: self, text: text)
        }
    }
    
    func failure(error: String) {
        
    }
}
