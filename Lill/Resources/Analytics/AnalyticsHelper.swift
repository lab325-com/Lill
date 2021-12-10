//
//  AnalyticsHelper.swift
//  Lill
//
//  Created by Andrey S on 09.12.2021.
//

import Foundation
import Firebase


enum FirebaseScreenEvents: String {
    case login_screen = "login_screen" ///LoginController
    case main_screen = "main_screen" /// PlantsController
    case card_plant_explore = "card_plant_explore" /// PlantsDetailController
    case photo_select = "photo_select" /// ChooseIdentifyController
    case identify_screen_step_1 = "identify_screen_step_1" /// IdentifyController
    case identify_screen_step_2 = "identify_screen_step_2" /// IdentifyController
    
    case tap_bar = "tap_bar" /// MainTabBarController
    case menu = "menu" /// MenuController
    case purchase_screen = "purchase_screen" /// SubcribeController
    case card_plan = "card_plan" /// GardeDetailController
    case plant_edit_menu = "plant_edit_menu"
    
    case onboarding_step_1 = "onboarding_step_1" /// OnboardingWelcomeController
    case onboarding_step_2 = "onboarding_step_2" /// OnboardingFirsController
    case onboarding_step_3 = "onboarding_step_3" /// OnboardingSecondController
    case onboarding_step_4 = "onboarding_step_4" /// OnboardingThreeController
    case onboarding_step_5 = "onboarding_step_5" /// OnboardingFourController
    
    case diagnosing_step_2 = "diagnosing_step_2"
    case diagnosis_results = "diagnosis results"
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
    
    ///MenuController(menu)
    case menu_log_out = "menu_log_out"
    case menu_subscription = "menu_subscription"
    case menu_recognize = "menu_recognize"
    case menu_disease = "menu_disease"
    case menu_language = "menu_language"
    case menu_invite_friends = "menu_invite_friends"
    case menu_rate_app = "menu_rate_app"
    case menu_terms = "menu_terms"
    case menu_privacy = "menu_privacy"
    
    ///SubcribeController(purchase_screen)
    case subscribe_start = "subscribe_start"
    case purchase_success = "purchase_success"
    case purchase_cancel = "purchase_cancel"
    case purchase_error = "purchase_error"
    case unsubscribe = "unsubscribe"
    
    /// GardeDetailController(card plant_about)
    case card_about = "card_about"
    case card_care_plan = "card_care_plan"
    case plant_edit_menu = "plant_edit_menu"
    case edit_cares = "edit_cares"
    
    case edit_change_name = "edit_change_name"
    case edit_change_photo = "edit_change_photo"
    case edit_care_plan = "edit_care_plan"
    case edit_clone_plant = "edit_clone_plant"
    case edit_delete_plant = "edit_delete_plant"
    case edit_cancel = "edit_cancel"
    
    
    /// Onboarding
    case onboarding_skip_1 = "onboarding_skip_1"
    case onboarding_next_1 = "onboarding_next_1"
    
    case onboarding_skip_2 = "onboarding_skip_2"
    case onboarding_next_2 = "onboarding_next_2"
    
    case onboarding_skip_3 = "onboarding_skip_3"
    case onboarding_next_3 = "onboarding_next_3"
    
    case onboarding_skip_4 = "onboarding_skip_4"
    case onboarding_next_4 = "onboarding_next_4"
    
    case onboarding_skip_5 = "onboarding_skip_5"
    case onboarding_next_5 = "onboarding_next_5"
    
    case re_diagnose = "re_diagnose"
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
