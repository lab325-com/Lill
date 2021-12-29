
import UIKit
import Kingfisher

protocol GardenViewCellDelegate: AnyObject {
    func didTappedCaresDetailButton(cell: GardenViewCell)
}

class GardenViewCell: UICollectionViewCell {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var containView: UIView!
    @IBOutlet weak var plantImageView: UIImageView!
    @IBOutlet weak var plantNameLabel: UILabel!
    @IBOutlet weak var plantCareButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Public properties
    //----------------------------------------------
    
    weak var delegate: GardenViewCellDelegate?
    var indexPath: IndexPath?
    
    //----------------------------------------------
    // MARK: - Layouts
    //----------------------------------------------
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        DispatchQueue.main.async {
            self.containView.roundCorners(corners: [.topLeft, .topRight, .bottomRight], radius: 24.0)
        }
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
    
    func configure(model: GardenPlantModel) {
        let plantHappy = RLocalization.garden_plant_is_happy.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        let needCares = RLocalization.garden_need_cares.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        plantNameLabel.text = model.name
        plantImageView.kf.setImage(with: URL(string: model.userMainImage?.urlIosPrev ?? ""), placeholder: RImage.placeholder_little_ic(), options: [.transition(.fade(0.25))])
        plantCareButton.setTitle(model.isHappy ? "\(plantHappy)" : model.gardenPlantCares.count == 1 ? model.gardenPlantCares.first?.careType.name.text : "\(needCares) \(model.gardenPlantCares.count)", for: .normal)
        plantCareButton.backgroundColor = model.isHappy ? UIColor(rgb: 0x7CDAA3) : UIColor(rgb: 0xFF993C)
        plantCareButton.isUserInteractionEnabled = !model.isHappy
    }
    
    //----------------------------------------------
    // MARK: - IBActions
    //----------------------------------------------
    
    @IBAction func caresDetailAction(_ sender: Any) {
        delegate?.didTappedCaresDetailButton(cell: self)
    }
}
