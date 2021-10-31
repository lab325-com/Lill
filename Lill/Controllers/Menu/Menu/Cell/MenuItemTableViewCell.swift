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
            self.titleLabel.text = RLocalization.menu_item_subscriptions().capitalized
            self.accessoryType = .disclosureIndicator
        case .recognized:
            self.titleLabel.text = RLocalization.menu_item_archive_recognized().capitalized
            self.subtitleLabel.text = "\(model?.me.access.diagnosisUsed ?? 0)/\(model?.me.access.diagnosisTotal ?? 0)"
            self.accessoryType = .disclosureIndicator
        case .disease:
            self.titleLabel.text = RLocalization.menu_item_archive_disease().capitalized
            self.subtitleLabel.text = "\(model?.me.access.identifyUsed ?? 0)/\(model?.me.access.identifyTotal ?? 0)"
            self.accessoryType = .disclosureIndicator
        case .lang:
            self.titleLabel.text = RLocalization.menu_item_language().capitalized
            self.subtitleLabel.text = "Eng"
            self.accessoryType = .disclosureIndicator
        case .share:
            self.titleLabel.text = RLocalization.menu_item_share().capitalized
        case .rate:
            self.titleLabel.text = RLocalization.menu_item_rate().capitalized
        case .terms:
            self.titleLabel.text = RLocalization.menu_item_terms().capitalized
        case .privacyPolice:
            self.titleLabel.text = RLocalization.menu_item_privacy_policy().capitalized
        default:
            return
        }
    }
    
}
