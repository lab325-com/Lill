
import UIKit

class MainTabBarController: UITabBarController {
    
    //----------------------------------------------
    // MARK: - Life cycle
    //----------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        self.tabBar.layer.masksToBounds = true
        self.tabBar.layer.cornerRadius = 24
        self.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}