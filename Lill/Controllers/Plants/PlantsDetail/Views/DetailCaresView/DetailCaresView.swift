
import UIKit

class DetailCaresView: UIView, LoadFromXibProtocol {
    
    @IBOutlet weak var backView: UIView!
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        addSubviewLoadedFromXib()
        
        backView.layer.cornerRadius = 22
        backView.layer.borderWidth = 1
        backView.layer.borderColor = UIColor(rgb: 0xEDEDED).cgColor
    }

}
