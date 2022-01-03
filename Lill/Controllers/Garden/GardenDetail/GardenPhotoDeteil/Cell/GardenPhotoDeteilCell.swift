//
//  GardenPhotoDeteilCell.swift
//  Lill
//
//  Created by Andrey S on 23.12.2021.
//

import UIKit
import Kingfisher

class GardenPhotoDeteilCell: UICollectionViewCell {

    @IBOutlet weak var plantImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(model: MediaModel) {
        plantImageView.kf.setImage(with: URL(string: model.urlIosFull), placeholder: RImage.placeholder_big_ic(), options: [.transition(.fade(0.25))])
    }
}
