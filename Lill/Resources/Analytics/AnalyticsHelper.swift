//
//  AnalyticsHelper.swift
//  Lill
//
//  Created by Andrey S on 09.12.2021.
//

import Foundation
import Firebase


enum FirebaseScreenEvents: String {
    case login_screen = "login_screen"
    case main_screen = "main_screen"
    case card_plant_explore = "card_plant_explore"
    case photo_select = "photo_select"
    case identify_screen_step_1 = "identify_screen_step_1"
    case identify_screen_step_2 = "identify_screen_step_2"
    
    case tap_bar = "tap_bar"
}

enum FirebaseEvents: String {
    /// All base event
    case first_open = "first_open"
    
    ///LoginController(login_screen)
    case login_apple = "login_apple"
    case login_fb = "login_fb"
    case login_instagram = "login_instagram"
    case login_google = "login_google"
    case login_close = "login_close"
    
    case login_apple_ok = "login_apple_ok"
    case login_fb_ok = "login_fb_ok"
    case login_insagram_ok = "login_insagram_ok"
    case login_google_ok = "login_google_ok"
    case login_close_ok = "login_close_ok"
    
    ///PlantsController(main_screen)
    case main_screen_open = "main_screen_open"
    case explore_search = "explore_search"
    case explore_photo = "explore_photo"
    case explore_catalog = "explore_catalog"
    case add_to_fav = "add_to_fav"
    case add_to_garden = "add_to_garden"
    case card_view = "card_view"
    case remove_from_fav = "remove_from_fav"
    
    /// PlantsDetailController (card_plant_explore)
    case go_to_wiki = "go_to_wiki"
    
    ///ChooseIdentifyController (photo_select)
    case identify = "identify"
    case diagnose = "diagnose"
    case cancel_photo = "cancel_photo"
    
    /// IdentifyController (identify_screen_step_1)
    case identify_capture = "identify_capture"
    case identify_upload = "identify_upload"
    
    /// IdentifyController (identify_screen_step_2)
    case identifying = "identifying"
    case retake_photo = "retake_photo"
    
    /// MainTabBarController(tap_bar)
    case add_bar = "add_bar"
    case garden_bar = "garden_bar"
    case notification_bar = "notification_bar"
    case menu_bar = "menu_bar"
}

class AnalyticsHelper: NSObject {
    
    static func sendFirebaseEvents(events: FirebaseEvents, params: [String : Any]? = nil) {
        Analytics.logEvent(events.rawValue, parameters: params)
    }
    
    static func sendFirebaseScreenEvent(screen: FirebaseScreenEvents) {
        Analytics.logEvent(AnalyticsEventScreenView,
                           parameters: [AnalyticsParameterScreenName: screen.rawValue])
    }
}
