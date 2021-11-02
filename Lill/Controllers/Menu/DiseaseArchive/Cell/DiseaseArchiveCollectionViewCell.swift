//
//  DiseaseArchiveCollectionViewCell.swift
//  Lill
//
//  Created by Andrew Bilohorodskiy on 01.11.2021.
//

import UIKit

class DiseaseArchiveCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var containView: UIView!
    @IBOutlet weak var diagnosDescription: UILabel!
    @IBOutlet weak var diagnosTitle: UILabel!
    @IBOutlet weak var plantImage: UIImageView!
    @IBOutlet weak var secondName: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var plantName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        DispatchQueue.main.async {
            self.containView.roundCorners(corners: [.topLeft, .topRight, .bottomLeft, .bottomRight], radius: 24.0)
        }
    }
}
