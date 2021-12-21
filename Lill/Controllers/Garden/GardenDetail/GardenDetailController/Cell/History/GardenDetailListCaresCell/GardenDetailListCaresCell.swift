//
//  GardenDetailListCaresCell.swift
//  Lill
//
//  Created by Andrey S on 20.12.2021.
//

import UIKit

class GardenDetailListCaresCell: UITableViewCell {

    @IBOutlet weak var circleView: UIView!
    
    @IBOutlet weak var topSeparatorView: UIView!
    @IBOutlet weak var bottomSeparatorView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        circleView.layer.borderWidth = 1.0
        circleView.layer.borderColor = UIColor(rgb: 0xD4B9D9).cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(isHiddenTop: Bool, isHiddenBottom: Bool) {
        topSeparatorView.isHidden = isHiddenTop
        bottomSeparatorView.isHidden = isHiddenBottom
        
        contentView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        if isHiddenBottom {
            contentView.layer.cornerRadius = 24
        } else {
            contentView.layer.cornerRadius = 0
        }
    }
}
