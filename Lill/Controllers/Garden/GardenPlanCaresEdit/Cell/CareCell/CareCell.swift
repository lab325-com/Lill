
import UIKit

protocol CareCellDelegate: AnyObject {
    func didTappedCareTimeButton(caresModel: CaresModel)
    func didTappedCareFrequencyButton(caresModel: CaresModel)
    func didTappedCareNextDateButton()
    func didChangeCareActivity()
}

class CareCell: UITableViewCell {
    
    @IBOutlet weak var shadowView: ShadowView!
    @IBOutlet weak var shadowViewHeighConstraint: NSLayoutConstraint!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var careImageView: UIImageView!
    @IBOutlet weak var careLabel: UILabel!
    @IBOutlet weak var careSwitch: UISwitch!
    @IBOutlet weak var careTimeTitleLabel: UILabel!
    @IBOutlet weak var careTimeLabel: UILabel!
    @IBOutlet weak var careFrequencyTitleLabel: UILabel!
    @IBOutlet weak var careFrequencyLabel: UILabel!
    @IBOutlet weak var careDateTitleLabel: UILabel!
    @IBOutlet weak var careDateLabel: UILabel!
    
    weak var delegate: CareCellDelegate?
    private var caresModel: CaresModel?

    override func awakeFromNib() {
        super.awakeFromNib()
        
        topView.roundCorners(corners: [.topLeft, .topRight], radius: 24.0)
        bottomView.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 24.0)
    }
    
    func setupCell(caresModel: CaresModel) {
        self.caresModel = caresModel
        careImageView.image = caresModel.type.name.darklmage
        careLabel.text = caresModel.type.name.text
        if let isActive = caresModel.isActive {
            careSwitch.isOn = isActive
        }
    }
        
    @IBAction func careTimeimeAction(_ sender: Any) {
        guard let caresModel = self.caresModel else { return }
        delegate?.didTappedCareTimeButton(caresModel: caresModel)
    }
    
    @IBAction func careFrequencyAction(_ sender: Any) {
        guard let caresModel = self.caresModel else { return }
        delegate?.didTappedCareFrequencyButton(caresModel: caresModel)
    }
    
    @IBAction func careNextDateAction(_ sender: Any) {
        delegate?.didTappedCareNextDateButton()
    }
    
    @IBAction func careActivityAction(_ sender: UISwitch) {
        
    }
}
