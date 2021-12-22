//
//  GardenDetailScheduleCell.swift
//  Lill
//
//  Created by Andrey S on 18.11.2021.
//

import UIKit

class GardenDetailScheduleCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var careImageView: UIImageView!
    @IBOutlet weak var careLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var statusImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(model: ScheduleByGardenPlantMainModel) {
        careImageView.image = model.careTypeName.image
        careLabel.text = model.careTypeName.text
        
        statusLabel.text = model.status.text
        
        statusLabel.textColor = model.status.colorScheldure
        statusImageView.tintColor = model.status.colorScheldure
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd HH:mm"
        let dateString = dateFormatter.string(from: model.date)
        dateLabel.text = dateString
    }
}
