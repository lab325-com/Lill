//
//  MenuAccauntInfoTableViewCell.swift
//  Lill
//
//  Created by Andrew Bilohorodskiy on 31.10.2021.
//

import UIKit
import Kingfisher

class MenuAccauntInfoTableViewCell: UITableViewCell {
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userEmailLabel: UILabel!
    @IBOutlet weak var logoutLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        self.accessoryType = .disclosureIndicator
        self.logoutLabel.text = RLocalization.menu_log_out().capitalized
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(model: MeDataModel?){
        let url = URL(string: model?.me.avatar ?? "")
        avatarImage.kf.setImage(with: url)
        userNameLabel.text = model?.me.name ?? ""
        userEmailLabel.text = model?.me.email ?? ""
    }
    
}
