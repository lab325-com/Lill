
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
        addCareButton.isHidden = false
        addCareButton.setTitle("Add Care", for: .normal)
    }
    
    @IBAction func addCareAction(_ sender: Any) {
        delegate?.didPressedAddCareButton()
    }
}
