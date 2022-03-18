
import UIKit

protocol CareCellDelegate: AnyObject {
    func didTappedCareTimeButton(caresModel: CaresModel)
    func didTappedCareFrequencyButton(caresModel: CaresModel)
    func didChangeCareActivity(caresModel: CaresModel, isActive: Bool)
}

class CareCell: UITableViewCell {
    
    @IBOutlet weak var shadowView: ShadowView!
    @IBOutlet weak var bottomViewHeighConstraint: NSLayoutConstraint!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var careImageView: UIImageView!
    @IBOutlet weak var careLabel: UILabel!
    @IBOutlet weak var careSwitch: UISwitch!
    @IBOutlet weak var careTimeTitleLabel: UILabel!
    @IBOutlet weak var careTimeLabel: UILabel!
    @IBOutlet weak var careFrequencyTitleLabel: UILabel!
    @IBOutlet weak var careFrequencyLabel: UILabel!
    @IBOutlet weak var careDateTitleLabel: UILabel!
    @IBOutlet weak var careDateLabel: UILabel!
    
    weak var delegate: CareCellDelegate?
    private var caresModel: CaresModel?

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(caresModel: CaresModel, isHideSwitch: Bool = false) {
        self.caresModel = caresModel
        
        careImageView.image = caresModel.type.name.darklmage
        careLabel.text = caresModel.type.name.text
        
        careSwitch.isHidden = isHideSwitch
        
        if let isActive = caresModel.isActive {
            careSwitch.isOn = isActive
            bottomView.isHidden = isActive ? false : true
            bottomViewHeighConstraint.constant = isActive ? 56.0 : 0.0
        }
        
        if isHideSwitch {
            careTimeLabel.text = caresModel.getTime
        } else {
            if let time = caresModel.sendNotificationAt {
                careTimeLabel.text = String(time.dropLast(3))
            }
        }
        
        let every = RLocalization.garden_plant_cares_edit_every.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        careFrequencyLabel.text = every + " \(caresModel.count)" + " \(caresModel.period.text)"
        careDateLabel.text = caresModel.nextTime
        
        careTimeTitleLabel.text = RLocalization.garden_plant_cares_edit_time.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        careFrequencyTitleLabel.text = RLocalization.garden_plant_cares_edit_frequency.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        careDateTitleLabel.text = RLocalization.garden_plant_cares_edit_next_time.localized(PreferencesManager.sharedManager.languageCode.rawValue)
    }
        
    @IBAction func careTimeimeAction(_ sender: Any) {
        guard let caresModel = self.caresModel else { return }
        delegate?.didTappedCareTimeButton(caresModel: caresModel)
    }
    
    @IBAction func careFrequencyAction(_ sender: Any) {
        guard let caresModel = self.caresModel else { return }
        delegate?.didTappedCareFrequencyButton(caresModel: caresModel)
    }
    
    @IBAction func careActivityAction(_ sender: UISwitch) {
        guard let caresModel = self.caresModel else { return }
        delegate?.didChangeCareActivity(caresModel: caresModel, isActive: sender.isOn)
    }
}
