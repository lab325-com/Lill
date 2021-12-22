// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class IPhone13ProMax2TimeLine: Timeline {
    public convenience init(view: IPhone13ProMax2View, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = IPhone13ProMax2TimeLine.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: IPhone13ProMax2View, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for iphone480k
        let position_y_iphone480k: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [789, 252, 252]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for cataloge
        let position_x_cataloge: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [451, 451, 268]
            keyframeAnimation.keyTimes = [0, 0.735, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for photo
        let position_x_photo: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-122, -122, 32, 32]
            keyframeAnimation.keyTimes = [0, 0.565, 0.915, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_photo: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [408, 393]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for name
        let position_x_name: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [437, 437, 292, 292]
            keyframeAnimation.keyTimes = [0, 0.39, 0.745, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.name.layer] = [position_x_name]
        animationsByLayer[view.cataloge.layer] = [position_x_cataloge]
        animationsByLayer[view.photo.layer] = [position_x_photo, position_y_photo]
        animationsByLayer[view.iphone480k.layer] = [position_y_iphone480k]

        return animationsByLayer 
    }
}
