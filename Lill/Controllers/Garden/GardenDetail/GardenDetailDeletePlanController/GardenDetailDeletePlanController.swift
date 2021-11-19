//
//  GardenDetailDeletePlanController.swift
//  Lill
//
//  Created by Andrey S on 19.11.2021.
//

import UIKit

class GardenDetailDeletePlanController: BaseController {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet weak var coverView: ShadowView!
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        coverView.roundCorners(corners: [.topLeft, .topRight, .bottomRight], radius: 24.0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //----------------------------------------------
    // MARK: - IBAction
    //----------------------------------------------
    
    @IBAction func actionCancel(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
