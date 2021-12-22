//
//  ScheduleRouter.swift
//  Lill
//
//  Created by Andrey S on 29.11.2021.
//

import Foundation

class ScheduleRouter: BaseRouter {
    
    func pushScheduleSettings() {
        let controller = ScheduleSettingsController()
        controller.hidesBottomBarWhenPushed = true
        push(controller: controller)
    }
}
