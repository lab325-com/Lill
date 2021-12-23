//
//  GardenHistoryNotesController.swift
//  Lill
//
//  Created by Andrey S on 22.12.2021.
//

import UIKit

protocol GardenHistoryNotesDelegate: AnyObject {
    func gardenHistoryNotesCancel(controller: GardenHistoryNotesController)
    func gardenHistoryNotesAdd(controller: GardenHistoryNotesController, text: String)
}

class GardenHistoryNotesController: BaseController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var addNoteLabel: UILabel!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var notesTextView: UITextView!
    @IBOutlet weak var addPhotoButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    weak var delegate: GardenHistoryNotesDelegate?
    
    private var timer: Timer?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(delegate: GardenHistoryNotesDelegate) {
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
        super.viewDidLoad()
        addPhotoButton.setTitle(RLocalization.garden_history_add_photo.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        cancelButton.setTitle(RLocalization.garden_history_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        addNoteLabel.text = RLocalization.garden_history_add_notes.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        notesTextView.becomeFirstResponder()
        bottomView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        bottomView.layer.cornerRadius = 24
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        timer?.fire()
    }
    
    deinit {
        timer?.invalidate()
        timer = nil
    }
    
    override func hideKeyboard() {
        
    }
    
    @objc func fireTimer() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd | HH:mm"
        dateLabel.text = dateFormatter.string(from: Date())
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @IBAction func actionAddPhoto(_ sender: UIButton) {
        notesTextView.resignFirstResponder()
        delegate?.gardenHistoryNotesAdd(controller: self, text: notesTextView.text)
    }
    
    @IBAction func actionCancel(_ sender: UIButton) {
        notesTextView.resignFirstResponder()
        delegate?.gardenHistoryNotesCancel(controller: self)
    }
}
