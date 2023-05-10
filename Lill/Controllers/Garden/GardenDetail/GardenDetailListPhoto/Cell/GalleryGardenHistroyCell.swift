//
//  GalleryGardenHistroyCell.swift
//  Lill
//
//  Created by mob325 on 23.12.2021.
//

import UIKit
import Kingfisher

class GalleryGardenHistroyCell: UICollectionViewCell {

    @IBOutlet weak var plantImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(model: MediaModel) {
        plantImageView.kf.setImage(with: URL(string: model.urlIosPrev), placeholder: RImage.placeholder_little_ic(), options: [.transition(.fade(0.25))])
        
        if let createdAt = model.date {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMM dd | HH:mm"
            dateLabel.text = dateFormatter.string(from: createdAt)
        } else {
            dateLabel.text = ""
        }
    }
}
