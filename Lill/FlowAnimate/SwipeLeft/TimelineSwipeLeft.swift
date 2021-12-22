// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class TimelineSwipeLeft: Timeline {
    public convenience init(view: AnimationBackGroundSwipeLeftView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = TimelineSwipeLeft.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: AnimationBackGroundSwipeLeftView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for vector
        let position_x_vector: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-137, -88.73, -137, -137]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_vector: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [272.3, 263.56, 272.3, 272.3]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let transform_rotation_z_vector: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [-0.0523599, 0.0101229, -0.0523599, -0.0523599]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for vector89
        let position_x_vector89: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-38, -24, -38, -38]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for vector_1
        let position_x_vector_1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [75, 177.05, 75, 75]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_vector_1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [501, 479.88, 501, 501]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let transform_rotation_z_vector_1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0, 0.097913, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for vector_2
        let position_x_vector_2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [160, 211.47, 160, 160]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_vector_2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [-156, -166.77, -156, -156]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let transform_rotation_z_vector_2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0, 0.135787, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for vector_3
        let position_x_vector_3: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-38, 7.51, -38, -38]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_vector_3: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [-65, -68, -65, -65]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let transform_rotation_z_vector_3: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0, 0.153938, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for vector_4
        let position_x_vector_4: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [-55, -24.08, -55, -55]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_vector_4: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [241, 233.32, 241, 241]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let transform_rotation_z_vector_4: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0, 0.152716, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for vector_5
        let position_x_vector_5: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [303, 327.99, 303, 303]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_vector_5: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [25, 18.61, 25, 25]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let transform_rotation_z_vector_5: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0, 0.249058, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for vector_6
        let position_x_vector_6: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.x"
            keyframeAnimation.values = [304, 354.93, 304, 304]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let position_y_vector_6: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [154, 143.72, 154, 154]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let transform_rotation_z_vector_6: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0, 0.143815, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.25, 0.5, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.vector_6.layer] = [position_y_vector_6, position_x_vector_6, transform_rotation_z_vector_6]
        animationsByLayer[view.vector89.layer] = [position_x_vector89]
        animationsByLayer[view.vector_2.layer] = [position_x_vector_2, transform_rotation_z_vector_2, position_y_vector_2]
        animationsByLayer[view.vector_5.layer] = [position_y_vector_5, position_x_vector_5, transform_rotation_z_vector_5]
        animationsByLayer[view.vector.layer] = [position_x_vector, position_y_vector, transform_rotation_z_vector]
        animationsByLayer[view.vector_3.layer] = [position_x_vector_3, position_y_vector_3, transform_rotation_z_vector_3]
        animationsByLayer[view.vector_1.layer] = [position_x_vector_1, position_y_vector_1, transform_rotation_z_vector_1]
        animationsByLayer[view.vector_4.layer] = [position_x_vector_4, transform_rotation_z_vector_4, position_y_vector_4]

        return animationsByLayer 
    }
}
