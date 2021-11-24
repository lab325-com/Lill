
import UIKit
import Kingfisher

class GardenCaresDetail: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var caresStackView: UIStackView!

    @IBOutlet var careViews: [ShadowView]!
    @IBOutlet var careTimeLabels: [UILabel]!
    @IBOutlet var careTypeImages: [UIImageView]!
    @IBOutlet var careTypeLabels: [UILabel]!
    @IBOutlet var careStatusLabels: [UILabel]!
    @IBOutlet var careStatusImages: [UIImageView]!
    
    @IBOutlet var plantNameLabel: UILabel!
    @IBOutlet var plantImageView: UIImageView!
    @IBOutlet var caresCountLabel: UILabel!
    @IBOutlet var caresInfoLabel: UILabel!
    @IBOutlet var doneCaresButton: UIButton!
    @IBOutlet var cancelButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------

    lazy var presenter = GardenCaresDetailPresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private let plantID: String
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(plantID: String) {
        self.plantID = plantID
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.getCaresDetailGarden(gardenId: plantID)
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func doneCaresAction(_ sender: Any) {
        
    }
    
    @IBAction func cancelAction(_ sender: Any) {
        dismiss(animated: false)
    }
}

//----------------------------------------------
// MARK: - GardenCaresDetailOutputProtocol
//----------------------------------------------

extension GardenCaresDetail: GardenCaresDetailOutputProtocol {
    func success() {
        guard let model = presenter.model else { return }
        //let cares = presenter.cares
        
        plantNameLabel.text = model.name
        plantImageView.kf.setImage(with: URL(string: model.userMainImage?.urlIosFull ?? ""), placeholder: RImage.placeholder_big_ic(), options: [.transition(.fade(0.25))])
        caresCountLabel.text = "\(model.gardenPlantCares.count) Cares"
        caresInfoLabel.text = "Are you sure want to mark as done?"
    }
    
    func failure(error: String) {
        
    }
}
