//
//  ScheduleDoneAllCell.swift
//  Lill
//
//  Created by Andrey S on 24.11.2021.
//

import UIKit

class ScheduleDoneAllCell: UITableViewCell {

    @IBOutlet weak var doneButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        doneButton.setTitle(RLocalization.scheldure_done_all.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
