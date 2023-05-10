//
//  GardenDetailListPhotoController.swift
//  Lill
//
//  Created by mob325 on 23.12.2021.
//

import UIKit

protocol GardenDetailListPhotoDelegate: AnyObject {
    func gardenDetailListUpdate(controller: GardenDetailListPhotoController)
    func gardenDetailListUpdateOnyMain(controller: GardenDetailListPhotoController)
}

class GardenDetailListPhotoController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var addNewPhotoButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    
    private let cellIdentifier = String(describing: GalleryGardenHistroyCell.self)
    private var model: [MediaModel]
    private let gardenID: String
    
    weak var delegate: GardenDetailListPhotoDelegate?
    lazy var presenter = GardenDetailListPhotoPresenter(view: self)
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(gardenID: String, model: [MediaModel], delegate: GardenDetailListPhotoDelegate) {
        self.gardenID = gardenID
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
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        addNewPhotoButton.setTitle(RLocalization.garden_history_add_new_photo.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        bottomView.layer.cornerRadius = 24.0
        bottomView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        navigationItem.title = RLocalization.garden_hiistory_gallery.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
        
        collectionView.register(UINib.init(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
        collectionView.reloadData()
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @IBAction func actionAddPhoto(_ sender: UIButton) {
        GardenRouter(presenter: navigationController).presentHistoryAddPhoto(gardenPlantId: gardenID, delegate: self)
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDataSource, UICollectionViewDelegate
//----------------------------------------------

extension GardenDetailListPhotoController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  cellIdentifier, for: indexPath) as! GalleryGardenHistroyCell
        cell.setupCell(model: model[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        GardenRouter(presenter: navigationController).pushGardenDeteilPhoto(gardenID: gardenID, selectedModel: model[indexPath.row], models: model, delegate: self)
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDelegateFlowLayout
//----------------------------------------------

extension GardenDetailListPhotoController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.size.width / 2 - 13 , height: UIScreen.main.bounds.size.width / 2 - 13 + 25)
    }
}

//----------------------------------------------
// MARK: - GardenHistoryAddPhotoProtocol
//----------------------------------------------

extension GardenDetailListPhotoController: GardenHistoryAddPhotoProtocol {
    func gardenHistoryAddPhotoCancel(controller: GardenHistoryAddPhotoController) {
        dismiss(animated: true)
    }

    func gardenHistoryAddPhotoSuccess(controller: GardenHistoryAddPhotoController) {
        presenter.updateMedia(gardenID: gardenID)
        delegate?.gardenDetailListUpdate(controller: self)
        dismiss(animated: true)
    }
}

//----------------------------------------------
// MARK: - GardenPhotoDeteilDelegate
//----------------------------------------------

extension GardenDetailListPhotoController: GardenPhotoDeteilDelegate {
    func gardenPhotoDeteilUpdateNotes(controller: GardenPhotoDeteilController, model: MediaModel) {
        presenter.updateMedia(gardenID: gardenID)
        delegate?.gardenDetailListUpdate(controller: self)
    }
    
    func gardenPhotoDeteilDetele(controller: GardenPhotoDeteilController, model: MediaModel) {
        if let index = self.model.firstIndex(where: {$0.id == model.id}) {
            self.model.remove(at: index)
            collectionView.reloadData()
        }
        delegate?.gardenDetailListUpdate(controller: self)
    }
    
    func gardenPhotoDeteilSuccessSet(controlle: GardenPhotoDeteilController) {
        delegate?.gardenDetailListUpdateOnyMain(controller: self)
    }
}

//----------------------------------------------
// MARK: - GardenDetailListPhotoOutputProtocol
//----------------------------------------------

extension GardenDetailListPhotoController: GardenDetailListPhotoOutputProtocol{
    func successUpdate(models: [MediaModel]) {
        model = models
        collectionView.reloadData()
    }
}
