//
//  MainOnboardingController.swift
//  Lill
//
//  Created by mob325 on 30.11.2021.
//

import UIKit

class MainOnboardingController: BaseController {

    @IBOutlet weak var pagingContainerView: UIView!
    @IBOutlet var dotsViews: [UIView]!
    
    private var selectedIndex = 0
    private let pageController = OnboardingPageController()
    
    override func viewDidLoad() {
        hiddenNavigationBar = true
        super.viewDidLoad()
        pageController.isPagingEnabled = false
        addContainer(child: pageController, to: pagingContainerView)
    }
    
    @IBAction func actionSkip(_ sender: UIButton) {
        switch selectedIndex {
        case 0:
            AnalyticsHelper.sendFirebaseEvents(events: .onboarding_skip_1)
        case 1:
            AnalyticsHelper.sendFirebaseEvents(events: .onboarding_skip_2)
        case 2:
            AnalyticsHelper.sendFirebaseEvents(events: .onboarding_skip_3)
        case 3:
            AnalyticsHelper.sendFirebaseEvents(events: .onboarding_skip_4)
        default:
            AnalyticsHelper.sendFirebaseEvents(events: .onboarding_skip_5)
        }
        
        RootRouter.sharedInstance.loadPlants(toWindow: RootRouter.sharedInstance.window)
    }
    
    @IBAction func actionNext(_ sender: UIButton) {
        
        switch selectedIndex {
        case 0:
            AnalyticsHelper.sendFirebaseEvents(events: .onboarding_next_1)
        case 1:
            AnalyticsHelper.sendFirebaseEvents(events: .onboarding_next_2)
        case 2:
            AnalyticsHelper.sendFirebaseEvents(events: .onboarding_next_3)
        case 3:
            AnalyticsHelper.sendFirebaseEvents(events: .onboarding_next_4)
        default:
            AnalyticsHelper.sendFirebaseEvents(events: .onboarding_next_5)
        }
        
        pageController.goToNextPage()
        selectedIndex += 1
        
        if selectedIndex >= 5 {
            RootRouter.sharedInstance.loadPlants(toWindow: RootRouter.sharedInstance.window)
        }
        
        UIView.animate(withDuration: 0.3) { [weak self] in
            guard let `self` = self else { return }
            for view in self.dotsViews {
                view.backgroundColor = UIColor(rgb: 0xDADADA)
            }
            
            let view = self.dotsViews.first(where: {$0.tag == self.selectedIndex})
            view?.backgroundColor = UIColor(rgb: 0xF38C8C)
        }
    }
}
