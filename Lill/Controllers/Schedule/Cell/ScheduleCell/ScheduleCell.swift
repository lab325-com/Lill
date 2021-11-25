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
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var careImageView: UIImageView!
    @IBOutlet weak var careLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var statusImageView: UIImageView!
    
    @IBOutlet weak var placeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        bottomView.layer.cornerRadius = 27
        bottomView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }
    
    
    func setupCell(model: ScheduleMainModel, needCornerBottom: Bool) {
        careImageView.image = model.careTypeName.image
        careLabel.text = model.careTypeName.text
        
        statusLabel.text = model.status.text
        
        statusLabel.textColor = model.status.colorScheldure
        statusImageView.tintColor = model.status.colorScheldure
        
        let days = Calendar.current.dateComponents([.day], from: Date(), to: model.date).day ?? 0
        
        if days >= 0 {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMM dd HH:mm"
            let dateString = dateFormatter.string(from: model.date)
            dateLabel.text = dateString
        } else {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMM dd"
            let dateString = dateFormatter.string(from: model.date)
            
            let attrs1 = [NSAttributedString.Key.font : UIFont(name: "SFProDisplay-Regular", size: 13.0)!, NSAttributedString.Key.foregroundColor : UIColor.black]
            let attrs2 = [NSAttributedString.Key.font :  UIFont(name: "SFProDisplay-Medium", size: 11.0)!, NSAttributedString.Key.foregroundColor : UIColor(rgb: 0xFF2F2F)]
            
            let attributedString1 = NSMutableAttributedString(string:"\(dateString)\n", attributes:attrs1)
            let attributedString2 = NSMutableAttributedString(string:"(\(days * -1) \(RLocalization.scheldure_days.localized(PreferencesManager.sharedManager.languageCode.rawValue)))", attributes:attrs2)
            
            attributedString1.append(attributedString2)
            self.dateLabel.attributedText = attributedString1
        }
        
        placeLabel.text = "\(model.gardenName): \(model.gardenPlantIds.count) \(RLocalization.scheldure_plants.localized(PreferencesManager.sharedManager.languageCode.rawValue))"
        
        careView.layer.cornerRadius = 24
        
        stackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        stackView.isHidden = !needCornerBottom
        bottomView.isHidden = !needCornerBottom
        
        if needCornerBottom {
            careView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
            
            topStackLayout.constant = 0.0
            
            for _ in model.gardenPlantIds {
                let view = ScheduleColapsView()
                stackView.addArrangedSubview(view)
            }
            
            let view3 = ScheduleColapsBottomView()
            stackView.addArrangedSubview(view3)
        } else {
            topStackLayout.constant = -5
            careView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        }
        
        bottomView.layoutIfNeeded()
    }
}
