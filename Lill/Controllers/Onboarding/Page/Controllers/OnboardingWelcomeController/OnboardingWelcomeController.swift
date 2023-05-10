//
//  OnboardingWelcomeController.swift
//  Lill
//
//  Created by mob325 on 30.11.2021.
//

import UIKit

class OnboardingWelcomeController: BaseController {
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = true
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AnalyticsHelper.sendFirebaseScreenEvent(screen: .onboarding_step_1)
    }
    
}
