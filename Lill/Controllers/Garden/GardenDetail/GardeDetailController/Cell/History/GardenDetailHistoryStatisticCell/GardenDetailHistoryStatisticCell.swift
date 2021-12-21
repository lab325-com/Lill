//
//  GardenDetailHistoryStatisticCell.swift
//  Lill
//
//  Created by Andrey S on 20.12.2021.
//

import UIKit

class GardenDetailHistoryStatisticCell: UITableViewCell {

    @IBOutlet weak var ageView: UIView!
    @IBOutlet weak var waterView: UIView!
    @IBOutlet weak var caresView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ageView.layer.borderWidth = 1.0
        ageView.layer.borderColor = UIColor(rgb: 0xD4B9D9).cgColor
        
        waterView.layer.borderWidth = 1.0
        waterView.layer.borderColor = UIColor(rgb: 0xD4B9D9).cgColor
        
        caresView.layer.borderWidth = 1.0
        caresView.layer.borderColor = UIColor(rgb: 0xD4B9D9).cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
