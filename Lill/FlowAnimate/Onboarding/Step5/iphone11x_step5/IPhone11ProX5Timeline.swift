// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class IPhone11ProX5Timeline: Timeline {
    public convenience init(view: IPhone11ProX5View, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = IPhone11ProX5Timeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: IPhone11ProX5View, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for phone
        let position_y_phone: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [739, 215, 215]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for check
        let position_x_check: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [390, 390, 271, 271]
            keyframeAnimation.keyTimes = [0, 0.38, 0.645, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for execute
        let position_x_execute: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [398, 398, 271]
            keyframeAnimation.keyTimes = [0, 0.595, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.execute.layer] = [position_x_execute]
        animationsByLayer[view.check.layer] = [position_x_check]
        animationsByLayer[view.phone.layer] = [position_y_phone]

        return animationsByLayer 
    }
}
