
import UIKit

class DetailAboutView: UIView, LoadFromXibProtocol {

    @IBOutlet weak var aboutImageView: UIImageView!
    @IBOutlet weak var aboutTitleLabel: UILabel!
    @IBOutlet weak var aboutValueLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        addSubviewLoadedFromXib()
    }
    
    func setup(about: PlantsAboutType, model: ClimatModel?) {
        switch about {
        case .habit:
            aboutImageView.image = UIImage(named: "plants_detail_about_habit_ic")
            aboutValueLabel.text = model?.habit?.localization
            aboutTitleLabel.text = RLocalization.climate_habit()
        case .shade:
            aboutImageView.image = UIImage(named: "plants_detail_about_shade_ic")
            aboutValueLabel.text = model?.shade?.localization
            aboutTitleLabel.text = RLocalization.climate_shade()
        case .moisture:
            aboutImageView.image = UIImage(named: "plants_detail_about_moisture_ic")
            aboutValueLabel.text = model?.moisture?.localization
            aboutTitleLabel.text = RLocalization.climate_moisture()
        case .height:
            aboutImageView.image = UIImage(named: "plants_detail_about_height_ic")
            aboutValueLabel.text = "\(model?.height ?? 0)"
            aboutTitleLabel.text = RLocalization.climate_height()
        case .soil:
            aboutImageView.image = UIImage(named: "plants_detail_about_soil_ic")
            aboutValueLabel.text = model?.soil?.localization
            aboutTitleLabel.text = RLocalization.climate_soil()
        case .ph:
            aboutImageView.image = UIImage(named: "plants_detail_about_ph_ic")
            aboutValueLabel.text = model?.ph?.localization
            aboutTitleLabel.text = RLocalization.climate_ph()
        case .deciduous:
            aboutImageView.image = UIImage(named: "plants_detail_about_deciduous_ic")
            aboutValueLabel.text = model?.deciduous?.localization
            aboutTitleLabel.text = RLocalization.climate_deciduous()
        case .hardiness:
            aboutImageView.image = UIImage(named: "plants_detail_about_hardiness_ic")
            aboutValueLabel.text = "\(model?.hardiness ?? 0)"
            aboutTitleLabel.text = RLocalization.climate_hardiness()
        }
    }
    
}
