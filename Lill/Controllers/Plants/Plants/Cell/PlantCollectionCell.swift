
import UIKit
import Kingfisher

protocol PlantCollectionDelegate: AnyObject {
    func setFavorite(cell: PlantCollectionCell, id: String, isFavorite: Bool)
    func setToGarden(cell: PlantCollectionCell, id: String)
}

class PlantCollectionCell: UICollectionViewCell {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var containView: UIView!
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var favoriteImageView: UIImageView!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var addFavorite: UIButton!
    
    weak var delegate: PlantCollectionDelegate?
    
    private var modelOne: PlantsModel?
    private var modelTwo: PlantModel?
    
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
        addFavorite.setTitle("", for: .normal)
        addButton.setTitle("", for: .normal)
    }

    //----------------------------------------------
    // MARK: - Configure
    //----------------------------------------------
    
    func configure(model: PlantsModel) {
        modelOne = model
        titleLabel.text = model.description.name
        
        mainImageView.kf.setImage(with: URL(string: model.description.image.urlIosPrev ?? ""), placeholder: RImage.placeholder_little_ic(), options: [.transition(.fade(0.25))])
        
        favoriteImageView.image = model.description.is_favorite ? UIImage(named: "ic_plants_favorite") : UIImage(named: "ic_plants_unfavorite")
    }
    
    func configure(model: PlantModel) {
        modelTwo = model
        titleLabel.text = model.latinName
        mainImageView.kf.setImage(with: URL(string: model.plantImages.first?.urlIosPrev ?? ""), placeholder: RImage.placeholder_little_ic(), options: [.transition(.fade(0.25))])
        favoriteImageView.image = model.isFavourite == true ? UIImage(named: "ic_plants_favorite") : UIImage(named: "ic_plants_unfavorite")
    }
    
    //----------------------------------------------
    // MARK: - Action
    //----------------------------------------------
    
    @IBAction func addToFavoriteAction(_ sender: UIButton) {
        if let modelOne = modelOne {
            delegate?.setFavorite(cell: self, id: modelOne.id, isFavorite: modelOne.description.is_favorite)
        } else if let modelTwo  =  modelTwo {
            delegate?.setFavorite(cell: self, id: modelTwo.id, isFavorite: modelTwo.isFavourite ?? false)
        }
    }
    
    @IBAction func actionAddToGarden(_ sender: UIButton) {
        if let modelOne = modelOne {
            delegate?.setToGarden(cell: self, id: modelOne.id)
        } else if let modelTwo  =  modelTwo {
            delegate?.setToGarden(cell: self, id: modelTwo.id)
        }
    }
}
