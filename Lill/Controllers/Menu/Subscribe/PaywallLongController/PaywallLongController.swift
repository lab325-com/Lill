//
//  PaywallLongController.swift
//  Lill
//
//  Created by Andrey S on 21.06.2022.
//

import UIKit

class PaywallLongController: BaseController {

    @IBOutlet weak var weekTialView: UIView!
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    //----------------------------------------------
    // MARK: - Setup
    //----------------------------------------------
    
    private func setup() {
        weekTialView.layer.cornerRadius = 24
        weekTialView.layer.borderWidth = 3
        weekTialView.layer.borderColor = UIColor(rgb: 0x7CDAA3).cgColor
    }
}
