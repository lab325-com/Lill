
import UIKit

class GardenController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var addPlantShadowView: ShadowView!
    @IBOutlet weak var addPlantGradientView: GradientView!
    @IBOutlet weak var addPantLabel: UILabel!
    
    @IBOutlet var stackViews: [ShadowView]!
    @IBOutlet var stackButtons: [UIButton]!
    @IBOutlet var stackLabels: [UILabel]!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private var selectedType = 0
    
    //----------------------------------------------
    // MARK: - Gobal property
    //----------------------------------------------
    
    let cellIdentifier = String(describing: GardenViewCell.self)
    let cellButtonIdentifier = String(describing: GardenButtonCell.self)
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = true
        
        super.viewDidLoad()
        
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        
        for button in stackButtons {
            button.setTitle("", for: .normal)
        }
        
        updateButtonsStack()
        
        collectionView.register(UINib.init(nibName: cellIdentifier,
                                           bundle: nil),
                                forCellWithReuseIdentifier: cellIdentifier)
        collectionView.register(UINib.init(nibName: cellButtonIdentifier,
                                           bundle: nil),
                                forCellWithReuseIdentifier: cellButtonIdentifier)
        
        collectionView.reloadData()
    }
    
    private func updateButtonsStack() {
        for view in stackViews {
            if view.tag == selectedType, selectedType == 0 {
                view.backgroundColor = UIColor(rgb: 0x7CDAA3)
            } else if view.tag == selectedType {
                view.backgroundColor = UIColor(rgb: 0xFF993C)
            } else {
                view.backgroundColor = UIColor.white
            }
        }
        
        for label in stackLabels {
            if label.tag == selectedType {
                label.textColor = UIColor.white
            } else {
                label.textColor = UIColor(rgb: 0x666666)
            }
        }
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @IBAction func selectStackAction(_ sender: UIButton) {
        selectedType = sender.tag
        updateButtonsStack()
    }
    
    @IBAction func addPlantAction(_ sender: UIButton) {
        tabBarController?.selectedIndex = 0
    }
}
