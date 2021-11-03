
import UIKit

class DetailCaresView: UIView, LoadFromXibProtocol {
    
    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var careImageView: UIImageView!
    @IBOutlet weak var careTitleLabel: UILabel!
    @IBOutlet weak var careValueLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        addSubviewLoadedFromXib()
        
        backView.layer.cornerRadius = 22
        backView.layer.borderWidth = 1
        backView.layer.borderColor = UIColor(rgb: 0xEDEDED).cgColor
    }

    func setup(care: (type: PlantsCareType, care: CaresModel)) {
        switch care.type {
        case .humidity:
            careImageView.image = UIImage(named: "plants_detail_humidity_ic")
            careTitleLabel.text = RLocalization.care_type_humidity.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .misting:
            careImageView.image = UIImage(named: "plants_detail_misting_ic")
            careTitleLabel.text = RLocalization.care_type_misting.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .rotating:
            careImageView.image = UIImage(named: "plants_detail_rotating_ic")
            careTitleLabel.text = RLocalization.care_type_rotating.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        case .watering:
            careImageView.image = UIImage(named: "plants_detail_watering_ic")
            careTitleLabel.text = RLocalization.care_type_watering.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        }
        careValueLabel.text = "\(care.care.count) \(care.care.period.localization)"
    }
}
