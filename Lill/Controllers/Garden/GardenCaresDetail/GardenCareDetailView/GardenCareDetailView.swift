
import UIKit

class GardenCareDetailView: UIView, LoadFromXibProtocol {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet var careTimeLabel: UILabel!
    @IBOutlet var careTypeImageView: UIImageView!
    @IBOutlet var careTypeLabel: UILabel!
    @IBOutlet var careStatusLabel: UILabel!
    @IBOutlet var careStatusImageView: UIImageView!
    
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
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    private func setup() {
        addSubviewLoadedFromXib()
    }
    
    //----------------------------------------------
    // MARK: - Public methods
    //----------------------------------------------
    
    func setup(care: (type: PlantsCareType, model: GardenShortPlantCaresModel)) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd HH:mm"
        careTimeLabel.text = dateFormatter.string(from: care.model.date)
        careTypeImageView.image = care.type.gardenCarelmage
        careTypeLabel.text = care.type.text
        careStatusLabel.text = care.model.status.gardenCareStatusText
        careStatusLabel.textColor = care.model.status.color
        careStatusImageView.image = care.model.status.gardenCareStatuslmage
    }
}
