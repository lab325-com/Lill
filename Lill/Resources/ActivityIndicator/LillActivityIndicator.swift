//
//  LillActivityIndicator.swift
//  Lill
//
//  Created by Andrey S on 02.12.2021.
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
    }
    
    func show() {
        if timelineNew != nil { return }
        
        timelineNew = LoaderTimeline(view: activityView, duration: 3.0, repeatCount: 100)
        dateStart = Date()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {[weak self] in
            DispatchQueue.main.async {[weak self] in
                self?.showLoadingActivity()
            }
        }
    }
    
    func hide() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {[weak self] in
            let elapsed = Date().timeIntervalSince(self?.dateStart ?? Date())
            if elapsed < 3 {
                
                DispatchQueue.main.asyncAfter(deadline: .now() + (3 - elapsed - 0.2)) { [weak self] in
                    self?.stopAnimation()
                }
            } else {
                UIView.animate(withDuration: 0.25) { [weak self] in
                    self?.backgroundView.alpha = 0.0
                }
                self?.stopAnimation()
            }
        }
    }
    
    private func showLoadingActivity() {
        UIView.animate(withDuration: 0.3) { [weak self] in
            self?.backgroundView.alpha = 1.0
        }
        timelineNew?.play()
        UIApplication.shared.windows.first?.addSubview(self)
        UIApplication.shared.beginIgnoringInteractionEvents()
    }
    
    private func stopAnimation() {
        timelineNew?.pause()
        timelineNew = nil
        
        UIView.animate(withDuration: 0.3) { [weak self] in
            self?.backgroundView.alpha = 0.0
        } completion: { [weak self] result in
            self?.removeFromSuperview()
        }
        
        
        UIApplication.shared.endIgnoringInteractionEvents()
    }
}
