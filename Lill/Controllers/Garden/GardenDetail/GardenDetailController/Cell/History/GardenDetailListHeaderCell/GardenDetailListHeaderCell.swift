//
//  GardenDetailListHeaderCell.swift
//  Lill
//
//  Created by mob325 on 20.12.2021.
//

import UIKit

class GardenDetailListHeaderCell: UITableViewCell {

    @IBOutlet weak var historyLabel: UILabel!
    @IBOutlet weak var viewAllLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        historyLabel.text = RLocalization.garden_hiistory_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        viewAllLabel.text = RLocalization.garden_hiistory_view_all.localized(PreferencesManager.sharedManager.languageCode.rawValue)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
