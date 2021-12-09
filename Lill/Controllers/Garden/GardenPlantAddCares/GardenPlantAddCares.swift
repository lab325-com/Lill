
import UIKit
import Apollo

class GardenPlantAddCares: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var caresStack: UIStackView!
    @IBOutlet var caresViews: [GardenPlantCareView]!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private var selectedCares = Set<CareType>()
    
    //----------------------------------------------
    // MARK: - Global property
    //----------------------------------------------
    
    lazy var presenter = GardenPlantAddCaresPresenter(view: self)
    var cares: [CareType] = []
    
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
        title = "Add Care"
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
        let rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(backAction))
        rightBarButtonItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "SFProDisplay-Regular", size: 17.0)!], for: .normal)
        navigationItem.rightBarButtonItem = rightBarButtonItem
        
        scrollView.contentInset.left = 9.0
        scrollView.contentInset.right = 9.0
        
        for view in caresViews {
            view.isHidden = true
            view.delegate = self
        }
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
        updateCaresView()
    }
}
