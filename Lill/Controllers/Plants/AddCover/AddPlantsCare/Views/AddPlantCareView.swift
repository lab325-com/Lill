//
//  AddPlantCareView.swift
//  Lill
//
//  Created by Andrey S on 08.11.2021.
//

import UIKit

protocol AddPlantCareProtocol: AnyObject {
    func addPlantCareSelect(view: AddPlantCareView, selectedType: CareType)
}

class AddPlantCareView: UIView, LoadFromXibProtocol {

    @IBOutlet weak var careImageView: UIImageView!
    @IBOutlet weak var careTitleLabel: UILabel!
    
    @IBOutlet weak var selectView: UIButton!
    
    weak var delegate: AddPlantCareProtocol?
    
    private var selectedType: CareType?
    
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
    
    func setup(type: CareType, isSelected: Bool) {
        selectedType = type
        
        careImageView.image = type.name.image
        careTitleLabel.text = type.name.text
        
        careImageView.tintColor = isSelected ? UIColor(rgb: 0x7CDAA3) : UIColor.black
        careTitleLabel.textColor = isSelected ? UIColor(rgb: 0x7CDAA3) : UIColor.black
    }
    
    @IBAction func actionSelectType(_ sender: UIButton) {
        if let selectedType = selectedType {
            delegate?.addPlantCareSelect(view: self, selectedType: selectedType)
        }
    }
    
}
