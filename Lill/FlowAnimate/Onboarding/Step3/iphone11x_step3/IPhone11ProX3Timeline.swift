// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class IPhone11ProX3Timeline: Timeline {
    public convenience init(view: IPhone11ProX3View, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = IPhone11ProX3Timeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: IPhone11ProX3View, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for phone
        let position_y_phone: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [732, 215, 215]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for popupbiggreat1
        let position_x_popupbiggreat1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [387, 387, 168.47]
            keyframeAnimation.keyTimes = [0, 0.56, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_width_popupbiggreat1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.width"
            keyframeAnimation.values = [150, 174.53]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_popupbiggreat1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [181, 210.6]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_popupbiggreat1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M0,0l150,0 0,181 -150,0 0,-181zM0,0")!, CGPathCreateWithSVGString("M0,0l174.53,0 0,210.6 -174.53,0 0,-210.6zM0,0")!]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for add
        let position_x_add: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [389, 389, 262, 262]
            keyframeAnimation.keyTimes = [0, 0.405, 0.735, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.popupbiggreat1.layer] = [path_popupbiggreat1, position_x_popupbiggreat1, bounds_size_width_popupbiggreat1, bounds_size_height_popupbiggreat1]
        animationsByLayer[view.add.layer] = [position_x_add]
        animationsByLayer[view.phone.layer] = [position_y_phone]

        return animationsByLayer 
    }
}
