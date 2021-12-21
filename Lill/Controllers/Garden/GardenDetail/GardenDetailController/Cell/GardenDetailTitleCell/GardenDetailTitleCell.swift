//
//  GardenDetailTitleCell.swift
//  Lill
//
//  Created by Andrey S on 17.11.2021.
//

import UIKit

protocol GardenDetailTitleCellDelegate: AnyObject {
    func gardenDetailTitleSelectBell(cell: GardenDetailTitleCell, notification: Bool)
}

class GardenDetailTitleCell: UITableViewCell {

    @IBOutlet weak var topStackLayout: NSLayoutConstraint!
    
    @IBOutlet weak var bellButton: UIButton!
    @IBOutlet weak var mainTitleLabel: UILabel!
    @IBOutlet weak var desciptionLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet var topCaresViews: [DetailCaresView]!
    
    weak var delegate: GardenDetailTitleCellDelegate?
    
    private var model: GardenPlanByIDModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
       // selectionStyle = .none
        bellButton.setTitle("", for: .normal)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(model: GardenPlanByIDModel, cares: [(type: PlantsCareType, care: GardenShortPlantCaresModel)]) {
        self.model = model
        mainTitleLabel.text = model.gardenPlantById.name ?? ""
        
        if model.gardenPlantById.sendNotifications {
            bellButton.setImage(RImage.garden_selected_bell_ic(), for: .normal)
        } else {
            bellButton.setImage(RImage.garden_bell_ic(), for: .normal)
        }
        
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
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @IBAction func actionsBellSelect(_ sender: UIButton) {
        AnalyticsHelper.sendFirebaseEvents(events: .edit_cares)
        guard let notification = model?.gardenPlantById.sendNotifications else { return }
        delegate?.gardenDetailTitleSelectBell(cell: self, notification: !notification)
    }
}
