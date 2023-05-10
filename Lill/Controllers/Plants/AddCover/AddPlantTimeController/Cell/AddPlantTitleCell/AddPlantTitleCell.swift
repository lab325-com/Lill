//
//  AddPlantTitleCell.swift
//  Lill
//
//  Created by mob325 on 12.11.2021.
//

import UIKit

class AddPlantTitleCell: UITableViewCell {

    @IBOutlet weak var mainTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        mainTitleLabel.text = RLocalization.add_plant_time_subtitle.localized(PreferencesManager.sharedManager.languageCode.rawValue)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
