//
//  GardenDetailSegmentCell.swift
//  Lill
//
//  Created by Andrey S on 17.11.2021.
//

import UIKit

class GardenDetailSegmentCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        DispatchQueue.main.async {
            self.mainView.roundCorners(corners: [.topLeft, .topRight], radius: 24)
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
