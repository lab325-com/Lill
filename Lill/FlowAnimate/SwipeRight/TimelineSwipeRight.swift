// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class TimelineSwipeRight: Timeline {
    public convenience init(view: AnimationBackGroundSwipeRightView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = TimelineSwipeRight.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: AnimationBackGroundSwipeRightView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for vector
        let position_x_vector: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-137, -167.5, -137, -137]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_vector: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [272.3, 310.73, 272.3, 272.3]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let transform_rotation_z_vector: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [-0.0523599, -0.29147, -0.0523599, -0.0523599]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for vector89
        let position_x_vector89: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-38, -53, -38, -38]
            keyframeAnimation.keyTimes = [0, 0.205, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_vector89: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [85.62, 86, 85.62, 85.62]
            keyframeAnimation.keyTimes = [0, 0.205, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for vector_1
        let position_x_vector_1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [75, -16, 75, 75]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for vector_2
        let position_x_vector_2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [160, 112, 160, 160]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_vector_2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [-156, -141.47, -156, -156]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let transform_rotation_z_vector_2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0, -0.154636, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for vector_3
        let position_x_vector_3: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-38, -89, -38, -38]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_vector_3: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [-65, -47.8, -65, -65]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let transform_rotation_z_vector_3: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0, -0.186401, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for vector_4
        let position_x_vector_4: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-55, -95.24, -55, -55]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_vector_4: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [241, 260.91, 241, 241]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let transform_rotation_z_vector_4: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0, -0.23911, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for vector_5
        let position_x_vector_5: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [303, 264, 303, 303]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_vector_5: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [25, 34.94, 25, 25]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let transform_rotation_z_vector_5: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0, -0.28222, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for vector_6
        let position_x_vector_6: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [304, 227, 304, 304]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_vector_6: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [154, 182, 154, 154]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let transform_rotation_z_vector_6: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0, -0.304036, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.2, 0.495, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.vector_6.layer] = [position_x_vector_6, position_y_vector_6, transform_rotation_z_vector_6]
        animationsByLayer[view.vector.layer] = [position_x_vector, position_y_vector, transform_rotation_z_vector]
        animationsByLayer[view.vector_2.layer] = [transform_rotation_z_vector_2, position_x_vector_2, position_y_vector_2]
        animationsByLayer[view.vector_3.layer] = [transform_rotation_z_vector_3, position_x_vector_3, position_y_vector_3]
        animationsByLayer[view.vector89.layer] = [position_x_vector89, position_y_vector89]
        animationsByLayer[view.vector_5.layer] = [position_y_vector_5, transform_rotation_z_vector_5, position_x_vector_5]
        animationsByLayer[view.vector_4.layer] = [position_x_vector_4, position_y_vector_4, transform_rotation_z_vector_4]
        animationsByLayer[view.vector_1.layer] = [position_x_vector_1]

        return animationsByLayer 
    }
}
