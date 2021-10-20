
import UIKit
import Kingfisher

class PlantCollectionCell: UICollectionViewCell {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var containView: UIView!
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var favoriteImageView: UIImageView!
    @IBOutlet weak var addButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Layouts
    //----------------------------------------------
    
    override func layoutSubviews() {
        super.layoutSubviews()
        DispatchQueue.main.async {
            self.containView.roundCorners(corners: [.topLeft, .topRight, .bottomRight], radius: 24.0)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addButton.setTitle("", for: .normal)
    }

    //----------------------------------------------
    // MARK: - Configure
    //----------------------------------------------
    
    func configure(model: PlantsModel) {
        titleLabel.text = model.description.name
        
        guard let urlIosPrev = model.description.image.urlIosPrev else { return }
        mainImageView.kf.setImage(with: URL(string: urlIosPrev), options: [.transition(.fade(0.25))])
        
        favoriteImageView.image = model.description.is_favorite ? UIImage(named: "ic_plants_favorite") : UIImage(named: "ic_plants_unfavorite")
    }
}
