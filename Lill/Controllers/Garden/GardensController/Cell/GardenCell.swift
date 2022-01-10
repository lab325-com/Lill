
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
    @IBOutlet weak var gardenCaresLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Layouts
    //----------------------------------------------
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        DispatchQueue.main.async {
            self.shadowView.roundCorners(corners: [.topLeft, .topRight, .bottomRight], radius: 24.0)
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
    
    func configure(model: GardenModel) {
        gardenImageView.kf.setImage(with: URL(string: model.userMainImage?.urlIosPrev ?? ""), placeholder: RImage.placeholder_little_ic(), options: [.transition(.fade(0.25))])
        gardenNameLabel.text = model.name
        
    }
}
