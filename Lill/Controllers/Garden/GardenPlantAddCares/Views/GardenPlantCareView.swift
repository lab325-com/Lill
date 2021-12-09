
import UIKit

protocol GardenPlantCareViewProtocol: AnyObject {
    func didSelectCare(view: GardenPlantCareView, selectedType: CareType)
}

class GardenPlantCareView: UIView, LoadFromXibProtocol {

    @IBOutlet weak var careImageView: UIImageView!
    @IBOutlet weak var careTitleLabel: UILabel!
    
    weak var delegate: GardenPlantCareViewProtocol?
    
    private var selectedType: CareType?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        addSubviewLoadedFromXib()
    }
    
    func setup(type: CareType, isSelected: Bool) {
        selectedType = type
        
        careImageView.image = type.name.image
        careTitleLabel.text = type.name.text
        
        careImageView.tintColor = isSelected ? UIColor(rgb: 0x7CDAA3) : UIColor.black
        careTitleLabel.textColor = isSelected ? UIColor(rgb: 0x7CDAA3) : UIColor.black
    }
    
    @IBAction func selectCareAction(_ sender: UIButton) {
        if let selectedType = selectedType {
            delegate?.didSelectCare(view: self, selectedType: selectedType)
        }
    }
}
