
import UIKit

class CareInfoCell: UITableViewCell {
    
    @IBOutlet weak var infoLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(infoText: String) {
        infoLabel.text = infoText
    }
}
