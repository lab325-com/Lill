//
//  AddCoverAddController.swift
//  Lill
//
//  Created by Andrey S on 05.11.2021.
//

import UIKit

protocol AddCoverAddProtocol: AnyObject {
    func addCoverAddGoToPlantName(controller: AddCoverAddController)
}

class AddCoverAddController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var mainTitleLabel: UILabel!
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var coverView: UIView!
    @IBOutlet weak var heightCoverLayouts: NSLayoutConstraint!
    
    @IBOutlet weak var titleCoverLabel: UILabel!
    @IBOutlet weak var subTitleCoverLabel: UILabel!
    @IBOutlet weak var applyButton: UIButton!
    @IBOutlet weak var retakeButton: UIButton!
    
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var coverTextLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private let coverImage: UIImage
    private let text: String
    
    weak var delegate: AddCoverAddProtocol?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(coverImage: UIImage, text: String, delegate: AddCoverAddProtocol) {
        self.delegate = delegate
        self.coverImage = coverImage
        self.text = text
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        coverView.roundCorners(corners: [.topLeft, .topRight, .bottomRight], radius: 24.0)
    }
    
    override func viewDidLoad() {
        transparentNavigationBar = true
        backgroundNavigationColor = UIColor.white
        colorTitleNavigation = UIColor.black
        super.viewDidLoad()

        setup()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        mainTitleLabel.text = RLocalization.uniques_cover_add.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        subTitleCoverLabel.text = RLocalization.uniques_cover_add_captured.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        applyButton.setTitle(RLocalization.uniques_cover_add_apply.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        retakeButton.setTitle(RLocalization.uniques_cover_add_retake.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        coverImageView.image = coverImage
        coverTextLabel.text = text
        titleCoverLabel.text = text
        
        setNavigationBar()
        
        let cancel = UIBarButtonItem(title: RLocalization.uniques_cover_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .plain, target: self, action: #selector(playTapped))
        navigationItem.rightBarButtonItems = [cancel]
        
        heightCoverLayouts.constant = UIScreen.main.bounds.width / 2
        
        topView.layer.cornerRadius = 24.0
        topView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
        navigationItem.title = RLocalization.uniques_cover_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        bottomView.layer.cornerRadius = 24.0
        bottomView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
    
    private func setNavigationBar() {

        self.navigationItem.setHidesBackButton(true, animated:false)

        //your custom view for back image with custom size
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 140, height: 40))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 40))
        imageView.contentMode = .center
        
        let label = UILabel(frame: CGRect(x: 25, y: 0, width: 120, height: 40))
        label.text = RLocalization.uniques_cover_back_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        label.textColor = UIColor(rgb: 0x7CDAA3)
        label.textAlignment = .left
        
        if let imgBackArrow = RImage.unique_arrow_back_ic() {
            imageView.image = imgBackArrow
        }
        
        view.sizeToFit()
        
        view.addSubview(imageView)
        view.addSubview(label)
        
        let backTap = UITapGestureRecognizer(target: self, action: #selector(actionPlantName))
        view.addGestureRecognizer(backTap)

        let leftBarButtonItem = UIBarButtonItem(customView: view)
        self.navigationItem.leftBarButtonItem = leftBarButtonItem
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------

    @objc func playTapped() {
        dismiss(animated: true)
    }
    
    @objc func actionPlantName() {
        delegate?.addCoverAddGoToPlantName(controller: self)
    }
    
    @IBAction func actionApply(_ sender: UIButton) {
        
    }
    
    @IBAction func actionRatekePhoto(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
