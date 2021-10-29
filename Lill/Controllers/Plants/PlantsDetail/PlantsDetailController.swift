
import UIKit




class PlantsDetailController: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var wishButton: UIButton!
    @IBOutlet weak var moreOnWikiButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet var detailsView: [DetailAboutView]!
    
    
    @IBOutlet var verticalStacks: [UIStackView]!
    @IBOutlet var separeteViews: [UIView]!
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private lazy var presenter = PlantsDetailPresenter(view: self)
    private var id: String
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(id: String) {
        self.id = id
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //----------------------------------------------
    // MARK: - Life Cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.getPlantDetail(id: id)
        
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        scrollView.alpha = 1.0
        
        navigationController?.navigationBar.tintColor = UIColor.white
        
        wishButton.setTitle("", for: .normal)
        wishButton.layer.cornerRadius = 22
        wishButton.layer.borderWidth = 1
        wishButton.layer.borderColor = UIColor(rgb: 0xC36ED1).cgColor
        
        moreOnWikiButton.layer.cornerRadius = 22
        moreOnWikiButton.layer.borderWidth = 1
        moreOnWikiButton.layer.borderColor = UIColor(rgb: 0x7CDAA3).cgColor
    }
}

//----------------------------------------------
// MARK: - PlantsDetailOutputProtocol
//----------------------------------------------

extension PlantsDetailController: PlantsDetailOutputProtocol {
    func success(model: PlantDataModel, abouts: [PlantsAboutType]) {
        for view in detailsView {
            view.isHidden = true
        }
        
        for index in 0..<abouts.count {
            if let about = abouts[safe: index],  let view = detailsView[safe: index] {
                view.isHidden = false
                view.setup(about: about, model: model)
            }
        }
        
        if abouts.count < 3 {
            for index in 1...2 {
                separeteViews.first(where: {$0.tag == index})?.isHidden = true
            }
            
            for index in 1...3 {
                verticalStacks.first(where: {$0.tag == index})?.isHidden = true
            }
        }
        
        UIView.animate(withDuration: 0.3) { [weak self] in
            self?.scrollView.alpha  = 1.0
        }
    }
    
    func failure(error: String) {
        
    }
}
