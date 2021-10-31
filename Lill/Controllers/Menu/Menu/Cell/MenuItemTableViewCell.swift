//
//  MenuItemTableViewCell.swift
//  Lill
//
//  Created by Andrew Bilohorodskiy on 31.10.2021.
//

import UIKit

class MenuItemTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }
    
    override func prepareForReuse() {
        self.accessoryType = .none
        self.subtitleLabel.text = ""
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(type: MenuItemType, with model: MeDataModel?){
        switch (type){
        case .subscriptions:
            self.titleLabel.text = "Subscriptions".capitalized
            self.accessoryType = .disclosureIndicator
        case .recognized:
            self.titleLabel.text = "Recognized Archive".capitalized
            self.subtitleLabel.text = "\(model?.me.access.diagnosisUsed ?? 0)/\(model?.me.access.diagnosisTotal ?? 0)"
            self.accessoryType = .disclosureIndicator
        case .disease:
            self.titleLabel.text = "Disease Archive".capitalized
            self.subtitleLabel.text = "\(model?.me.access.identifyUsed ?? 0)/\(model?.me.access.identifyTotal ?? 0)"
            self.accessoryType = .disclosureIndicator
        case .lang:
            self.titleLabel.text = "Language".capitalized
            self.subtitleLabel.text = "Eng"
            self.accessoryType = .disclosureIndicator
        case .share:
            self.titleLabel.text = "Invite friends (share app)".capitalized
        case .rate:
            self.titleLabel.text = "Rate app".capitalized
        case .terms:
            self.titleLabel.text = "Terms".capitalized
        case .privacyPolice:
            self.titleLabel.text = "Privacy policy".capitalized
        default:
            return
        }
    }
    
}
