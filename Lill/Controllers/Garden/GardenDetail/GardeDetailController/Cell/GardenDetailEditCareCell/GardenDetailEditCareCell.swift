//
//  GardenDetailEditCareCell.swift
//  Lill
//
//  Created by Andrey S on 18.11.2021.
//

import UIKit

class GardenDetailEditCareCell: UITableViewCell {

    @IBOutlet weak var editView: UIView!
    @IBOutlet weak var editLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        editView.layer.cornerRadius = 24
        editView.layer.borderWidth = 1.5
        editView.layer.borderColor = UIColor(rgb: 0xF6C137).cgColor
        
        editLabel.text = RLocalization.garden_detail_care_edit_my_plan.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        selectionStyle = .none
        DispatchQueue.main.async {
            self.contentView.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 24)
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
