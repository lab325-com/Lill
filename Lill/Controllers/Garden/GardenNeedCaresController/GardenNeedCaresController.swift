//
//  GardenNeedCaresController.swift
//  Lill
//
//  Created by Andrey S on 12.01.2022.
//

import UIKit
import Kingfisher

protocol GardenNeedCaresDelegate: AnyObject {
    func gardenNeedCaresSuccess(controller: GardenNeedCaresController)
}

class GardenNeedCaresController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var countCaresLabel: UILabel!
    @IBOutlet weak var countPlantsLabel: UILabel!
    @IBOutlet weak var waitingLabel: UILabel!
    
    @IBOutlet weak var doneAllCaresButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var centerViewLayout: NSLayoutConstraint!
    
    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    
    private let model: GardenModel
    weak var delegate: GardenNeedCaresDelegate?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(model: GardenModel, delegate: GardenNeedCaresDelegate) {
        self.delegate = delegate
        self.model = model
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
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animate(isHidden: false) {}
    }
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        mainLabel.text = RLocalization.garden_need_cares_title(model.name, preferredLanguages: [PreferencesManager.sharedManager.languageCode.rawValue])
        subTitleLabel.text = RLocalization.garden_need_cares_sub_title(model.name, preferredLanguages: [PreferencesManager.sharedManager.languageCode.rawValue])
        
        avatarImageView.kf.setImage(with: URL(string: model.userMainImage?.urlIosPrev ?? ""), placeholder: RImage.placeholder_little_ic(), options: [.transition(.fade(0.25))])
        
        countCaresLabel.text = RLocalization.garden_need_cares_count(model.needCareCount ?? 0, preferredLanguages: [PreferencesManager.sharedManager.languageCode.rawValue])
        countPlantsLabel.text = RLocalization.garden_need_cares_count_plants(model.totalPlants ?? 0, preferredLanguages: [PreferencesManager.sharedManager.languageCode.rawValue])
        
        doneAllCaresButton.setTitle(RLocalization.garden_need_cares_done_all_cares.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        cancelButton.setTitle(RLocalization.garden_need_cares_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        waitingLabel.text = RLocalization.garden_need_cares_waiting.localized(PreferencesManager.sharedManager.languageCode.rawValue)
    }
    
    private func animate(isHidden: Bool, completion: @escaping () -> ()) {
        UIView.animate(withDuration: 0.4) { [weak self] in
            guard let `self` = self else { return }
            self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: isHidden ? 0.0 : 0.7)
            self.centerViewLayout.constant = isHidden ? 1500 : 0
            self.view.layoutIfNeeded()
        } completion: { result in
            completion()
        }
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @IBAction func actionDoneAll(_ sender: UIButton) {
        
    }
    
    @IBAction func actionCancel(_ sender: UIButton) {
        animate(isHidden: true) { [weak self] in
            self?.dismiss(animated: true)
        }
    }
    
}
