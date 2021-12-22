
import UIKit

class DetailCaresView: UIView, LoadFromXibProtocol {
    
    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var careImageView: UIImageView!
    @IBOutlet weak var careTitleLabel: UILabel!
    @IBOutlet weak var careValueLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setup()
    }
    
    private func setup() {
        addSubviewLoadedFromXib()
        
        backView.layer.cornerRadius = 22
    }

    func setup(care: (type: PlantsCareType, care: CaresModel)) {
        careImageView.tintColor = UIColor(rgb: 0x7CDAA3)
        
        careImageView.image = care.type.image
        careTitleLabel.text = care.type.text
        
        careValueLabel.text = "\(care.care.count) \(care.care.period.localization)"
    }
    
    func setup(care: (type: PlantsCareType, care: GardenShortPlantCaresModel)) {
        careImageView.tintColor = UIColor(rgb: 0x7CDAA3)
        
        careImageView.image = care.type.image
        careTitleLabel.text = care.type.text
        careValueLabel.text = "\(care.care.count) \(care.care.period.localization)"
    }
    
    func setupWithDate(care: (type: PlantsCareType, care: GardenShortPlantCaresModel)) {
        careImageView.tintColor = UIColor.white
        careTitleLabel.textColor = UIColor.white
        careValueLabel.textColor = UIColor.white
        
        let days = Calendar.current.dateComponents([.day], from: Date(), to: care.care.date).day ?? 0
        
        backView.backgroundColor = care.care.status.color
        
        careImageView.image = care.type.image
        careTitleLabel.text = care.type.text
        
        if days < 0 {
            careValueLabel.text = "\(days * -1) days"
        } else if days == 0 {
            careValueLabel.text = "today"
        } else {
            careValueLabel.text = "\(days) days"
        }
    }
}
