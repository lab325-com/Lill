//
//  ScheduleDoneAllCell.swift
//  Lill
//
//  Created by Andrey S on 24.11.2021.
//

import UIKit

protocol ScheduleDoneAllDelegate: AnyObject {
    func scheduleDoneAll(cell: ScheduleDoneAllCell)
}

class ScheduleDoneAllCell: UITableViewCell {

    @IBOutlet weak var doneButton: UIButton!
    
    weak var delegate: ScheduleDoneAllDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        doneButton.setTitle(RLocalization.scheldure_done_all.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------

    @IBAction func actionDoneAll(_ sender: UIButton) {
        delegate?.scheduleDoneAll(cell: self)
    }
}
