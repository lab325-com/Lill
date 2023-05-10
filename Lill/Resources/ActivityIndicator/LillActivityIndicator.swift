//
//  LillActivityIndicator.swift
//  Lill
//
//  Created by mob325 on 02.12.2021.
//

import Foundation

import UIKit

class LillActivityIndicator: UIView, LoadFromXibProtocol {
    @IBOutlet weak var activityView: LoaderView!
    @IBOutlet weak var backgroundView: UIView!
    
    static var shared = LillActivityIndicator()
    
    var timelineNew: Timeline?
    var dateStart: Date?
    
    private convenience init() {
        self.init(frame: UIScreen.main.bounds)
        addSubviewLoadedFromXib()
        backgroundView.alpha = 0.0
        activityView.alpha = 0.0
    }
    
    func show() {
        if timelineNew != nil { return }
        
        timelineNew = LoaderTimeline(view: activityView, duration: 2.5, repeatCount: 100)
        dateStart = Date()
        DispatchQueue.main.async {[weak self] in
            self?.showLoadingActivity()
        }
    }
    
    func hide() {
        
        stopAnimation()
    }
    
    private func showLoadingActivity() {
        UIView.animate(withDuration: 0.3) { [weak self] in
            self?.backgroundView.alpha = 1.0
            self?.activityView.alpha = 1.0
        }
        timelineNew?.play()
        UIApplication.shared.windows.first?.addSubview(self)
        UIApplication.shared.beginIgnoringInteractionEvents()
    }
    
    private func stopAnimation() {
        
        
        UIView.animate(withDuration: 0.3) { [weak self] in
            self?.backgroundView.alpha = 0.0
            self?.activityView.alpha = 0.0
        } completion: { [weak self] result in
            self?.removeFromSuperview()
            self?.timelineNew?.pause()
            self?.timelineNew = nil
        }
        
        
        UIApplication.shared.endIgnoringInteractionEvents()
    }
}
