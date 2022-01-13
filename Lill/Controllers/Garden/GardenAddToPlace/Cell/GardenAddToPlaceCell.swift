//
//  GardenAddToPlaceCell.swift
//  Lill
//
//  Created by Andrey S on 13.01.2022.
//

import UIKit
import Kingfisher

class GardenAddToPlaceCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var plantsLabel: UILabel!
    @IBOutlet weak var countGardenLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(model: GardenModel) {
        nameLabel.text = model.name
        plantsLabel.text = RLocalization.garden_add_to_plants(model.totalPlants ?? 0, preferredLanguages: [PreferencesManager.sharedManager.languageCode.rawValue])
        countGardenLabel.text = String(model.needCareCount ?? 0)
        
        avatarImageView.kf.setImage(with: URL(string: model.userMainImage?.urlIosPrev ?? ""), placeholder: RImage.placeholder_little_ic(), options: [.transition(.fade(0.25))])
    }
    
}
