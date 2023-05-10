//
//  AddPlantsCareController.swift
//  Lill
//
//  Created by mob325 on 08.11.2021.
//

import UIKit

class AddPlantsCareController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var addCaresLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var caresCountLabel: UILabel!
    
    @IBOutlet weak var topView: ShadowView!
    @IBOutlet weak var firstDetailCareView: DetailCaresView!
    @IBOutlet var caresViews: [AddPlantCareView]!
    
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var addCaresButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Private property
    //----------------------------------------------
    
    private var cares: [CareType] = []
    private var selectedCares = Set<CareType>()
    private lazy var presenter = AddPlantsCarePresenter(view: self)
    private let coverImage: UIImage
    private let text: String
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(coverImage: UIImage, text: String) {
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
    
    override func viewDidLoad() {
        transparentNavigationBar = true
        backgroundNavigationColor = UIColor.white
        colorTitleNavigation = UIColor.black
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        mainTitle.text = RLocalization.uniques_cares_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        subTitleLabel.text =  RLocalization.uniques_cares_sub_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        addCaresButton.setTitle(RLocalization.uniques_add_care.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        skipButton.setTitle(RLocalization.uniques_skip_care.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        setNavigationBar()
        
        let cancel = UIBarButtonItem(title: RLocalization.uniques_cover_cancel.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .plain, target: self, action: #selector(playTapped))
        navigationItem.rightBarButtonItems = [cancel]
        
        topView.layer.cornerRadius = 24.0
        topView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
        navigationItem.title = RLocalization.uniques_cover_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        for view in caresViews {
            view.isHidden = true
            view.delegate = self
        }
        
        caresCountLabel.text = "0"
        
        presenter.getCares()
    }
    
    private func setNavigationBar() {

        self.navigationItem.setHidesBackButton(true, animated:false)

        //your custom view for back image with custom size
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 140, height: 40))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 40))
        imageView.contentMode = .center
        
        let label = UILabel(frame: CGRect(x: 25, y: 0, width: 120, height: 40))
        label.text = RLocalization.uniques_cares_back_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        label.textColor = UIColor(rgb: 0x7CDAA3)
        label.textAlignment = .left
        
        if let imgBackArrow = RImage.unique_arrow_back_ic() {
            imageView.image = imgBackArrow
        }
        
        view.sizeToFit()
        
        view.addSubview(imageView)
        view.addSubview(label)
        
        let backTap = UITapGestureRecognizer(target: self, action: #selector(actionCover))
        view.addGestureRecognizer(backTap)

        let leftBarButtonItem = UIBarButtonItem(customView: view)
        self.navigationItem.leftBarButtonItem = leftBarButtonItem
    }
    
    private func changesView() {
        for index in 0..<cares.count {
            let type = cares[index]
            caresViews.first(where: {$0.tag == index})?.setup(type: type, isSelected: selectedCares.contains(type))
        }
        
        caresCountLabel.text = "\(selectedCares.count)"
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    @IBAction func actionAddCares(_ sender: UIButton) {
        if selectedCares.count > 0 {
            AddCoverRouter(presenter: navigationController).pushAddTime(coverImage: coverImage, text: text, selectedCares: selectedCares)
        }
    }
    
    @IBAction func actionSkip(_ sender: UIButton) {
        AddCoverRouter(presenter: navigationController).pushAddTime(coverImage: coverImage, text: text, selectedCares: selectedCares)
    }
    
    @objc func playTapped() {
        dismiss(animated: true)
    }
    
    @objc func actionCover() {
        navigationController?.popViewController(animated: true)
    }
}

//----------------------------------------------
// MARK: - AddPlantCareProtocol
//----------------------------------------------

extension AddPlantsCareController: AddPlantCareProtocol {
    func addPlantCareSelect(view: AddPlantCareView, selectedType: CareType) {
        if selectedCares.contains(selectedType) {
            selectedCares.remove(selectedType)
        } else {
            selectedCares.insert(selectedType)
        }
        
        changesView()
    }
}

//----------------------------------------------
// MARK: - AddPlantsCareOutputProtocol
//----------------------------------------------

extension AddPlantsCareController: AddPlantsCareOutputProtocol {
    func successCares(models: [CareType]) {
        cares = models
        
        for index in 0..<cares.count {
            let view = caresViews.first(where: {$0.tag == index})
            view?.isHidden = false
            view?.setup(type: cares[index], isSelected: false)
        }
        
    }
    
    func failure(error: String) {
        
    }
}
