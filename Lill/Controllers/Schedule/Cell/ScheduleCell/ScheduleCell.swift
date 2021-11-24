//
//  ScheduleCell.swift
//  Lill
//
//  Created by Andrey S on 23.11.2021.
//

import UIKit

class ScheduleCell: UITableViewCell {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var bottomView: ShadowView!
    @IBOutlet weak var careView: ShadowView!
    
    @IBOutlet weak var topStackLayout: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        bottomView.layer.cornerRadius = 27
        bottomView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }
    
    
    func setupCell(needCornerBottom: Bool) {
        careView.layer.cornerRadius = 24
        
        stackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        stackView.isHidden = !needCornerBottom
        bottomView.isHidden = !needCornerBottom
        
        if needCornerBottom {
            careView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
            
            topStackLayout.constant = 0.0
            let view = ScheduleColapsView()
            stackView.addArrangedSubview(view)
            
            let view2 = ScheduleColapsView()
            stackView.addArrangedSubview(view2)
            
            let view3 = ScheduleColapsBottomView()
            stackView.addArrangedSubview(view3)
        } else {
            topStackLayout.constant = -5
            careView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        }
        
        bottomView.layoutIfNeeded()
    }
}
