//
//  GardenDetailAboutCell.swift
//  Lill
//
//  Created by Andrey S on 17.11.2021.
//

import UIKit

protocol GardenDetailAboutDelegate: AnyObject {
    func gardenDetailWiki(cell: GardenDetailAboutCell)
}

class GardenDetailAboutCell: UITableViewCell {

    @IBOutlet var aboutViews: [DetailAboutView]!
    
    @IBOutlet var verticalStacks: [UIStackView]!
    @IBOutlet var separeteViews: [UIView]!
    @IBOutlet var middleLinesViews: [UIView]!
    @IBOutlet weak var moreOnWikiButton: UIButton!
    @IBOutlet weak var mainView: UIView!
    
    weak var delegate: GardenDetailAboutDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        moreOnWikiButton.setTitle(RLocalization.plant_detail_more_on_wiki.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        moreOnWikiButton.layer.cornerRadius = 22
        moreOnWikiButton.layer.borderWidth = 1
        moreOnWikiButton.layer.borderColor = UIColor(rgb: 0x7CDAA3).cgColor
        selectionStyle = .none
        
        DispatchQueue.main.async {
            self.mainView.roundCorners(corners: [.bottomLeft, .bottomRight], radius: 24)
        }
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(model: GardenPlanByIDModel, abouts: [PlantsAboutType]) {
        for view in aboutViews {
            view.isHidden = true
        }
        
        for index in 0..<abouts.count {
            if let about = abouts[safe: index],  let view = aboutViews[safe: index] {
                view.isHidden = false
                view.setup(about: about, model: model.gardenPlantById.plant?.climate)
            }
        }
        
        if abouts.count < 3 {
            for index in 1...2 {
                separeteViews.first(where: {$0.tag == index})?.isHidden = true
            }
            
            for index in 1...3 {
                verticalStacks.first(where: {$0.tag == index})?.isHidden = true
            }
        }
        
        if abouts.count < 5 {
            separeteViews.first(where: {$0.tag == 1})?.isHidden = true
            
            for index in 2...3 {
                verticalStacks.first(where: {$0.tag == index})?.isHidden = true
            }
        }
        
        if abouts.count < 7 {
            separeteViews.first(where: {$0.tag == 2})?.isHidden = true
            verticalStacks.first(where: {$0.tag == 3})?.isHidden = true
        }
        
        switch abouts.count {
        case 1:
            middleLinesViews.first(where: {$0.tag == 0})?.isHidden = true
        case 3:
            middleLinesViews.first(where: {$0.tag == 1})?.isHidden = true
        case 5:
            middleLinesViews.first(where: {$0.tag == 2})?.isHidden = true
        case 7:
            middleLinesViews.first(where: {$0.tag == 3})?.isHidden = true
        default: break
        }
    }
    
    @IBAction func actionWiki(_ sender: UIButton) {
        delegate?.gardenDetailWiki(cell: self)
    }
}
