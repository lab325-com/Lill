// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class IPhone82Timeline: Timeline {
    public convenience init(view: IPhone82View, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = IPhone82Timeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: IPhone82View, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for iphone480k
        let position_y_iphone480k: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [627, 161, 161]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for cataloge
        let position_x_cataloge: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [392, 392, 227]
            keyframeAnimation.keyTimes = [0, 0.63, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for photo
        let position_x_photo: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-122, -122, 31, 31]
            keyframeAnimation.keyTimes = [0, 0.525, 0.815, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for name
        let position_x_name: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [388, 388, 251, 251]
            keyframeAnimation.keyTimes = [0, 0.445, 0.69, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.cataloge.layer] = [position_x_cataloge]
        animationsByLayer[view.iphone480k.layer] = [position_y_iphone480k]
        animationsByLayer[view.photo.layer] = [position_x_photo]
        animationsByLayer[view.name.layer] = [position_x_name]

        return animationsByLayer 
    }
}
