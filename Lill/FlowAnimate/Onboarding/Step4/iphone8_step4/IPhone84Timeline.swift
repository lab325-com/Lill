// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class IPhone84Timeline: Timeline {
    public convenience init(view: IPhone84View, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = IPhone84Timeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: IPhone84View, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for phone
        let position_y_phone: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [645, 161, 161]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for set
        let position_x_set: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [393, 393, 287, 287]
            keyframeAnimation.keyTimes = [0, 0.35, 0.625, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_set: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [296, 294]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for popupbigstepwater1
        let position_y_popupbigstepwater1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [651, 651, 374]
            keyframeAnimation.keyTimes = [0, 0.53, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.popupbigstepwater1.layer] = [position_y_popupbigstepwater1]
        animationsByLayer[view.phone.layer] = [position_y_phone]
        animationsByLayer[view.set.layer] = [position_y_set, position_x_set]

        return animationsByLayer 
    }
}
