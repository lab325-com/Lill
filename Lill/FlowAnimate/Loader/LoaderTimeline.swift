// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class LoaderTimeline: Timeline {
    public convenience init(view: LoaderView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = LoaderTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    
    private static func animationsByLayer(view: LoaderView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for collom1
        let position_y_collom1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [60, 27.5, 27.5, 60, 60]
            keyframeAnimation.keyTimes = [0, 0.293333, 0.43, 0.693333, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_collom1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [12.5, 45.01, 45.01, 12.5, 12.5]
            keyframeAnimation.keyTimes = [0, 0.293333, 0.43, 0.693333, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_collom1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -1.726,0,-3.288,-0.7,-4.419,-1.831 -1.131,-1.131,-1.831,-2.694,-1.831,-4.419l0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.251c0,-3.453,2.798,-6.251,6.25,-6.251 3.452,0,6.25,2.799,6.25,6.251 0,0,0,32.507,0,32.507 0,3.453,-2.798,6.251,-6.25,6.251 -3.452,0,-6.25,-2.799,-6.25,-6.251 0,0,0,-32.507,0,-32.507l0,0zM0,6.251")!, CGPathCreateWithSVGString("M0,6.251c0,-3.453,2.798,-6.251,6.25,-6.251 3.452,0,6.25,2.799,6.25,6.251 0,0,0,32.507,0,32.507 0,3.453,-2.798,6.251,-6.25,6.251 -3.452,0,-6.25,-2.799,-6.25,-6.251 0,0,0,-32.507,0,-32.507l0,0zM0,6.251")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -1.726,0,-3.288,-0.7,-4.419,-1.831 -1.131,-1.131,-1.831,-2.694,-1.831,-4.419l0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -1.726,0,-3.288,-0.7,-4.419,-1.831 -1.131,-1.131,-1.831,-2.694,-1.831,-4.419l0,0zM0,6.25")!]
            keyframeAnimation.keyTimes = [0, 0.293333, 0.43, 0.693333, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for collom2
        let position_y_collom2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [60, 60, 47.5, 47.5, 60, 60]
            keyframeAnimation.keyTimes = [0, 0.0333333, 0.21, 0.593333, 0.773333, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_collom2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [12.5, 12.5, 25, 25, 12.5, 12.5]
            keyframeAnimation.keyTimes = [0, 0.0333333, 0.21, 0.593333, 0.773333, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_collom2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,0 0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,0 0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 3.452,0,6.25,2.798,6.25,6.25 0,0,0,12.5,0,12.5 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,-12.5 0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 3.452,0,6.25,2.798,6.25,6.25 0,0,0,12.5,0,12.5 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,-12.5 0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,0 0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,0 0,0zM0,6.25")!]
            keyframeAnimation.keyTimes = [0, 0.0333333, 0.21, 0.593333, 0.773333, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for collom3
        let position_y_collom3: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [60, 60, 27.5, 27.5, 60, 60]
            keyframeAnimation.keyTimes = [0, 0.0666667, 0.37, 0.516667, 0.83, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_collom3: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [12.5, 12.5, 45, 45, 12.5, 12.5]
            keyframeAnimation.keyTimes = [0, 0.0666667, 0.37, 0.516667, 0.83, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_collom3: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,0 0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,0 0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 3.452,0,6.25,2.798,6.25,6.25 0,0,0,32.5,0,32.5 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,-32.5 0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 3.452,0,6.25,2.798,6.25,6.25 0,0,0,32.5,0,32.5 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,-32.5 0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,0 0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,0 0,0zM0,6.25")!]
            keyframeAnimation.keyTimes = [0, 0.0666667, 0.37, 0.516667, 0.83, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for collom4
        let position_y_collom4: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [60, 60, 27.5, 27.5, 60, 60]
            keyframeAnimation.keyTimes = [0, 0.09, 0.45, 0.606667, 0.91, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let bounds_size_height_collom4: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "bounds.size.height"
            keyframeAnimation.values = [12.5, 12.5, 45, 45, 12.5, 12.5]
            keyframeAnimation.keyTimes = [0, 0.09, 0.45, 0.606667, 0.91, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let path_collom4: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "path"
            keyframeAnimation.values = [CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,0 0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,0 0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 3.452,0,6.25,2.798,6.25,6.25 0,0,0,32.5,0,32.5 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,-32.5 0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 3.452,0,6.25,2.798,6.25,6.25 0,0,0,32.5,0,32.5 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,-32.5 0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,0 0,0zM0,6.25")!, CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,0 0,0zM0,6.25")!]
            keyframeAnimation.keyTimes = [0, 0.09, 0.45, 0.606667, 0.91, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for leaf
        let position_y_leaf: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "position.y"
            keyframeAnimation.values = [44, 23.5]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let transform_rotation_z_leaf: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0, 0, -0.122173, 0.0523599, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.213333, 0.276667, 0.33, 0.396667, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let opacity_leaf: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [0, 0, 1, 1, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.21, 0.276667, 0.543333, 0.63, 1] 
            keyframeAnimation.timingFunctions = [.linear, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut, .easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
        let anchorpoint_y_leaf: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "anchorPoint.y"
            keyframeAnimation.values = [1, 0]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [.easeInEaseOut]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.collom2.layer] = [bounds_size_height_collom2, path_collom2, position_y_collom2]
        animationsByLayer[view.collom3.layer] = [position_y_collom3, bounds_size_height_collom3, path_collom3]
        animationsByLayer[view.collom4.layer] = [path_collom4, bounds_size_height_collom4, position_y_collom4]
        animationsByLayer[view.leaf.layer] = [transform_rotation_z_leaf, anchorpoint_y_leaf, opacity_leaf, position_y_leaf]
        animationsByLayer[view.collom1.layer] = [bounds_size_height_collom1, path_collom1, position_y_collom1]

        return animationsByLayer 
    }
}
