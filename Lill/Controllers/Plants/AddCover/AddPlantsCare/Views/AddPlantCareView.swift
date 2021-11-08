//
//  AddPlantCareView.swift
//  Lill
//
//  Created by Andrey S on 08.11.2021.
//

import UIKit

protocol AddPlantCareProtocol: AnyObject {
    func addPlantCareSelect(view: AddPlantCareView, selectedType: PlantsCareType)
}

class AddPlantCareView: UIView, LoadFromXibProtocol {

    @IBOutlet weak var careImageView: UIImageView!
    @IBOutlet weak var careTitleLabel: UILabel!
    
    @IBOutlet weak var selectView: UIButton!
    
    weak var delegate: AddPlantCareProtocol?
    
    private var selectedType: PlantsCareType?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        addSubviewLoadedFromXib()
        selectView.setTitle("", for: .normal)
    }
    
    func setup(type: PlantsCareType, isSelected: Bool) {
        selectedType = type
        
        switch type {
        case .humidity:
            careImageView.image = UIImage(named: "plants_detail_humidity_ic")
            careTitleLabel.text = RLocalization.care_type_humidity.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .misting:
            careImageView.image = UIImage(named: "plants_detail_misting_ic")
            careTitleLabel.text = RLocalization.care_type_misting.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .rotating:
            careImageView.image = UIImage(named: "plants_detail_rotating_ic")
            careTitleLabel.text = RLocalization.care_type_rotating.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .watering:
            careImageView.image = UIImage(named: "plants_detail_watering_ic")
            careTitleLabel.text = RLocalization.care_type_watering.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
        
        careImageView.tintColor = isSelected ? UIColor(rgb: 0x7CDAA3) : UIColor.black
        careTitleLabel.textColor = isSelected ? UIColor(rgb: 0x7CDAA3) : UIColor.black
    }
    
    @IBAction func actionSelectType(_ sender: UIButton) {
        if let selectedType = selectedType {
            delegate?.addPlantCareSelect(view: self, selectedType: selectedType)
        }
    }
    
}
