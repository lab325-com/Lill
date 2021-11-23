
import UIKit

class GardenCaresDetail: BaseController {
    
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
        
    }
}
