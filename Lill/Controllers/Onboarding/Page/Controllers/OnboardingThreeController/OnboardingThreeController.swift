
import UIKit

class OnboardingThreeController: BaseController {
    
    //----------------------------------------------
    // MARK: - Global property
    //----------------------------------------------
    
    @IBOutlet weak var animationView1: IPhoneSe4View!
    @IBOutlet weak var animationView2: IPhone13ProMax4View!
    @IBOutlet weak var animationView3: IPhone84View!
    @IBOutlet weak var animationView4: IPhone11ProX4View!
    
    
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
            timelineNew = IPhone13ProMax4Timeline(view: animationView2, duration: 1.0)
        } else if UIScreen.main.bounds.size.height >= 710 && UIScreen.main.bounds.size.height < 820 {
            animationView4.isHidden = false
            timelineNew = IPhone11ProX4Timeline(view: animationView4, duration: 1.0)
        } else if UIScreen.main.bounds.size.height > 600 && UIScreen.main.bounds.size.height < 710 {
            animationView3.isHidden = false
            timelineNew = IPhone84Timeline(view: animationView3, duration: 1.0)
        } else if UIScreen.main.bounds.size.height <= 600 {
            animationView1.isHidden = false
            timelineNew = IPhoneSe4Timeline(view: animationView1, duration: 1.0)
        } else {
            animationView2.isHidden = false
            timelineNew = IPhone13ProMax4Timeline(view: animationView2, duration: 1.0)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        timelineNew?.play()
    }
    
}
