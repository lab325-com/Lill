
import Foundation
import UIKit
import SwiftEntryKit

protocol GreatCongradsViewDelegate: AnyObject {
    func great()
}

class CongradsView: UIView {
    
    //----------------------------------------------
    // MARK: - IBOutlet
    //----------------------------------------------
    
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var subtitleLabel: UILabel!
    @IBOutlet private weak var greatButton: UIButton!
    
    //----------------------------------------------
    // MARK: - Property
    //----------------------------------------------
    
    private var isAddUniquesPlant = false
    
    //----------------------------------------------
    // MARK: - Override
    //----------------------------------------------
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setup()
    }
    
    //----------------------------------------------
    // MARK: - Private methods
    //----------------------------------------------
    
    func setup() {
        titleLabel.text = RLocalization.plant_add_to_garden_title.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        subtitleLabel.text = RLocalization.plant_add_to_garden_info.localized(PreferencesManager.sharedManager.languageCode.rawValue)
        greatButton.setTitle(RLocalization.plant_add_to_garden_great.localized(PreferencesManager.sharedManager.languageCode.rawValue), for: .normal)
        
        let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter.current().requestAuthorization(
            options: authOptions,
            completionHandler: {(granted, error) in
                DispatchQueue.main.async {
                    if (granted) {
                        UIApplication.shared.registerForRemoteNotifications()
                    }
                    else {
                        //Do stuff if unsuccessful...
                    }
                }
            })
    }
    
    //----------------------------------------------
    // MARK: - Public methods
    //----------------------------------------------
    
    class func defaultView() -> CongradsView {
        let className = String(describing: CongradsView.self)
        let congradsView = Bundle.main.loadNibNamed(className, owner: self, options: nil)!.first as! CongradsView
        
        return congradsView
    }
    
    //----------------------------------------------
    // MARK: - @IBActions
    //----------------------------------------------
    
    @IBAction func greatAction(_ sender: Any) {
        SwiftEntryKit.dismiss()
    }
}
