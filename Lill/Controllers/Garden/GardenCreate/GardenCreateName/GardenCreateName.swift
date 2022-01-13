
import UIKit

protocol GardenCreateNameDelegate: AnyObject {
    func didCreateName(text: String)
}

class GardenCreateName: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var addPlaceButton: UIButton!
    @IBOutlet weak var gardenNameTextField: UITextField!
    @IBOutlet weak var mainView: UIView!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private weak var delegate: GardenCreateNameDelegate?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(delegate: GardenCreateNameDelegate) {
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        addTapOnScreen = false
        correctionKeyboard = 20
        
        super.viewDidLoad()
        
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        gardenNameTextField.becomeFirstResponder()
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    private func setup() {
        titleLabel.text = "Add Name"
        subtitleLabel.text = "Give name for Place"
        
        mainView.layer.cornerRadius = 24.0
        mainView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        addPlaceButton.setTitle("Add Place", for: .normal)
        
        gardenNameTextField.addTarget(self, action: #selector(GardenEditChangeName.textFieldDidChange(_:)), for: .editingChanged)
        
        addPlaceButton.alpha = 0.5
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @IBAction func closeAction(_ sender: UIButton) {
        hideKeyboard()
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addPlaceAction(_ sender: UIButton) {
        if let text = gardenNameTextField.text, text.count > 0 {
            dismiss(animated: true) {
                self.delegate?.didCreateName(text: text)
            }
        }
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        addPlaceButton.isUserInteractionEnabled = textField.text?.count ?? 0 > 0 ? true : false
        addPlaceButton.alpha = textField.text?.count ?? 0 > 0 ? 1.0 : 0.5
    }
}
