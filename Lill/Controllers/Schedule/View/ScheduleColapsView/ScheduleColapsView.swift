//
//  ScheduleColapsView.swift
//  Lill
//
//  Created by Andrey S on 23.11.2021.
//

import UIKit
import Kingfisher

protocol ScheduleColapsDelegate: AnyObject {
    func scheduleColapsCare(view: ScheduleColapsView, model: GardenPlantByMainIdsModel)
}

class ScheduleColapsView: UIView, LoadFromXibProtocol {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var careButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    weak var delegate: ScheduleColapsDelegate?
    var model: GardenPlantByMainIdsModel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setup()
    }
    
    private func setup() {
        addSubviewLoadedFromXib()
    }

    func updateView(model: GardenPlantByMainIdsModel) {
        self.model = model
        
        careButton.setTitle(model.customIsDone == true ? "Done" : "Care", for: .normal)
        careButton.backgroundColor = model.customIsDone == true ? UIColor(rgb: 0x7CDAA3) : UIColor(rgb: 0xFF993C)
        nameLabel.text = model.name
        avatarImageView.kf.setImage(with: URL(string: model.userMainImage?.urlIosPrev ?? ""), placeholder: RImage.placeholder_little_ic(), options: [.transition(.fade(0.25))])
    }
    
    @IBAction func actionsCares(_ sender: UIButton) {
        guard let model = model else {
            return
        }
        if model.customIsDone == true {
            return
        }
        
        delegate?.scheduleColapsCare(view: self, model: model)
    }
}
