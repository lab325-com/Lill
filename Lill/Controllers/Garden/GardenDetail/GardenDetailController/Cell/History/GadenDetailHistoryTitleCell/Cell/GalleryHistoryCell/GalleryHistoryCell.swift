//
//  GalleryHistoryCell.swift
//  Lill
//
//  Created by Andrey S on 20.12.2021.
//

import UIKit
import Kingfisher

class GalleryHistoryCell: UICollectionViewCell {

    @IBOutlet weak var plantImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(model: MediaModel) {
        plantImageView.kf.setImage(with: URL(string: model.urlIosPrev), placeholder: RImage.placeholder_little_ic(), options: [.transition(.fade(0.25))])
    }
}
