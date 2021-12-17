
import UIKit
import Apollo

class GardenPlantAddCares: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var caresViews: [GardenPlantCareView]!
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var addCustomCareButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private let gardenPlantId: String
    private var cares: [CareType] = []
    private var selectedCares = Set<CareType>() {
        didSet {
            addCustomCareButton.alpha = selectedCares.count > 0 ? 1.0 : 0.5
        }
    }
    
    //----------------------------------------------
    // MARK: - Global property
    //----------------------------------------------
    
    lazy var presenter = GardenPlantAddCaresPresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(gardenPlantId: String, cares: [CareType]) {
        self.gardenPlantId = gardenPlantId
        self.cares = cares
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
        
        setup()
        presenter.getCares()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    func setup() {
        addCustomCareButton.alpha = 0.5
        title = RLocalization.garden_plant_add_cares_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
        let rightBarButtonItem = UIBarButtonItem(title: RLocalization.garden_plant_add_cares_done.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .done, target: self, action: #selector(backAction))
        rightBarButtonItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "SFProDisplay-Regular", size: 17.0)!], for: .normal)
        navigationItem.rightBarButtonItem = rightBarButtonItem
        
        infoLabel.text = RLocalization.garden_plant_add_cares_info.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        scrollView.contentInset.left = 9.0
        scrollView.contentInset.right = 9.0
        
        for view in caresViews {
            view.isHidden = true
            view.delegate = self
        }
        
        addCustomCareButton.setTitle(RLocalization.garden_plant_add_cares_add_custom_care.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
    }
    
    private func updateCaresView() {
        for index in 0..<cares.count {
            let type = cares[index]
            caresViews.first(where: {$0.tag == index})?.setup(type: type, isSelected: selectedCares.contains(type))
        }
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @IBAction func addCustomCareAction(_ sender: Any) {
        if selectedCares.count > 0 {
            var careModels = [CaresModel]()
            for type in selectedCares {
                careModels.append(CaresModel(count: 7, id: type.id, name: nil, isActive: true, sendNotificationAt: nil, nexDate: nil, type: type, period: .periodTypeWeek))
            }
            GardenPlantAddCaresRouter(presenter: navigationController).pushAddCareSetup(gardenPlantId: gardenPlantId, cares: careModels)
        }
    }
    
    @objc func backAction() {
        navigationController?.popViewController(animated: true)
    }
}

//----------------------------------------------
// MARK: - GardenPlantAddCaresOutputProtocol
//----------------------------------------------

extension GardenPlantAddCares: GardenPlantAddCaresOutputProtocol {
    func successGetCares(cares: [CareType]) {
        
        self.cares = Array(Set(cares).symmetricDifference(Set(self.cares)))
        
        for index in 0..<self.cares.count {
            let view = caresViews.first(where: {$0.tag == index})
            view?.isHidden = false
            view?.setup(type: self.cares[index], isSelected: false)
        }
    }
    
    func failure(error: String) {
        
    }
}

//----------------------------------------------
// MARK: - AddPlantCareProtocol
//----------------------------------------------

extension GardenPlantAddCares: GardenPlantCareViewProtocol {
    func didSelectCare(view: GardenPlantCareView, selectedType: CareType) {
        if selectedCares.contains(selectedType) {
            selectedCares.remove(selectedType)
        } else {
            selectedCares.insert(selectedType)
        }
        addCustomCareButton.isUserInteractionEnabled = selectedCares.count > 0 ? true : false
        updateCaresView()
    }
}
