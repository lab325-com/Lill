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
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var careImageView: UIImageView!
    @IBOutlet weak var careTitleLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var statucImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        circleView.layer.borderWidth = 1.0
        circleView.layer.borderColor = UIColor(rgb: 0xD4B9D9).cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(model: GardenPlantsHistoryListModel, isHiddenTop: Bool, isHiddenBottom: Bool) {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd\nHH:mm"
        let dateString = dateFormatter.string(from: model.date)
        dateLabel.text = dateString
        
        careImageView.image = model.gardenPlantCare?.name.darklmage
        careTitleLabel.text = model.gardenPlantCare?.name.text
        careImageView.tintColor = UIColor.black
        
        statucImageView.isHidden = model.gardenPlantCare?.status == .missed ? false : true
        statusLabel.text = model.gardenPlantCare?.status.text
        statusLabel.textColor = model.gardenPlantCare?.status.colorScheldure
        
        statucImageView.tintColor = model.gardenPlantCare?.status.colorScheldure
        
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
