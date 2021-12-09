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
}

enum FirebaseEvents: String {
    /// All base event
    case first_open = "first_open"
    
    ///Login Screen
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
    
    ///Main Screen
    case main_screen_open = "main_screen_open"
    case explore_search = "explore_search"
    case explore_photo = "explore_photo"
    case explore_catalog = "explore_catalog"
    case add_to_fav = "add_to_fav"
    case add_to_garden = "add_to_garden"
    case card_view = "card_view"
    case remove_from_fav = "remove_from_fav"
    
    /// Plants (card_plant_explore)
    case go_to_wiki = "go_to_wiki"
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
