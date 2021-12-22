
import UIKit

class OnboardingSecondController: BaseController {
    
    //----------------------------------------------
    // MARK: - Global property
    //----------------------------------------------
    
    @IBOutlet weak var animationView1: IPhoneSe3View!
    @IBOutlet weak var animationView2: IPhone13ProMax3View!
    @IBOutlet weak var animationView3: IPhone83View!
    @IBOutlet weak var animationView4: IPhone11ProX3View!
    
    
    var timelineNew: Timeline?
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    
    override func viewDidLoad() {
        hiddenNavigationBar = true
        super.viewDidLoad()
        
        animationView1.isHidden = true
        animationView2.isHidden = true
        animationView3.isHidden = true
        animationView4.isHidden = true
        
        if UIScreen.main.bounds.size.height >= 820 {
            animationView2.isHidden = false
            timelineNew = IPhone13ProMax3Timeline(view: animationView2, duration: 1.0)
        } else if UIScreen.main.bounds.size.height >= 710 && UIScreen.main.bounds.size.height < 820 {
            animationView4.isHidden = false
            timelineNew = IPhone11ProX3Timeline(view: animationView4, duration: 1.0)
        } else if UIScreen.main.bounds.size.height > 600 && UIScreen.main.bounds.size.height < 710 {
            animationView3.isHidden = false
            timelineNew = IPhone83Timeline(view: animationView3, duration: 1.0)
        } else if UIScreen.main.bounds.size.height <= 600 {
            animationView1.isHidden = false
            timelineNew = IPhoneSe3Timeline(view: animationView1, duration: 1.0)
        } else {
            animationView2.isHidden = false
            timelineNew = IPhone13ProMax3Timeline(view: animationView2, duration: 1.0)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        timelineNew?.play()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AnalyticsHelper.sendFirebaseScreenEvent(screen: .onboarding_step_3)
    }
}
