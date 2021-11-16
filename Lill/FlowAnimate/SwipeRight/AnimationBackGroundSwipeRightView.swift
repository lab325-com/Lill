// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class AnimationBackGroundSwipeRightView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 390, height: 844)
        public static let backgroundColor = UIColor.white
    }

    public var vector91: ShapeView!
    public var vector: ShapeView!
    public var vector89: ShapeView!
    public var vector_1: ShapeView!
    public var vector_2: ShapeView!
    public var vector_3: ShapeView!
    public var vector_4: ShapeView!
    public var vector_5: ShapeView!
    public var vector_6: ShapeView!

    public override var intrinsicContentSize: CGSize {
        return Defaults.size
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        backgroundColor = Defaults.backgroundColor
        clipsToBounds = false
        createViews()
        addSubviews()
        //scale(to: frame.size)
    }

    /// Scales `self` and its subviews to `size`.
    ///
    /// - Parameter size: The size `self` is scaled to.
    ///
    /// UIKit specifies: "In iOS 8.0 and later, the transform property does not affect Auto Layout. Auto layout
    /// calculates a view's alignment rectangle based on its untransformed frame."
    ///
    /// see: https://developer.apple.com/documentation/uikit/uiview/1622459-transform
    ///
    /// If there are any constraints in IB affecting the frame of `self`, this method will have consequences on
    /// layout / rendering. To properly scale an animation, you will have to position the view manually.
    public func scale(to size: CGSize) {
        let x = size.width / Defaults.size.width
        let y = size.height / Defaults.size.height
        transform = CGAffineTransform(scaleX: x, y: y)
    }

    private func createViews() {
        CATransaction.suppressAnimations {
            createVector91()
            createVector()
            createVector89()
            createVector1()
            createVector2()
            createVector3()
            createVector4()
            createVector5()
            createVector6()
        }
    }

    private func createVector91() {
        vector91 = ShapeView(frame: CGRect(x: 27, y: 477, width: 342, height: 0.01))
        vector91.backgroundColor = UIColor.clear
        vector91.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector91.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector91.layer.borderColor = UIColor.clear.cgColor
        vector91.layer.shadowColor = UIColor.clear.cgColor
        vector91.layer.shadowOpacity = 1
        vector91.layer.position = CGPoint(x: 27, y: 477)
        vector91.layer.bounds = CGRect(x: 0, y: 0, width: 342, height: 0.01)
        vector91.layer.masksToBounds = false
        vector91.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector91.shapeLayer.fillColor = nil
        vector91.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vector91.shapeLayer.miterLimit = 4
        vector91.shapeLayer.lineDashPattern = []
        vector91.shapeLayer.lineDashPhase = 0
        vector91.shapeLayer.lineWidth = 1
        vector91.shapeLayer.path = CGPathCreateWithSVGString("M0,0l342,0")!

    }

    private func createVector() {
        vector = ShapeView(frame: CGRect(x: -137, y: 272.3, width: 272.91, height: 324.1))
        vector.backgroundColor = UIColor.clear
        vector.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector.transform = CGAffineTransform(rotationAngle: -0.0166667 * CGFloat.pi)
        vector.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector.layer.borderColor = UIColor.clear.cgColor
        vector.layer.shadowColor = UIColor.clear.cgColor
        vector.layer.shadowOpacity = 1
        vector.layer.position = CGPoint(x: -137, y: 272.3)
        vector.layer.bounds = CGRect(x: 0, y: 0, width: 272.91, height: 324.1)
        vector.layer.masksToBounds = false
        vector.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector.shapeLayer.fillColor = nil
        vector.shapeLayer.miterLimit = 4
        vector.shapeLayer.lineDashPattern = []
        vector.shapeLayer.lineDashPhase = 0
        vector.shapeLayer.lineWidth = 1
        vector.shapeLayer.path = CGPathCreateWithSVGString("M36.924,324.1c0,0,-173.35,-216.174,231.158,-324.1 44.324,322.611,-231.158,324.1,-231.158,324.1l0,0zM36.924,324.1")!

        let startPoint = CGPoint(x: 0.126, y: 0.32)
        let endPoint = CGPoint(x: 1.087, y: 0.122)
        let colors = [UIColor(red: 0.573, green: 0.835, blue: 0.608, alpha: 1).cgColor, UIColor(red: 0.573, green: 0.835, blue: 0.608, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)
    }

    private func createVector89() {
        vector89 = ShapeView(frame: CGRect(x: -38, y: 85.62, width: 524.5, height: 824.47))
        vector89.backgroundColor = UIColor.clear
        vector89.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector89.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector89.layer.borderColor = UIColor.clear.cgColor
        vector89.layer.shadowColor = UIColor.clear.cgColor
        vector89.layer.shadowOpacity = 1
        vector89.layer.position = CGPoint(x: -38, y: 85.62)
        vector89.layer.bounds = CGRect(x: 0, y: 0, width: 524.5, height: 824.47)
        vector89.layer.masksToBounds = false
        vector89.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector89.shapeLayer.fillColor = UIColor(red: 0.976, green: 0.38, blue: 0.38, alpha: 1).cgColor
        vector89.shapeLayer.miterLimit = 4
        vector89.shapeLayer.lineDashPattern = []
        vector89.shapeLayer.lineDashPhase = 0
        vector89.shapeLayer.lineWidth = 1
        vector89.shapeLayer.path = CGPathCreateWithSVGString("M163,335.973c-105.5,42.915,-144,107.999,-163,167.999l7.5,320.498 478,-27.5 39,-481.997c-11.167,-159.666,-65.2,-452.287,-94,-241.089 -36,263.999,-149.5,214.089,-267.5,262.089l0,0zM163,335.973")!

    }

    private func createVector1() {
        vector_1 = ShapeView(frame: CGRect(x: 75, y: 501, width: 459, height: 543))
        vector_1.backgroundColor = UIColor.clear
        vector_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_1.layer.borderColor = UIColor.clear.cgColor
        vector_1.layer.shadowColor = UIColor.clear.cgColor
        vector_1.layer.shadowOpacity = 1
        vector_1.layer.position = CGPoint(x: 75, y: 501)
        vector_1.layer.bounds = CGRect(x: 0, y: 0, width: 459, height: 543)
        vector_1.layer.masksToBounds = false
        vector_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_1.shapeLayer.fillColor = nil
        vector_1.shapeLayer.miterLimit = 4
        vector_1.shapeLayer.lineDashPattern = []
        vector_1.shapeLayer.lineDashPhase = 0
        vector_1.shapeLayer.lineWidth = 1
        vector_1.shapeLayer.path = CGPathCreateWithSVGString("M62.102,543c0,0,-291.553,-362.18,388.779,-543 74.547,540.505,-388.779,543,-388.779,543l0,0zM62.102,543")!

        let startPoint = CGPoint(x: 0.109, y: 0.292)
        let endPoint = CGPoint(x: 0.939, y: 0.71)
        let colors = [UIColor(red: 0.688, green: 0.573, blue: 0.835, alpha: 1).cgColor, UIColor(red: 0.688, green: 0.573, blue: 0.835, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)
    }

    private func createVector2() {
        vector_2 = ShapeView(frame: CGRect(x: 160, y: -156, width: 173, height: 203))
        vector_2.backgroundColor = UIColor.clear
        vector_2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_2.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_2.layer.borderColor = UIColor.clear.cgColor
        vector_2.layer.shadowColor = UIColor.clear.cgColor
        vector_2.layer.shadowOpacity = 1
        vector_2.layer.position = CGPoint(x: 160, y: -156)
        vector_2.layer.bounds = CGRect(x: 0, y: 0, width: 173, height: 203)
        vector_2.layer.masksToBounds = false
        vector_2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_2.shapeLayer.fillColor = nil
        vector_2.shapeLayer.miterLimit = 4
        vector_2.shapeLayer.lineDashPattern = []
        vector_2.shapeLayer.lineDashPhase = 0
        vector_2.shapeLayer.lineWidth = 1
        vector_2.shapeLayer.path = CGPathCreateWithSVGString("M23.407,203c0,0,-109.888,-135.401,146.533,-203 28.097,202.067,-146.533,203,-146.533,203l0,0zM23.407,203")!

        let startPoint = CGPoint(x: 0.109, y: 0.292)
        let endPoint = CGPoint(x: 0.939, y: 0.71)
        let colors = [UIColor(red: 0.688, green: 0.573, blue: 0.835, alpha: 1).cgColor, UIColor(red: 0.688, green: 0.573, blue: 0.835, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_2.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)
    }

    private func createVector3() {
        vector_3 = ShapeView(frame: CGRect(x: -38, y: -65, width: 167, height: 199))
        vector_3.backgroundColor = UIColor.clear
        vector_3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_3.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_3.layer.borderColor = UIColor.clear.cgColor
        vector_3.layer.shadowColor = UIColor.clear.cgColor
        vector_3.layer.shadowOpacity = 1
        vector_3.layer.position = CGPoint(x: -38, y: -65)
        vector_3.layer.bounds = CGRect(x: 0, y: 0, width: 167, height: 199)
        vector_3.layer.masksToBounds = false
        vector_3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_3.shapeLayer.fillColor = nil
        vector_3.shapeLayer.miterLimit = 4
        vector_3.shapeLayer.lineDashPattern = []
        vector_3.shapeLayer.lineDashPhase = 0
        vector_3.shapeLayer.lineWidth = 1
        vector_3.shapeLayer.path = CGPathCreateWithSVGString("M22.595,199c0,0,-106.077,-132.733,141.451,-199 27.123,198.086,-141.451,199,-141.451,199l0,0zM22.595,199")!

        let startPoint = CGPoint(x: 0.278, y: 0.228)
        let endPoint = CGPoint(x: 1.565, y: 0.68)
        let colors = [UIColor(red: 0.965, green: 0.216, blue: 0.216, alpha: 1).cgColor, UIColor(red: 0.965, green: 0.216, blue: 0.216, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_3.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)
    }

    private func createVector4() {
        vector_4 = ShapeView(frame: CGRect(x: -55, y: 241, width: 111, height: 131))
        vector_4.backgroundColor = UIColor.clear
        vector_4.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_4.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_4.layer.borderColor = UIColor.clear.cgColor
        vector_4.layer.shadowColor = UIColor.clear.cgColor
        vector_4.layer.shadowOpacity = 1
        vector_4.layer.position = CGPoint(x: -55, y: 241)
        vector_4.layer.bounds = CGRect(x: 0, y: 0, width: 111, height: 131)
        vector_4.layer.masksToBounds = false
        vector_4.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_4.shapeLayer.fillColor = nil
        vector_4.shapeLayer.miterLimit = 4
        vector_4.shapeLayer.lineDashPattern = []
        vector_4.shapeLayer.lineDashPhase = 0
        vector_4.shapeLayer.lineWidth = 1
        vector_4.shapeLayer.path = CGPathCreateWithSVGString("M15.018,131c0,0,-70.506,-87.377,94.019,-131 18.027,130.398,-94.019,131,-94.019,131l0,0zM15.018,131")!

        let startPoint = CGPoint(x: 0.278, y: 0.228)
        let endPoint = CGPoint(x: 1.565, y: 0.68)
        let colors = [UIColor(red: 0.965, green: 0.216, blue: 0.216, alpha: 1).cgColor, UIColor(red: 0.965, green: 0.216, blue: 0.216, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_4.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)
    }

    private func createVector5() {
        vector_5 = ShapeView(frame: CGRect(x: 303, y: 25, width: 61, height: 73))
        vector_5.backgroundColor = UIColor.clear
        vector_5.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_5.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_5.layer.borderColor = UIColor.clear.cgColor
        vector_5.layer.shadowColor = UIColor.clear.cgColor
        vector_5.layer.shadowOpacity = 1
        vector_5.layer.position = CGPoint(x: 303, y: 25)
        vector_5.layer.bounds = CGRect(x: 0, y: 0, width: 61, height: 73)
        vector_5.layer.masksToBounds = false
        vector_5.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_5.shapeLayer.fillColor = nil
        vector_5.shapeLayer.miterLimit = 4
        vector_5.shapeLayer.lineDashPattern = []
        vector_5.shapeLayer.lineDashPhase = 0
        vector_5.shapeLayer.lineWidth = 1
        vector_5.shapeLayer.path = CGPathCreateWithSVGString("M8.253,73c0,0,-38.747,-48.691,51.668,-73 9.907,72.665,-51.668,73,-51.668,73l0,0zM8.253,73")!

        let startPoint = CGPoint(x: 0.278, y: 0.228)
        let endPoint = CGPoint(x: 1.565, y: 0.68)
        let colors = [UIColor(red: 0.965, green: 0.216, blue: 0.216, alpha: 1).cgColor, UIColor(red: 0.965, green: 0.216, blue: 0.216, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_5.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)
    }

    private func createVector6() {
        vector_6 = ShapeView(frame: CGRect(x: 304, y: 154, width: 157, height: 188))
        vector_6.backgroundColor = UIColor.clear
        vector_6.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_6.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_6.layer.borderColor = UIColor.clear.cgColor
        vector_6.layer.shadowColor = UIColor.clear.cgColor
        vector_6.layer.shadowOpacity = 1
        vector_6.layer.position = CGPoint(x: 304, y: 154)
        vector_6.layer.bounds = CGRect(x: 0, y: 0, width: 157, height: 188)
        vector_6.layer.masksToBounds = false
        vector_6.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_6.shapeLayer.fillColor = nil
        vector_6.shapeLayer.miterLimit = 4
        vector_6.shapeLayer.lineDashPattern = []
        vector_6.shapeLayer.lineDashPhase = 0
        vector_6.shapeLayer.lineWidth = 1
        vector_6.shapeLayer.path = CGPathCreateWithSVGString("M21.242,188c0,0,-99.725,-125.395,132.981,-188 25.498,187.136,-132.981,188,-132.981,188l0,0zM21.242,188")!

        let startPoint = CGPoint(x: 0.278, y: 0.228)
        let endPoint = CGPoint(x: 1.565, y: 0.68)
        let colors = [UIColor(red: 0.965, green: 0.8, blue: 0.216, alpha: 1).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_6.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)
    }

    private func addSubviews() {
        addSubview(vector91)
        addSubview(vector)
        addSubview(vector89)
        addSubview(vector_1)
        addSubview(vector_2)
        addSubview(vector_3)
        addSubview(vector_4)
        addSubview(vector_5)
        addSubview(vector_6)
    }
}
