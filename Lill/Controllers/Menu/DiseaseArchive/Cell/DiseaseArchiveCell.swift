//
//  DiseaseArchiveCell.swift
//  Lill
//
//  Created by mob325 on 03.11.2021.
//

import UIKit
import Kingfisher

class DiseaseArchiveCell: UITableViewCell {
    
    @IBOutlet weak var plantImageView: UIImageView!
    @IBOutlet weak var plantNameLabel: UILabel!
    @IBOutlet weak var secondNamePlantLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var titeDiagnose: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(plant: DiseasePlant) {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d MMM HH:mm"
        timeLabel.text = dateFormatter.string(from: date)
        
        let url = URL(string: plant.plant?.plantImages.first?.urlIosFull ?? "")
        plantImageView.kf.setImage(with: url, placeholder: UIImage(named: "avatar_ic"),  options: [.transition(.fade(0.25))])
        
        plantNameLabel.text = plant.plant?.latinName
        secondNamePlantLabel.text = plant.plant?.names
        
        titeDiagnose.text = plant.diagnoseTitle
        descriptionLabel.text = plant.diagnoseDescription
    }
}
