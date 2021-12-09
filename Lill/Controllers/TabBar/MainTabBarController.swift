
import UIKit


class MainTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        let tabbarItemPlants = (self.tabBar.items?[0])! as UITabBarItem
        tabbarItemPlants.image = UIImage(named: "ic_tab_plants")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        tabbarItemPlants.selectedImage = UIImage(named: "ic_tab_plants_act")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        let tabbarItemGarden = (self.tabBar.items?[1])! as UITabBarItem
        tabbarItemGarden.image = UIImage(named: "ic_tab_garden")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        tabbarItemGarden.selectedImage = UIImage(named: "ic_tab_garden_act")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        let tabbarItemSchedule = (self.tabBar.items?[2])! as UITabBarItem
        tabbarItemSchedule.image = UIImage(named: "ic_tab_schedule")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        tabbarItemSchedule.selectedImage = UIImage(named: "ic_tab_schedule_act")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        let tabbarItemMenu = (self.tabBar.items?[3])! as UITabBarItem
        tabbarItemMenu.image = UIImage(named: "ic_tab_menu")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        tabbarItemMenu.selectedImage = UIImage(named: "ic_tab_menu_act")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        tabBar.layer.cornerRadius = 24
        tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        tabBar.layer.masksToBounds = true
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 4)
        tabBar.layer.shadowRadius = 30
        tabBar.layer.shadowColor = UIColor(rgb: 0xA4E2AD).cgColor
        tabBar.layer.shadowOpacity = 0.5
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 0:
            AnalyticsHelper.sendFirebaseEvents(events: .add_bar)
        case 1:
            AnalyticsHelper.sendFirebaseEvents(events: .garden_bar)
        case 2:
            AnalyticsHelper.sendFirebaseEvents(events: .notification_bar)
        case 3:
            AnalyticsHelper.sendFirebaseEvents(events: .menu_bar)
        default:
            break
        }
    }
}
