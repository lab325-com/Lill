//
//  GardenDetailDeletePlanController.swift
//  Lill
//
//  Created by Andrey S on 19.11.2021.
//

import UIKit
import Kingfisher

protocol GardenDetailDeleteDelegate: AnyObject {
    func gardeDetailDeleteSuccess(controller: GardenDetailDeletePlanController)
}

class GardenDetailDeletePlanController: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var coverView: ShadowView!
    @IBOutlet weak var mainImageView: UIView!
    
    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var plantImageView: UIImageView!
    
    @IBOutlet weak var deletingPlantLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var gardenDeleteImageView: UIImageView!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private let plantID: String
    private let imageUrl: String
    private let text: String
    private lazy var presenter = GardenDetailPresenter(view: self)
    
    weak var delegate: GardenDetailDeleteDelegate?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(plantID: String, imageUrl: String, text: String, delegate: GardenDetailDeleteDelegate) {
        self.plantID = plantID
        self.imageUrl = imageUrl
        self.text = text
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
        
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        coverView.layer.cornerRadius = 24
        coverView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner, .layerMaxXMaxYCorner]
        mainImageView.layer.cornerRadius = 24
        mainImageView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        titleTextLabel.text = text
        plantImageView.kf.setImage(with: URL(string: imageUrl), placeholder: RImage.placeholder_big_ic(), options: [.transition(.fade(0.25))])
    }
    
    override func hideKeyboard() {
        super.hideKeyboard()
        if deleteButton.isHidden {
            delegate?.gardeDetailDeleteSuccess(controller: self)
        }
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @IBAction func actionDeletePlant(_ sender: UIButton) {
        presenter.deletePlant(plantId: plantID)
    }
    
    @IBAction func actionCancel(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

//----------------------------------------------
// MARK: - GardenDetailOutputProtocol
//----------------------------------------------

extension GardenDetailDeletePlanController: GardenDetailOutputProtocol {
    func successDelete() {
        UIView.animate(withDuration: 0.4) {
            self.deleteButton.alpha = 0.0
            self.cancelButton.alpha = 0.0
            self.subTitleLabel.text = "Plant has been Deleted"
            self.subTitleLabel.textColor = UIColor(rgb: 0xF96161)
            self.coverView.alpha = 0.7
            self.gardenDeleteImageView.alpha = 1.0
            
            self.deleteButton.isHidden = true
            self.cancelButton.isHidden = true
        }
    }
}
