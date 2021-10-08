
import UIKit

class GardenViewCell: UICollectionViewCell {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var containView: UIView!
    
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
        
    }
}
