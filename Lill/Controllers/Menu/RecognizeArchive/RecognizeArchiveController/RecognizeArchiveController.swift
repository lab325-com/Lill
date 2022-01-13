//
//  RecognizeArchiveController.swift
//  Lill
//
//  Created by Andrey S on 03.11.2021.
//

import UIKit

class RecognizeArchiveController: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var bottomContentView: UIView!
    @IBOutlet weak var diagnoseButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Global property
    //----------------------------------------------
    
    var recognizeModel: RecognizeArchiveModel?
    lazy var presenter = RecognizeArchivePresenter(view: self)
    let cellIdentifier = String(describing: PlantCollectionCell.self)
    var models = [PlantModel]()
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = false
        colorTitleNavigation = UIColor.black
        super.viewDidLoad()
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup(){
        collectionView.alpha = 0.0
        bottomContentView.alpha = 0.0
        
        diagnoseButton.setTitle(RLocalization.recognize_archive_button.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        presenter.getRecognizeArchive()
        navigationItem.title = RLocalization.recognize_archive_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        self.bottomContentView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.bottomContentView.layer.cornerRadius = 24
        diagnoseButton.layer.cornerRadius = diagnoseButton.layer.frame.height / 2
        
        collectionView.register(UINib.init(nibName: cellIdentifier,
                                           bundle: nil),
                                forCellWithReuseIdentifier: cellIdentifier)
        
        collectionView.reloadData()
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @IBAction func actionRecognizePlant(_ sender: UIButton) {
        PlantsRouter(presenter: navigationController).presentIdentify()
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDelegateFlowLayout, GardenAddToPlaceDelegate
//----------------------------------------------

extension RecognizeArchiveController: RecognizeArchiveOutputProtocol, GardenAddToPlaceDelegate {
    func gardenAddToPlaceSuccessAdd(controller: GardenAddToPlaceController) {
        CongradsViewPresenter.showCongradsView(textSubtitle: RLocalization.add_plants_success.localized(PreferencesManager.sharedManager.languageCode.rawValue))
    }
    
    func successFavorite(isFavorite: Bool, id: String) {
        if let index = models.firstIndex(where: {$0.id == id }) {
            models[index].changeIsFavorite(isFavorite)
            collectionView.reloadItems(at: [IndexPath(row: index, section: 0)])
        }
    }
    
    func success(model: RecognizeArchiveModel) {
        self.recognizeModel = model
        self.models = model.recognizedArhive.plant
        
        UIView.animate(withDuration: 0.3) { [weak self] in
            self?.collectionView.alpha = 1.0
            self?.bottomContentView.alpha = 1.0
        }
        
        collectionView.reloadData()
    }
    
    func failure(error: String) {
        
    }
}
