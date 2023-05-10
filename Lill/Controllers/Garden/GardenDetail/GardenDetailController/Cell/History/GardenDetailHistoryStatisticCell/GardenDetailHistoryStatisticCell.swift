//
//  GardenDetailHistoryStatisticCell.swift
//  Lill
//
//  Created by mob325 on 20.12.2021.
//

import UIKit

class GardenDetailHistoryStatisticCell: UITableViewCell {

    @IBOutlet weak var statisticLabel: UILabel!
    
    @IBOutlet weak var ageView: UIView!
    @IBOutlet weak var waterView: UIView!
    @IBOutlet weak var caresView: UIView!
    
    @IBOutlet weak var waterLabel: UILabel!
    @IBOutlet weak var caresLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var daysLabel: UILabel!
    @IBOutlet weak var litersLabel: UILabel!
    @IBOutlet weak var caresTitleLabel: UILabel!
    
    @IBOutlet weak var ageSubitleLabel: UILabel!
    @IBOutlet weak var caresSubTitleLabel: UILabel!
    @IBOutlet weak var waterSubTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        statisticLabel.text = RLocalization.garden_hiistory_statistic.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        daysLabel.text = RLocalization.garden_hiistory_days.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        litersLabel.text = RLocalization.garden_hiistory_liters.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        caresTitleLabel.text = RLocalization.garden_hiistory_cares.localized(PreferencesManager.sharedManager.languageCode.rawValue)
    
        ageSubitleLabel.text = RLocalization.garden_hiistory_age.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        caresSubTitleLabel.text = RLocalization.garden_hiistory_cares_done.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        waterSubTitleLabel.text = RLocalization.garden_hiistory_water.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        
        ageView.layer.borderWidth = 1.0
        ageView.layer.borderColor = UIColor(rgb: 0xD4B9D9).cgColor
        
        waterView.layer.borderWidth = 1.0
        waterView.layer.borderColor = UIColor(rgb: 0xD4B9D9).cgColor
        
        caresView.layer.borderWidth = 1.0
        caresView.layer.borderColor = UIColor(rgb: 0xD4B9D9).cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(model: GardenPlantStatisticsMainModel?, isRounded: Bool) {
        guard let model = model else {
            return
        }
        
        ageLabel.text = "\(model.age)"
        caresLabel.text = "\(model.caresDone)"
        waterLabel.text = "\(model.waterDrank)"
        
        contentView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        if isRounded {
            contentView.layer.cornerRadius = 24
        } else {
            contentView.layer.cornerRadius = 0
        }
    }
}
