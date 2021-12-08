
import UIKit

class GardenPlantAddCares: BaseController {
    
    @IBOutlet var caresViews: [GardenPlantCareView]!

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
