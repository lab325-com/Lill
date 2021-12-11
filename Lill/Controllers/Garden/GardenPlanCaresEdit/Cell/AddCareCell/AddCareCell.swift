
import UIKit

protocol AddCareCellProtocol: AnyObject {
    func didPressedAddCareButton()
}

class AddCareCell: UITableViewCell {
    
    @IBOutlet weak var addCareButton: UIButton!
    
    weak var delegate: AddCareCellProtocol?

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell() {
        addCareButton.setTitle(RLocalization.garden_plant_cares_edit_add_care.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }
    
    @IBAction func addCareAction(_ sender: Any) {
        delegate?.didPressedAddCareButton()
    }
}
