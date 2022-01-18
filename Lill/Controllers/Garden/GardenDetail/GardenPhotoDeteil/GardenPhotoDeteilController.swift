//
//  GardenPhotoDeteilController.swift
//  Lill
//
//  Created by Andrey S on 23.12.2021.
//

import UIKit
import Kingfisher

protocol GardenPhotoDeteilDelegate: AnyObject {
    func gardenPhotoDeteilSuccessSet(controlle: GardenPhotoDeteilController)
    func gardenPhotoDeteilUpdateNotes(controller: GardenPhotoDeteilController, model: MediaModel)
    func gardenPhotoDeteilDetele(controller: GardenPhotoDeteilController, model: MediaModel)
}

class GardenPhotoDeteilController: BaseController {

    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var setMainPhotoButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var successView: UIView!
    @IBOutlet weak var settedLabel: UILabel!
    
    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    
    private let gardenID: String
    private let cellIdentifier = String(describing: GardenPhotoDeteilCell.self)
    private var models: [MediaModel]
    private var selectedModel: MediaModel {
        didSet {
            changeView()
        }
    }
    private var needScroll = true
    
    weak var delegate: GardenPhotoDeteilDelegate?
    
    //----------------------------------------------
    // MARK: - Init
    //----------------------------------------------
    
    init(gardenID: String, selectedModel: MediaModel, models: [MediaModel], delegate: GardenPhotoDeteilDelegate) {
        self.delegate = delegate
        self.gardenID = gardenID
        self.selectedModel = selectedModel
        self.models = models
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
        if needScroll, let index = models.firstIndex(where: {$0.id == selectedModel.id}) {
            collectionView.scrollToItem(at: IndexPath(item: index, section: 0), at: .centeredVertically, animated: false)
            needScroll = false
        }
    }
    
    override func viewDidLoad() {
        hiddenNavigationBar = false
        super.viewDidLoad()

        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        changeView()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        
        settedLabel.text = RLocalization.garden_histroy_set_main_success.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        changeView()
        
        setMainPhotoButton.setTitle(RLocalization.garden_history_set_main_photo.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        shareButton.setTitle(RLocalization.garden_history_share.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        let rightBarButtonItem = UIBarButtonItem(title: RLocalization.garden_history_edit.localized(PreferencesManager.sharedManager.languageCode.rawValue), style: .done, target: self, action: #selector(editAction))
        rightBarButtonItem.setTitleTextAttributes([NSAttributedString.Key.font : UIFont(name: "SFProDisplay-Regular", size: 17.0)!, NSAttributedString.Key.foregroundColor : UIColor(rgb: 0x7CDAA3)], for: .normal)
        navigationItem.rightBarButtonItem = rightBarButtonItem
        
        bottomView.layer.cornerRadius = 24.0
        bottomView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        navigationController?.navigationBar.tintColor = UIColor(rgb: 0x7CDAA3)
        
        collectionView.register(UINib.init(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
        collectionView.reloadData()
    }
    
    @objc func editAction() {
        navigationItem.title = RLocalization.wish_list_back.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        GardenRouter(presenter: navigationController).pushGardenDeteilEdit(model: selectedModel, delegate: self)
    }
    
    private func changeView() {
        if let createdAt = selectedModel.date {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMM dd | HH:mm"
            dateLabel.text = dateFormatter.string(from: createdAt)
            dateLabel.isHidden = false
        } else {
            dateLabel.isHidden = true
        }
        
        if let notes = self.selectedModel.notes {
            self.notesLabel.isHidden = false
            self.notesLabel.text = notes
        } else {
            self.notesLabel.isHidden = true
        }
        
        if let index = models.firstIndex(where: {$0.id == selectedModel.id}) {
            navigationItem.title = "\(index + 1)/\(models.count)"
        }
    }
    
    @IBAction func actionSetMainPhoto(_ sender: UIButton) {
        startLoader()
        let mutation2 = GardenPlantUpdateMutation(record: GardenPlantUpdateInput(id: gardenID, userMainImageId: selectedModel.id))
        let _ = Network.shared.mutation(model: GardenPlantUpdateModel.self, mutation2, controller: self) { [weak self] model in
            guard let `self` = self else { return }
            UIView.animate(withDuration: 0.3) {
                self.successView.alpha = 1.0
            } completion: { result in
                UIView.animate(withDuration: 0.3, delay: 1.4) {
                    self.successView.alpha = 0.0
                }
            }

            self.delegate?.gardenPhotoDeteilSuccessSet(controlle: self)
            self.stopLoading()
        } failureHandler: { [weak self] error in
            self?.stopLoading()
        }
    }
    
    @IBAction func actionShare(_ sender: UIButton) {
        guard let url = URL(string: selectedModel.urlIosFull) else { return }
        let resource = ImageResource(downloadURL: url)
        KingfisherManager.shared.retrieveImage(with: resource, options: nil, progressBlock: nil, downloadTaskUpdated: nil) { result in
            switch result {
            case .success(let value):
                let imageToShare = [value.image]
                let activityViewController = UIActivityViewController(activityItems: imageToShare, applicationActivities: nil)
                activityViewController.completionWithItemsHandler = { _, _, _, _ in
                    self.dismiss(animated: true)
                }
                self.present(activityViewController, animated: true, completion: nil)
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDataSource, UICollectionViewDelegate
//----------------------------------------------

extension GardenPhotoDeteilController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  cellIdentifier, for: indexPath) as! GardenPhotoDeteilCell
        cell.setupCell(model: models[indexPath.row])
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if !needScroll {
            let index = Int((collectionView.contentOffset.x / collectionView.frame.width).rounded(.toNearestOrAwayFromZero))
            
            selectedModel = models[index]
        }
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDelegateFlowLayout
//----------------------------------------------

extension GardenPhotoDeteilController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.frame.size
    }
}

//----------------------------------------------
// MARK: - GardenDetailEditDelegate
//----------------------------------------------

extension GardenPhotoDeteilController: GardenDetailEditDelegate {
    func gardenDetailEditSave(controller: GardenDetailEditController, model: MediaModel, notes: String) {
        if let index = models.firstIndex(where: {$0.id == model.id}) {
            models[index].changeNotes(notes)
            selectedModel.changeNotes(notes)
            changeView()
            collectionView.reloadData()
            delegate?.gardenPhotoDeteilUpdateNotes(controller: self, model: model)
        }
    }
    
    func gardenDetailEditDelete(controller: GardenDetailEditController, model: MediaModel) {
        if let index = models.firstIndex(where: {$0.id == model.id}) {
            models.remove(at: index)
            collectionView.reloadData()
            delegate?.gardenPhotoDeteilDetele(controller: self, model: model)
            if models.count == 0 {
                navigationController?.popViewController(animated: true)
            }
        }
    }
}
