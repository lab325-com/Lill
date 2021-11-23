
import UIKit

protocol GardenButtonCellDelegate: AnyObject {
    func didTappedDoneCaresButton()
}

class GardenButtonCell: UICollectionViewCell {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var doneCaresButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Public properties
    //----------------------------------------------
    
    weak var delegate: GardenButtonCellDelegate?
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //----------------------------------------------
    // MARK: - Public methods
    //----------------------------------------------
    
    func configure(title: String) {
        doneCaresButton.setTitle(title, for: .normal)
    }
    
    //----------------------------------------------
    // MARK: - IBActions
    //----------------------------------------------
    
    @IBAction func doneCaresAction(_ sender: Any) {
        delegate?.didTappedDoneCaresButton()
    }
}
