
import UIKit

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
    // MARK: - Layouts
    //----------------------------------------------
    
    override func layoutSubviews() {
        super.layoutSubviews()

        gardenImageView.layer.cornerRadius = 24
        gardenImageView.layer.maskedCorners = [.layerMinXMinYCorner]
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
        gardenImageView.kf.setImage(with: URL(string: model.userMainImage?.urlIosPrev ?? ""), placeholder: RImage.placeholder_little_ic(), options: [.transition(.fade(0.25))])
        gardenNameLabel.text = model.name
        if let totalPlants = model.totalPlants {
            gadenPlantsCountLabel.text = "\(totalPlants)"
            gadenPlantsCountInfoLabel.text = "Plants: \(totalPlants)"
        }
        if let needCaresCount = model.needCareCount {
            gardenCaresView.backgroundColor = needCaresCount == 0 ? UIColor(rgb: 0x7CDAA3) : UIColor(rgb: 0xFF993C)
            gardenCaresLabel.text = needCaresCount == 0 ? "Plants are happy" : "Plants Need Cares: \(needCaresCount)"
        }
    }
}
