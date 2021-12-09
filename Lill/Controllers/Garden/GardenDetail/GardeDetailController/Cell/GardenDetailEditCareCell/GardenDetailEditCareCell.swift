//
//  GardenDetailEditCareCell.swift
//  Lill
//
//  Created by Andrey S on 18.11.2021.
//

import UIKit

protocol GardenDetailEditCareCellProtocol: AnyObject {
    func didPressedEditButton()
}

class GardenDetailEditCareCell: UITableViewCell {

    @IBOutlet weak var editView: UIView!
    @IBOutlet weak var editButton: UIButton!
    
    weak var delegate: GardenDetailEditCareCellProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        editView.layer.cornerRadius = 24
        editView.layer.borderWidth = 1.5
        editView.layer.borderColor = UIColor(rgb: 0xF6C137).cgColor
        
        editButton.setTitle(RLocalization.garden_detail_care_edit_my_plan.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        selectionStyle = .none
        DispatchQueue.main.async {
            self.contentView.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 24)
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func editAction(_ sender: Any) {
        delegate?.didPressedEditButton()
    }
}
