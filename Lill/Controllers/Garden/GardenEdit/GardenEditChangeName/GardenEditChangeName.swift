
import UIKit

protocol GardenEditChangeNameDelegate: AnyObject {
    func didChangeName(text: String)
}

class GardenEditChangeName: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var gardenNameTextField: UITextField!
    @IBOutlet weak var mainView: UIView!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private let gardenId: String
    
    private weak var delegate: GardenEditChangeNameDelegate?
    lazy var presenter = GardenEditChangeNamePresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(gardenId: String, delegate: GardenEditChangeNameDelegate) {
        self.gardenId = gardenId
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
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        titleLabel.text = "Change Name"
        subtitleLabel.text = "Give new name for Place"
        
        mainView.layer.cornerRadius = 24.0
        mainView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        changeButton.setTitle("Change", for: .normal)
        
        gardenNameTextField.addTarget(self, action: #selector(GardenEditChangeName.textFieldDidChange(_:)), for: .editingChanged)
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @IBAction func closeAction(_ sender: UIButton) {
        hideKeyboard()
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeAction(_ sender: UIButton) {
        if let text = gardenNameTextField.text, text.count > 0 {
            presenter.changeName(gardenId: gardenId, text: text)
        }
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        gardenNameTextField.alpha = textField.text?.count ?? 0 > 0 ? 1.0 : 0.5
    }
}

//----------------------------------------------
// MARK: - GardenEditChangeNameOutputProtocol
//----------------------------------------------

extension GardenEditChangeName: GardenEditChangeNameOutputProtocol {
    func successChangeName(text: String) {
        dismiss(animated: false) {
            self.delegate?.didChangeName(text: text)
        }
    }
    
    func failure(error: String) {
        
    }
}
