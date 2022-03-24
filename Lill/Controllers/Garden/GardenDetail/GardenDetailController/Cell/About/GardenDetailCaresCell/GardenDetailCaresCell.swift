//
//  GardenDetailCaresCell.swift
//  Lill
//
//  Created by Andrey S on 17.11.2021.
//

import UIKit

class GardenDetailCaresCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var caresViews: [DetailCaresView]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(model: GardenPlanByIDModel, cares: [(type: PlantsCareType, care: GardenShortPlantCaresModel)]) {
        titleLabel.text = RLocalization.plant_detail_cares.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        for view in caresViews {
            view.isHidden = true
        }
        
        for index in 0..<cares.count {
            if let care = cares[safe: index],
               let view = caresViews[safe: index]{
                view.isHidden = false
                view.setup(care: care)
            }
        }
    }
}
