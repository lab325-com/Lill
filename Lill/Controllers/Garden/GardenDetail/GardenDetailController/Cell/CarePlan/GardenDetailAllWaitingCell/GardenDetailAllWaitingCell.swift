//
//  GardenDetailAllWaitingCell.swift
//  Lill
//
//  Created by mob325 on 18.11.2021.
//

import UIKit

protocol GardenDetailAllWaitingCellDelegate: AnyObject {
    func gardenDetailAllWaitingCellDoneCares(cell: GardenDetailAllWaitingCell)
}

class GardenDetailAllWaitingCell: UITableViewCell {

    @IBOutlet weak var checkAllWaitingButton: UIButton!
    
    weak var delegate: GardenDetailAllWaitingCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()

        checkAllWaitingButton.setTitle(RLocalization.garden_detail_check_all.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    @IBAction func actionDoneCares(_ sender: UIButton) {
        delegate?.gardenDetailAllWaitingCellDoneCares(cell: self)
    }
}
