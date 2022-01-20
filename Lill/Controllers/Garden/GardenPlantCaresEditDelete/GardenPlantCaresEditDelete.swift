//
//  GardenPlantCaresEditDelete.swift
//  Lill
//
//  Created by Andrey S on 08.12.2021.
//

import UIKit

protocol GardenPlantCaresEditDeleteDelegate: AnyObject {
    func successDelete()
}

class GardenPlantCaresEditDelete: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet var caresViews: [UIView]!
    @IBOutlet var imageViews: [UIImageView]!
    @IBOutlet var titlesLabels: [UILabel]!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet var separatorsViews: [UIView]!
    
    @IBOutlet var actionsSelectCares: [UIButton]!
    
    @IBOutlet weak var deleteCareButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    
    lazy var presenter = GardenPlantCaresEditPresenter(view: self)
    private var cares: [CaresModel]
    private var selectedCares: Set<CaresModel> = [] {
        didSet {
            deleteCareButton.isEnabled = selectedCares.count != 0 ?  true : false
            deleteCareButton.alpha = selectedCares.count != 0 ?  1.0 : 0.6
        }
    }
    weak var delegate: GardenPlantCaresEditDeleteDelegate?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(cares: [CaresModel], delegate: GardenPlantCaresEditDeleteDelegate) {
        self.delegate = delegate
        self.cares = cares
        
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
        colorTitleNavigation = UIColor.black
        super.viewDidLoad()

        subtitleLabel.text = RLocalization.garde_edit_delete_sub_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        navigationItem.title = RLocalization.garde_edit_delete_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
        deleteCareButton.setTitle(RLocalization.garde_edit_delete_delete_cares.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        for view in caresViews {
            view.isHidden = true
        }
        
        for view in separatorsViews {
            view.isHidden = true
        }
        
        for index in 0..<cares.count {
            let care = cares[index]
            
            if let _ = cares[safe: index + 1] {
                separatorsViews.first(where: {$0.tag == index})?.isHidden = false
            }
            
            caresViews.first(where: {$0.tag == index})?.isHidden = false
            let imageView = imageViews.first(where: {$0.tag == index})
            imageView?.image = care.type.name.image
            imageView?.tintColor = UIColor.black
            
            titlesLabels.first(where: {$0.tag == index})?.text = care.type.name.text
        }
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @IBAction func actionDeleteCares(_ sender: UIButton) {
        if selectedCares.count > 0 {
            
            let message = RLocalization.garde_edit_delete_allert_sub_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
            let deleteTitle = RLocalization.garde_edit_delete_allert_button(selectedCares.count, preferredLanguages: [PreferencesManager.sharedManager.languageCode.rawValue])
            let cancel = RLocalization.action_edit_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue)
            
            let alert = UIAlertController(title: nil, message: message, preferredStyle: UIAlertController.Style.actionSheet)
            
            let deletePlant = UIAlertAction(title: deleteTitle, style: .destructive) { [weak self] (action: UIAlertAction) in
                guard let `self` = self else { return }
                self.presenter.deleteGardenPlantCares(caresId: self.selectedCares.compactMap({$0.id ?? ""}))
            }
            
            let cancelAction = UIAlertAction(title: cancel, style: .cancel, handler: nil)
            
            alert.addAction(deletePlant)
            alert.addAction(cancelAction)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func actionsSelectCares(_ sender: UIButton) {
        guard let tag = cares[safe: sender.tag] else { return }
        
        if selectedCares.contains(tag) {
            selectedCares.remove(tag)
        } else {
            selectedCares.insert(tag)
        }
        
        for button in actionsSelectCares {
            button.setImage(RImage.garden_delete_unselect_ic(), for: .normal)
        }
        
        for tag in selectedCares {
            
            if let index = cares.firstIndex(of: tag) {
                let button = actionsSelectCares.first(where: {$0.tag == index })
                button?.setImage(RImage.garden_delete_select_ic(), for: .normal)
            }
        }
    }
}

//----------------------------------------------
// MARK: - GardenPlantCaresEditOutputProtocol
//----------------------------------------------

extension GardenPlantCaresEditDelete: GardenPlantCaresEditOutputProtocol {
    func successDeleteGardenPlantCare() {
        navigationController?.popViewController(animated: true)
        delegate?.successDelete()
    }
}
