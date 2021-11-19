//
//  GardenDetailTitleCell.swift
//  Lill
//
//  Created by Andrey S on 17.11.2021.
//

import UIKit

class GardenDetailTitleCell: UITableViewCell {

    @IBOutlet weak var topStackLayout: NSLayoutConstraint!
    
    @IBOutlet weak var bellButton: UIButton!
    @IBOutlet weak var mainTitleLabel: UILabel!
    @IBOutlet weak var desciptionLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet var topCaresViews: [DetailCaresView]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        bellButton.setTitle("", for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(model: GardenPlanByIDModel, cares: [(type: PlantsCareType, care: GardenShortPlantCaresModel)]) {
        mainTitleLabel.text = model.gardenPlantById.name ?? ""
        
        if let userDescription = model.gardenPlantById.userDescription {
            desciptionLabel.isHidden = false
            desciptionLabel.text = userDescription
        } else {
            desciptionLabel.isHidden = true
        }
        
        if let locationName = model.gardenPlantById.garden?.name {
            locationLabel.isHidden = false
            locationLabel.text = locationName
        } else {
            locationLabel.isHidden = true
        }
        
        for view in topCaresViews {
            view.isHidden = true
        }
        
        if cares.count == 0 {
            topStackLayout.constant = -107
            layoutIfNeeded()
            return
        } else {
            topStackLayout.constant = 10
        }
        
        
        for index in 0..<cares.count {
            if let care = cares[safe: index],
               let topView = topCaresViews[safe:index] {
                topView.isHidden = false
                topView.setupWithDate(care: care)
            }
        }
    }
}