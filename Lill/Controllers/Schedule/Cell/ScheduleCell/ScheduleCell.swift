//
//  ScheduleCell.swift
//  Lill
//
//  Created by Andrey S on 23.11.2021.
//

import UIKit

class ScheduleCell: UITableViewCell {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var careView: ShadowView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setupCell(needCornerBottom: Bool) {
        careView.layer.cornerRadius = 24
        
        stackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        if needCornerBottom {
            careView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
            
            let view = ScheduleColapsView()
            stackView.addArrangedSubview(view)
            
        } else {
            careView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        }
                
        
        
       
    }
}
