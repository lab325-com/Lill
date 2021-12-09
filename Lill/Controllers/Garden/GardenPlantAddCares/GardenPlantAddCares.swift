
import UIKit

class GardenPlantAddCares: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var caresViews: [GardenPlantCareView]!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private var cares: [CareType] = []
    private var selectedCares = Set<CareType>()
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    func setup() {
        title = "Add Care"
        let rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(backAction))
        rightBarButtonItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "SFProDisplay-Regular", size: 17.0)!, NSAttributedString.Key.foregroundColor : UIColor(rgb: 0x7CDAA3)], for: .normal)
//        leftBarButtonItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "SFProDisplay-Regular", size: 17.0)!, NSAttributedString.Key.foregroundColor : UIColor(rgb: 0x7CDAA3)], for: .normal)
        navigationItem.rightBarButtonItem = rightBarButtonItem
        
        scrollView.contentInset.left = 9.0
        scrollView.contentInset.right = 9.0
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
// MARK: - AddPlantCareProtocol
//----------------------------------------------

extension GardenPlantAddCares: GardenPlantCareViewProtocol {
    func didSelectCare(view: GardenPlantCareView, selectedType: CareType) {
        
    }
    
//    func addPlantCareSelect(view: AddPlantCareView, selectedType: CareType) {
//        if selectedCares.contains(selectedType) {
//            selectedCares.remove(selectedType)
//        } else {
//            selectedCares.insert(selectedType)
//        }
//
//        changesView()
//    }
}
