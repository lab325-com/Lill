//
//  GardenDetailEditController.swift
//  Lill
//
//  Created by Andrey S on 23.12.2021.
//

import UIKit
import Kingfisher

protocol GardenDetailEditDelegate: AnyObject {
    func gardenDetailEditSave(controller: GardenDetailEditController, model: MediaModel, notes: String)
    func gardenDetailEditDelete(controller: GardenDetailEditController, model: MediaModel)
}

class GardenDetailEditController: BaseController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var addNoteLabel: UILabel!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var notesTextView: UITextView!
    @IBOutlet weak var saveChangeButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var plantImageView: UIImageView!
    
    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    
    private let model: MediaModel
    private var timer: Timer?
    
    weak var delegate: GardenDetailEditDelegate?
    lazy var presenter = GardenDetailEditPresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(model: MediaModel, delegate: GardenDetailEditDelegate) {
        self.delegate = delegate
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = false
        super.viewDidLoad()

        setup()
    }
    
    deinit {
        timer?.invalidate()
        timer = nil
    }
    
    override func hideKeyboard() {
        
    }
    
    private func setup() {
        plantImageView.kf.setImage(with: URL(string: model.urlIosFull), placeholder: RImage.placeholder_big_ic(), options: [.transition(.fade(0.25))])
        
        navigationItem.title = RLocalization.garden_history_edit.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        notesTextView.text = model.notes
        notesTextView.becomeFirstResponder()
        
        bottomView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        bottomView.layer.cornerRadius = 24
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        timer?.fire()
    }
    
    @objc func fireTimer() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd | HH:mm"
        dateLabel.text = dateFormatter.string(from: Date())
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @IBAction func actionSaveChange(_ sender: UIButton) {
        guard let id = model.id else { return }
        notesTextView.resignFirstResponder()
        presenter.updateMedia(notes: notesTextView.text, mediaID: id)
    }
    
    @IBAction func actionDeletePhoto(_ sender: UIButton) {
        guard let id = model.id else { return }
        notesTextView.resignFirstResponder()
        presenter.deleteMedia(mediaID: id)
    }
}

//----------------------------------------------
// MARK: - GardenDetailEditOutputProtocol
//----------------------------------------------

extension GardenDetailEditController: GardenDetailEditOutputProtocol {
    func successChange() {
        delegate?.gardenDetailEditSave(controller: self, model: model, notes: notesTextView.text)
        navigationController?.popViewController(animated: true)
    }
    
    func successDelete() {
        delegate?.gardenDetailEditDelete(controller: self, model: model)
        navigationController?.popViewController(animated: true)
    }
}
