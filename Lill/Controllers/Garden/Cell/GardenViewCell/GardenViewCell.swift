
import UIKit
import Kingfisher

class GardenViewCell: UICollectionViewCell {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var containView: UIView!
    @IBOutlet weak var plantImageView: UIImageView!
    @IBOutlet weak var plantNameLabel: UILabel!
    @IBOutlet weak var plantCareView: UIView!
    @IBOutlet weak var plantCareLabel: UILabel!
    
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
        plantNameLabel.text = model.name
        plantImageView.kf.setImage(with: URL(string: model.userMainImage?.urlIosPrev ?? ""), placeholder: RImage.placeholder_little_ic(), options: [.transition(.fade(0.25))])
        plantCareLabel.text = model.isHappy ? "Plant is happy" : model.gardenPlantCares.count == 1 ? model.gardenPlantCares.first?.careType.name.text : "Need Cares: \(model.gardenPlantCares.count)"
        plantCareView.backgroundColor = model.isHappy ? UIColor(rgb: 0x7CDAA3) : UIColor(rgb: 0xFF993C)
    }
}
