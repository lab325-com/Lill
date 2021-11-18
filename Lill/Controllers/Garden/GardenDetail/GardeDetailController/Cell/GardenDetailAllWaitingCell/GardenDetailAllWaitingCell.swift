//
//  GardenDetailAllWaitingCell.swift
//  Lill
//
//  Created by Andrey S on 18.11.2021.
//

import UIKit

class GardenDetailAllWaitingCell: UITableViewCell {

    @IBOutlet weak var checkAllWaitingButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        checkAllWaitingButton.setTitle(RLocalization.garden_detail_check_all.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
