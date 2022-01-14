
import UIKit

protocol AddPlaceCellDelegate: AnyObject {
    func didTappedAddPlaceButton()
}

class AddPlaceCell: UITableViewCell {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------

    @IBOutlet weak var addPlaceButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Public properties
    //----------------------------------------------
    
    weak var delegate: AddPlaceCellDelegate?

    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //----------------------------------------------
    // MARK: - Public methods
    //----------------------------------------------
    
    func configure() {
        addPlaceButton.layer.cornerRadius = 22
        addPlaceButton.layer.borderWidth = 1
        addPlaceButton.layer.borderColor = UIColor(rgb: 0x7CDAA3).cgColor
        
        addPlaceButton.setTitle(RLocalization.add_place_cell_add_place.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }
    
    //----------------------------------------------
    // MARK: - IBActions
    //----------------------------------------------
    
    @IBAction func addPlaceAction(_ sender: Any) {
        delegate?.didTappedAddPlaceButton()
    }
}
