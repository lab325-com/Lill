// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class IPhoneSe2Timeline: Timeline {
    public convenience init(view: IPhoneSe2View, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = IPhoneSe2Timeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: IPhoneSe2View, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for iphone480k
        let position_y_iphone480k: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [541, 135, 135]
            keyframeAnimation.keyTimes = [0, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for cataloge
        let position_x_cataloge: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [329, 329, 179]
            keyframeAnimation.keyTimes = [0, 0.685, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for photo
        let position_x_photo: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-107, -107, 24, 24]
            keyframeAnimation.keyTimes = [0, 0.535, 0.82, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for name
        let position_x_name: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [330, 330, 209, 209]
            keyframeAnimation.keyTimes = [0, 0.405, 0.655, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.photo.layer] = [position_x_photo]
        animationsByLayer[view.cataloge.layer] = [position_x_cataloge]
        animationsByLayer[view.name.layer] = [position_x_name]
        animationsByLayer[view.iphone480k.layer] = [position_y_iphone480k]

        return animationsByLayer 
    }
}
