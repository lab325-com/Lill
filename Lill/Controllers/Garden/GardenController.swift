
import UIKit

class GardenController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var addPlantsLabel: UILabel!
    @IBOutlet weak var addPlantsView: UIView!
    @IBOutlet weak var addPlantsShadowView: UIView!
    @IBOutlet weak var addPantsMainLabel: UILabel!
    
    @IBOutlet var stacksViews: [UIView]!
    @IBOutlet var stacksButton: [UIButton]!
    @IBOutlet var stacksLabel: [UILabel]!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private var selectedType = 0
    
    private lazy var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.type = .axial
        gradient.colors = [
            UIColor.red.cgColor,
            UIColor.purple.cgColor,
            UIColor.cyan.cgColor
        ]
        gradient.locations = [0, 0.25, 1]
        return gradient
    }()
    
    private let cellIdentifier = String(describing: GardenViewCell.self)
    private let cellButtonIdentifier = String(describing: GardenButtonCell.self)
    
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
        addGradients()
        addShadow()
        
        for button in stacksButton {
            button.setTitle("", for: .normal)
        }
        
        setupStacks()
        
        collectionView.register(UINib.init(nibName: cellIdentifier,
                                           bundle: nil),
                                forCellWithReuseIdentifier: cellIdentifier)
        collectionView.register(UINib.init(nibName: cellButtonIdentifier,
                                           bundle: nil),
                                forCellWithReuseIdentifier: cellButtonIdentifier)
        
        collectionView.reloadData()
    }
    
    private func addGradients() {
        let layer1 = CAGradientLayer()
        layer1.colors = [
            UIColor(red: 0.598, green: 0.854, blue: 0.477, alpha: 1).cgColor,
            UIColor(red: 0.477, green: 0.854, blue: 0.65, alpha: 1).cgColor
        ]
        layer1.locations = [0, 1]
        layer1.startPoint = CGPoint(x: 0.25, y: 0.5)
        layer1.endPoint = CGPoint(x: 0.75, y: 0.5)
        layer1.frame = addPlantsView.bounds
        addPlantsView.layer.addSublayer(layer1)
    }
    
    private func addShadow() {
        let shadowPath0 = UIBezierPath(roundedRect: addPlantsShadowView.bounds, cornerRadius: 24)
        let layer0 = CALayer()
        layer0.shadowPath = shadowPath0.cgPath
        layer0.shadowColor = UIColor(red: 0.477, green: 0.854, blue: 0.65, alpha: 0.25).cgColor
        layer0.shadowOpacity = 1
        layer0.shadowRadius = 12
        layer0.shadowOffset = CGSize(width: 0, height: 4)
        layer0.frame = addPlantsShadowView.bounds
        addPlantsShadowView.layer.addSublayer(layer0)
    }
    
    private func setupStacks() {
        for view in stacksViews {
            if view.tag == selectedType, selectedType == 0 {
                view.backgroundColor = UIColor(rgb: 0x7CDAA3)
            } else if view.tag == selectedType {
                view.backgroundColor = UIColor(rgb: 0xFF993C)
            } else {
                view.backgroundColor = UIColor.white
            }
        }
        
        for label in stacksLabel {
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
    
    @IBAction func actionSelectStacks(_ sender: UIButton) {
        selectedType = sender.tag
        setupStacks()
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDataSource, UICollectionViewDelegate
//----------------------------------------------

extension GardenController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 4 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  cellButtonIdentifier, for: indexPath) as! GardenButtonCell
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  cellIdentifier, for: indexPath) as! GardenViewCell
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        debugPrint("select itema")
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDelegateFlowLayout
//----------------------------------------------

extension GardenController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row == 4 {
            return CGSize(width: UIScreen.main.bounds.size.width - 24, height: 44)
        } else {
            return CGSize(width: UIScreen.main.bounds.size.width / 2 - 13 , height: UIScreen.main.bounds.size.width / 2 - 13)
        }
    }
}
