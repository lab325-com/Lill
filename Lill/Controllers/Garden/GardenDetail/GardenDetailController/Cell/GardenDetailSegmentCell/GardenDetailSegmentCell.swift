//
//  GardenDetailSegmentCell.swift
//  Lill
//
//  Created by Andrey S on 17.11.2021.
//

import UIKit

protocol GardenDetailSegmentDelegate: AnyObject {
    func changeSegment(cell: GardenDetailSegmentCell, selectedTag: Int)
}

class GardenDetailSegmentCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    weak var delegate: GardenDetailSegmentDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        selectionStyle = .none
        DispatchQueue.main.async {
            self.mainView.roundCorners(corners: [.topLeft, .topRight], radius: 24)
        }
        segmentControl.setTitle(RLocalization.garden_detail_about.localized(PreferencesManager.sharedManager.languageCode.rawValue), forSegmentAt: 0)
        segmentControl.setTitle(RLocalization.garden_detail_care_plan.localized(PreferencesManager.sharedManager.languageCode.rawValue), forSegmentAt: 1)
        segmentControl.setTitle(RLocalization.garden_hiistory_title.localized(PreferencesManager.sharedManager.languageCode.rawValue), forSegmentAt: 2)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(selectedTag: Int, needCornerBottom: Bool = false) {
        segmentControl.selectedSegmentIndex = selectedTag
        
        if needCornerBottom {
            mainView.roundCorners(corners: [.bottomLeft, .bottomRight, .topLeft, .topRight], radius: 24)
        } else {
            self.mainView.roundCorners(corners: [.topLeft, .topRight], radius: 24)
        }
    }
    
    //----------------------------------------------
    // MARK: - Actions
    //----------------------------------------------
    
    @IBAction func actionChangeSegment(_ sender: UISegmentedControl) {
        delegate?.changeSegment(cell: self, selectedTag: sender.selectedSegmentIndex)
    }
}
