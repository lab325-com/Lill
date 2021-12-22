//
//  GardenDetailHistoryPhotoCell.swift
//  Lill
//
//  Created by Andrey S on 20.12.2021.
//

import UIKit
import Kingfisher

class GardenDetailHistoryPhotoCell: UITableViewCell {
    
    @IBOutlet weak var circleView: UIView!
    
    @IBOutlet weak var topSeparatorView: UIView!
    @IBOutlet weak var bottomSeparatorView: UIView!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var notesLabel: UILabel!
    
    @IBOutlet weak var photoTitleNoteLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        photoTitleNoteLabel.text = RLocalization.garden_hiistory_photo.localized(PreferencesManager.sharedManager.languageCode.rawValue)
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
        
        photoImageView.isHidden = model.media?.urlIosPrev != nil ? false : true
        notesLabel.isHidden = model.media?.notes != nil ? false : true
        
        photoImageView.kf.setImage(with: URL(string: model.media?.urlIosPrev ?? ""), placeholder: RImage.placeholder_little_ic(), options: [.transition(.fade(0.25))])
        notesLabel.text = model.media?.notes
        
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
