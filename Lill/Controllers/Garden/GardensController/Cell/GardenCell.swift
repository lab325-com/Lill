
import UIKit

protocol GardenCellDelegate: AnyObject {
    func gardenCellNeedCares(cell: GardenCell, model: GardenModel)
}

class GardenCell: UITableViewCell {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------

    @IBOutlet weak var shadowView: ShadowView!
    @IBOutlet weak var gardenImageView: UIImageView!
    @IBOutlet weak var gardenNameLabel: UILabel!
    @IBOutlet weak var gadenPlantsCountInfoLabel: UILabel!
    @IBOutlet weak var gadenPlantsCountLabel: UILabel!
    @IBOutlet weak var gardenCaresView: UIView!
    @IBOutlet weak var gardenCaresLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    private var model: GardenModel?
    weak var delegate: GardenCellDelegate?
    
    //----------------------------------------------
    // MARK: - Layouts
    //----------------------------------------------
    
    override func layoutSubviews() {
        super.layoutSubviews()

        gardenImageView.layer.cornerRadius = 24
        gardenImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
    }
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //----------------------------------------------
    // MARK: - Public methods
    //----------------------------------------------
    
    func configure(model: GardenModel) {
        self.model = model
        gardenImageView.kf.setImage(with: URL(string: model.userMainImage?.urlIosPrev ?? ""), placeholder: RImage.placeholder_little_ic(), options: [.transition(.fade(0.25))])
        gardenNameLabel.text = model.name
        if let totalPlants = model.totalPlants {
            gadenPlantsCountLabel.text = "\(totalPlants)"
            gadenPlantsCountInfoLabel.text = RLocalization.garden_cell_plants.localized(PreferencesManager.sharedManager.languageCode.rawValue) +  "\(totalPlants)"
            gardenCaresView.isHidden = totalPlants > 0 ? false : true
        }
        if let needCaresCount = model.needCareCount {
            gardenCaresView.backgroundColor = needCaresCount == 0 ? UIColor(rgb: 0x7CDAA3) : UIColor(rgb: 0xFF993C)
            gardenCaresLabel.text = needCaresCount == 0 ? RLocalization.garden_cell_plants_happy.localized(PreferencesManager.sharedManager.languageCode.rawValue) : RLocalization.garden_cell_plants_need_cares.localized(PreferencesManager.sharedManager.languageCode.rawValue) +  "\(needCaresCount)"
        }
    }
    
    @IBAction func actionNeedCares(_ sender: UIButton) {
        if let model = model, model.needCareCount != 0 {
            delegate?.gardenCellNeedCares(cell: self, model: model)
        }
    }
}
