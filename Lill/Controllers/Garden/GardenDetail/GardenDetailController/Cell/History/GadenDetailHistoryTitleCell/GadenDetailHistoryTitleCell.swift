//
//  GadenDetailHistoryTitleCell.swift
//  Lill
//
//  Created by Andrey S on 20.12.2021.
//

import UIKit

class GadenDetailHistoryTitleCell: UITableViewCell {

    @IBOutlet weak var heightCollectionView: NSLayoutConstraint!
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let cellIdentifier = String(describing: GalleryHistoryCell.self)
    private let cellAddIdenfier = String(describing: GaleryHistoryAddCell.self)
    
    private let elementSize = UIScreen.main.bounds.size.width / 4 + 3
    private var mediaModel: [MediaModel] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib.init(nibName: cellIdentifier, bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
        collectionView.register(UINib.init(nibName: cellAddIdenfier, bundle: nil), forCellWithReuseIdentifier: cellAddIdenfier)
        
        heightCollectionView.constant = elementSize
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(model: [MediaModel]) {
        if mediaModel != model {
            mediaModel = model
            collectionView.reloadData()
        }
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDataSource, UICollectionViewDelegate
//----------------------------------------------

extension GadenDetailHistoryTitleCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mediaModel.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  cellAddIdenfier, for: indexPath) as! GaleryHistoryAddCell
            
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  cellIdentifier, for: indexPath) as! GalleryHistoryCell
            if let model = mediaModel[safe: indexPath.row - 1] {
                cell.setupCell(model: model)
            }
            return cell
        }
    }
}

//----------------------------------------------
// MARK: - UICollectionViewDelegateFlowLayout
//----------------------------------------------

extension GadenDetailHistoryTitleCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: elementSize , height: elementSize)
    }
}
