//
//  AddPlantTimeCell.swift
//  Lill
//
//  Created by Andrey S on 11.11.2021.
//

import UIKit

protocol AddPlantTimeProtocol: AnyObject {
    func addPlantTime(cell: AddPlantTimeCell, model: AddPlantTimeModel)
    func addPlantFrequency(cell: AddPlantTimeCell, model: AddPlantTimeModel)
}

class AddPlantTimeCell: UITableViewCell {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    @IBOutlet weak var mainTitleLabel: UILabel!
    @IBOutlet weak var mainTitleFrequencyLabel: UILabel!
    @IBOutlet weak var mainNextDateTitleLabel: UILabel!
    
    @IBOutlet weak var careImageView: UIImageView!
    @IBOutlet weak var careTitleLabel: UILabel!
    
    @IBOutlet weak var careTimeLabel: UILabel!
    @IBOutlet weak var careFrequencyLabel: UILabel!
    @IBOutlet weak var careNextDayLabel: UILabel!
    
    @IBOutlet weak var timeButton: UIButton!
    @IBOutlet weak var frequencyButton: UIButton!
    
    private var model: AddPlantTimeModel?
    weak var delegate: AddPlantTimeProtocol?
    
    private let constEvery = RLocalization.add_plant_every.localized(PreferencesManager.sharedManager.languageCode.rawValue)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        timeButton.setTitle("", for: .normal)
        frequencyButton.setTitle("", for: .normal)
        
        mainTitleLabel.text = RLocalization.add_plant_time.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        mainTitleFrequencyLabel.text = RLocalization.add_plant_frequency.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        mainNextDateTitleLabel.text = RLocalization.add_plant_next_date.localized(PreferencesManager.sharedManager.languageCode.rawValue)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setupCell(model: AddPlantTimeModel) {
        self.model = model
        careImageView.image = model.type.name.image
        careTitleLabel.text = model.type.name.text
        
        careTimeLabel.text = model.getTime
        careFrequencyLabel.text = "\(constEvery) \(model.frequency) \(model.period.text)"
        careNextDayLabel.text = model.nextTime
    }
    
    
    @IBAction func actionDate(_ sender: UIButton) {
        guard let model = model else {
            return
        }

        delegate?.addPlantTime(cell: self, model: model)
    }
    
    @IBAction func actionFrequncy(_ sender: UIButton) {
        guard let model = model else {
            return
        }

        delegate?.addPlantFrequency(cell: self, model: model)
    }
    
}
