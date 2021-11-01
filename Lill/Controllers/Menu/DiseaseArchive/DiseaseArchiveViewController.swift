//
//  DiseaseArchiveViewController.swift
//  Lill
//
//  Created by Andrew Bilohorodskiy.
//

import UIKit

class DiseaseArchiveViewController: BaseController {
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var bottomContentView: UIView!
    @IBOutlet weak var diagnoseButton: UIButton!
    private let cellIdentifire = "DiseaseArchiveCollectionViewCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        self.title = "Disease Archive"
        self.bottomContentView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.bottomContentView.layer.cornerRadius = 24
        diagnoseButton.layer.cornerRadius = diagnoseButton.layer.frame.height / 2
        
        collection.register(UINib(nibName: cellIdentifire, bundle: nil), forCellWithReuseIdentifier: cellIdentifire)
        collection.delegate = self
        collection.dataSource = self
        
    }
    
    @IBAction func diagnoseButtonPressed(_ sender: Any) {
        print("diagnoseButtonPressed")
    }
}

extension DiseaseArchiveViewController: UICollectionViewDelegate {
    
}

extension DiseaseArchiveViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifire, for: indexPath)
        return cell
    }
    
}

extension DiseaseArchiveViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.size.width - 24 , height: UIScreen.main.bounds.size.width - 24)
    }
}
