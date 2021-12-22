// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

//@IBDesignable
public class IPhone13ProMax5View: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 428, height: 926)
        public static let backgroundColor = UIColor.white
    }

    public var phone: UIView!
    public var grad: ShapeView!
    public var liLl: UIView!
    public var txt: UIView!
    public var check: UIView!
    public var execute: UIView!
    public var rectangle467: ShapeView!
    public var rectangle467stroke: ShapeView!
    public var execute_1: ShapeView!
    public var vector116stroke: ShapeView!
    public var rectangle467_1: ShapeView!
    public var rectangle467stroke_1: ShapeView!
    public var check_1: ShapeView!
    public var vector116stroke_1: ShapeView!
    public var followAndExecuteCaresInSchedule: ShapeView!
    public var liLl_1: UIView!
    public var group661: UIView!
    public var rectangle389: ShapeView!
    public var vector9: ShapeView!
    public var group554: UIView!
    public var group564: UIView!
    public var vector: ShapeView!
    public var vector_1: ShapeView!
    public var vector_2: ShapeView!
    public var vector_3: ShapeView!
    public var vector_4: ShapeView!
    public var vector_5: ShapeView!
    public var vector_6: ShapeView!
    public var vector_7: ShapeView!
    public var vector_8: ShapeView!
    public var vector_9: ShapeView!
    public var vector_10: ShapeView!
    public var vector_11: ShapeView!
    public var vector_12: ShapeView!
    public var vectorstroke: ShapeView!
    public var vector_13: ShapeView!
    public var vector_14: ShapeView!
    public var vector_15: ShapeView!
    public var vector_16: ShapeView!
    public var vector_17: ShapeView!
    public var vector_18: ShapeView!
    public var vector_19: ShapeView!
    public var vector_20: ShapeView!
    public var vector_21: ShapeView!
    public var vector_22: ShapeView!
    public var vector_23: ShapeView!
    public var vectorstroke_1: ShapeView!
    public var vector_24: ShapeView!
    public var vector_25: ShapeView!
    public var vectorstroke_2: ShapeView!
    public var vectorstroke_3: ShapeView!
    public var group488: UIView!
    public var iphone12black: UIView!
    public var black: ShapeView!
    public var white: ShapeView!
    public var productRed: ShapeView!
    public var green: ShapeView!
    public var blue: ShapeView!
    public var shadows: UIView!
    public var highlights: UIView!
    public var group11: UIView!
    public var group9: UIView!
    public var rectangle17: ShapeView!
    public var rectangle21: ShapeView!
    public var rectangle22: ShapeView!
    public var rectangle18: ShapeView!
    public var rectangle19: ShapeView!
    public var subtract: ShapeView!
    public var iphone12screen: UIView!
    public var schedule3: ShapeView!
    public var schedule3_1: ShapeView!
    public var background: ShapeView!
    public var group8: UIView!
    public var rectangle20: ShapeView!
    public var subtract_1: ShapeView!
    public var group10: UIView!
    public var rectangle13: ShapeView!
    public var rectangle14: ShapeView!
    public var rectangle16: ShapeView!
    public var rectangle15: ShapeView!
    public var rectangle10: ShapeView!
    public var rectangle11: ShapeView!
    public var group4: UIView!
    public var rectangle23: ShapeView!
    public var rectangle25: ShapeView!
    public var rectangle24: ShapeView!
    public var rectangle26: ShapeView!
    public var rectangle27: ShapeView!
    public var rectangle28: ShapeView!
    public var group8_1: UIView!
    public var rectangle20_1: ShapeView!
    public var group10_1: UIView!
    public var rectangle13_1: ShapeView!
    public var rectangle14_1: ShapeView!
    public var rectangle16_1: ShapeView!
    public var rectangle15_1: ShapeView!
    public var rectangle10_1: ShapeView!
    public var rectangle11_1: ShapeView!
    public var group4_1: UIView!
    public var rectangle23_1: ShapeView!
    public var rectangle25_1: ShapeView!
    public var rectangle24_1: ShapeView!
    public var rectangle26_1: ShapeView!
    public var rectangle27_1: ShapeView!
    public var rectangle28_1: ShapeView!

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
        clipsToBounds = true
        createViews()
        addSubviews()
        layer.name = "sceneLayer"
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
            createPhone()
            createGrad()
            createLiLl()
            createTxt()
            createCheck()
            createExecute()
            createRectangle467()
            createRectangle467stroke()
            createExecute1()
            createVector116stroke()
            createRectangle4671()
            createRectangle467stroke1()
            createCheck1()
            createVector116stroke1()
            createFollowAndExecuteCaresInSchedule()
            createLiLl1()
            createGroup661()
            createRectangle389()
            createVector99()
            createGroup554()
            createGroup564()
            createVector()
            createVector1()
            createVector2()
            createVector3()
            createVector4()
            createVector5()
            createVector6()
            createVector7()
            createVector8()
            createVector9()
            createVector10()
            createVector11()
            createVector12()
            createVectorstroke()
            createVector13()
            createVector14()
            createVector15()
            createVector16()
            createVector17()
            createVector18()
            createVector19()
            createVector20()
            createVector21()
            createVector22()
            createVector23()
            createVectorstroke1()
            createVector24()
            createVector25()
            createVectorstroke2()
            createVectorstroke3()
            createGroup488()
            createIphone12black()
            createBlack()
            createWhite()
            createProductRed()
            createGreen()
            createBlue()
            createShadows()
            createHighlights()
            createGroup11()
            createGroup9()
            createRectangle17()
            createRectangle21()
            createRectangle22()
            createRectangle18()
            createRectangle19()
            createSubtract()
            createIphone12screen()
            createSchedule3()
            createSchedule31()
            createBackground()
            createGroup8()
            createRectangle20()
            createSubtract1()
            createGroup10()
            createRectangle13()
            createRectangle14()
            createRectangle16()
            createRectangle15()
            createRectangle10()
            createRectangle11()
            createGroup4()
            createRectangle23()
            createRectangle25()
            createRectangle24()
            createRectangle26()
            createRectangle27()
            createRectangle28()
            createGroup81()
            createRectangle201()
            createGroup101()
            createRectangle131()
            createRectangle141()
            createRectangle161()
            createRectangle151()
            createRectangle101()
            createRectangle111()
            createGroup41()
            createRectangle231()
            createRectangle251()
            createRectangle241()
            createRectangle261()
            createRectangle271()
            createRectangle281()
        }
    }

    private func createPhone() {
        phone = UIView(frame: CGRect(x: 76, y: 854, width: 276.76, height: 560))
        phone.backgroundColor = UIColor.clear
        phone.layer.anchorPoint = CGPoint(x: 0, y: 0)
        phone.layer.shadowOffset = CGSize(width: 0, height: 0)
        phone.layer.borderWidth = 1
        phone.layer.borderColor = UIColor.clear.cgColor
        phone.layer.name = "phone"
        phone.layer.shadowColor = UIColor.clear.cgColor
        phone.layer.shadowOpacity = 1
        phone.layer.position = CGPoint(x: 76, y: 854)
        phone.layer.bounds = CGRect(x: 0, y: 0, width: 276.76, height: 560)
        phone.layer.masksToBounds = false

    }

    private func createGrad() {
        grad = ShapeView(frame: CGRect(x: 0, y: 565, width: 428, height: 361))
        grad.backgroundColor = UIColor.clear
        grad.layer.anchorPoint = CGPoint(x: 0, y: 0)
        grad.layer.shadowOffset = CGSize(width: 0, height: 0)
        grad.layer.borderColor = UIColor.clear.cgColor
        grad.layer.name = "grad"
        grad.layer.shadowColor = UIColor.clear.cgColor
        grad.layer.shadowOpacity = 1
        grad.layer.position = CGPoint(x: 0, y: 565)
        grad.layer.bounds = CGRect(x: 0, y: 0, width: 428, height: 361)
        grad.layer.masksToBounds = false
        grad.shapeLayer.name = "grad.shapeLayer"
        grad.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        grad.shapeLayer.fillColor = nil
        grad.shapeLayer.miterLimit = 4
        grad.shapeLayer.lineDashPattern = []
        grad.shapeLayer.lineDashPhase = 0
        grad.shapeLayer.lineWidth = 1
        grad.shapeLayer.path = CGPathCreateWithSVGString("M0,0l428,0 0,361 -428,0 0,-361zM0,0")!

        let startPoint = CGPoint(x: 0.5, y: 0.082)
        let endPoint = CGPoint(x: 0.5, y: 0.54)
        let colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor, UIColor.white.cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        grad.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createLiLl() {
        liLl = UIView(frame: CGRect(x: 43, y: 74, width: 342, height: 108.19))
        liLl.backgroundColor = UIColor.clear
        liLl.layer.anchorPoint = CGPoint(x: 0, y: 0)
        liLl.layer.shadowOffset = CGSize(width: 0, height: 0)
        liLl.layer.borderWidth = 1
        liLl.layer.borderColor = UIColor.clear.cgColor
        liLl.layer.name = "liLl"
        liLl.layer.shadowColor = UIColor.clear.cgColor
        liLl.layer.shadowOpacity = 1
        liLl.layer.position = CGPoint(x: 43, y: 74)
        liLl.layer.bounds = CGRect(x: 0, y: 0, width: 342, height: 108.19)
        liLl.layer.masksToBounds = false

    }

    private func createTxt() {
        txt = UIView(frame: CGRect(x: 165, y: 114, width: 207.63, height: 36.84))
        txt.backgroundColor = UIColor.clear
        txt.layer.anchorPoint = CGPoint(x: 0, y: 0)
        txt.layer.shadowOffset = CGSize(width: 0, height: 0)
        txt.layer.borderWidth = 1
        txt.layer.borderColor = UIColor.clear.cgColor
        txt.layer.name = "txt"
        txt.layer.shadowColor = UIColor.clear.cgColor
        txt.layer.shadowOpacity = 1
        txt.layer.position = CGPoint(x: 165, y: 114)
        txt.layer.bounds = CGRect(x: 0, y: 0, width: 207.63, height: 36.84)
        txt.layer.masksToBounds = false

    }

    private func createCheck() {
        check = UIView(frame: CGRect(x: 451, y: 363, width: 97.5, height: 30))
        check.backgroundColor = UIColor.clear
        check.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check.layer.shadowOffset = CGSize(width: 0, height: 0)
        check.layer.borderWidth = 1
        check.layer.borderColor = UIColor.clear.cgColor
        check.layer.name = "check"
        check.layer.shadowColor = UIColor.clear.cgColor
        check.layer.shadowOpacity = 1
        check.layer.position = CGPoint(x: 451, y: 363)
        check.layer.bounds = CGRect(x: 0, y: 0, width: 97.5, height: 30)
        check.layer.masksToBounds = false

    }

    private func createExecute() {
        execute = UIView(frame: CGRect(x: 451, y: 467, width: 97.5, height: 30))
        execute.backgroundColor = UIColor.clear
        execute.layer.anchorPoint = CGPoint(x: 0, y: 0)
        execute.layer.shadowOffset = CGSize(width: 0, height: 0)
        execute.layer.borderWidth = 1
        execute.layer.borderColor = UIColor.clear.cgColor
        execute.layer.name = "execute"
        execute.layer.shadowColor = UIColor.clear.cgColor
        execute.layer.shadowOpacity = 1
        execute.layer.position = CGPoint(x: 451, y: 467)
        execute.layer.bounds = CGRect(x: 0, y: 0, width: 97.5, height: 30)
        execute.layer.masksToBounds = false

    }

    private func createRectangle467() {
        rectangle467 = ShapeView(frame: CGRect(x: 0, y: 0, width: 97.5, height: 30))
        rectangle467.backgroundColor = UIColor.clear
        rectangle467.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle467.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle467.layer.borderColor = UIColor.clear.cgColor
        rectangle467.layer.name = "rectangle467"
        rectangle467.layer.shadowColor = UIColor.clear.cgColor
        rectangle467.layer.shadowOpacity = 1
        rectangle467.layer.position = CGPoint(x: 0, y: 0)
        rectangle467.layer.bounds = CGRect(x: 0, y: 0, width: 97.5, height: 30)
        rectangle467.layer.masksToBounds = false
        rectangle467.shapeLayer.name = "rectangle467.shapeLayer"
        rectangle467.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle467.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle467.shapeLayer.miterLimit = 4
        rectangle467.shapeLayer.lineDashPattern = []
        rectangle467.shapeLayer.lineDashPhase = 0
        rectangle467.shapeLayer.lineWidth = 2
        rectangle467.shapeLayer.path = CGPathCreateWithSVGString("M0,15c0,-8.284,6.716,-15,15,-15l67.5,0c8.284,0,15,6.716,15,15l0,0c0,8.284,-6.716,15,-15,15l-67.5,0c-8.284,0,-15,-6.716,-15,-15l0,0 0,0zM0,15")!


    }

    private func createRectangle467stroke() {
        rectangle467stroke = ShapeView(frame: CGRect(x: 0, y: 0, width: 97.5, height: 30))
        rectangle467stroke.backgroundColor = UIColor.clear
        rectangle467stroke.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle467stroke.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle467stroke.layer.borderColor = UIColor.clear.cgColor
        rectangle467stroke.layer.name = "rectangle467stroke"
        rectangle467stroke.layer.shadowColor = UIColor.clear.cgColor
        rectangle467stroke.layer.shadowOpacity = 1
        rectangle467stroke.layer.position = CGPoint(x: 0, y: 0)
        rectangle467stroke.layer.bounds = CGRect(x: 0, y: 0, width: 97.5, height: 30)
        rectangle467stroke.layer.masksToBounds = false
        rectangle467stroke.shapeLayer.name = "rectangle467stroke.shapeLayer"
        rectangle467stroke.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle467stroke.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle467stroke.shapeLayer.miterLimit = 4
        rectangle467stroke.shapeLayer.lineDashPattern = []
        rectangle467stroke.shapeLayer.lineDashPhase = 0
        rectangle467stroke.shapeLayer.lineWidth = 2
        rectangle467stroke.shapeLayer.path = CGPathCreateWithSVGString("M82.5,1.667l-67.5,0c-7.364,0,-13.333,5.97,-13.333,13.333 0,7.364,5.97,13.333,13.333,13.333l67.5,0c7.364,0,13.333,-5.969,13.333,-13.333 0,-7.364,-5.969,-13.333,-13.333,-13.333l0,0zM15,0c-8.284,0,-15,6.716,-15,15 0,8.284,6.716,15,15,15l67.5,0c8.284,0,15,-6.716,15,-15 0,-8.284,-6.716,-15,-15,-15l-67.5,0 0,0zM15,0")!


    }

    private func createExecute1() {
        execute_1 = ShapeView(frame: CGRect(x: 30.26, y: 9.68, width: 53.36, height: 11.32))
        execute_1.backgroundColor = UIColor.clear
        execute_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        execute_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        execute_1.layer.borderColor = UIColor.clear.cgColor
        execute_1.layer.name = "execute_1"
        execute_1.layer.shadowColor = UIColor.clear.cgColor
        execute_1.layer.shadowOpacity = 1
        execute_1.layer.position = CGPoint(x: 30.26, y: 9.68)
        execute_1.layer.bounds = CGRect(x: 0, y: 0, width: 53.36, height: 11.32)
        execute_1.layer.masksToBounds = false
        execute_1.shapeLayer.name = "execute_1.shapeLayer"
        execute_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        execute_1.shapeLayer.fillColor = UIColor.white.cgColor
        execute_1.shapeLayer.miterLimit = 4
        execute_1.shapeLayer.lineDashPattern = []
        execute_1.shapeLayer.lineDashPhase = 0
        execute_1.shapeLayer.lineWidth = 2
        execute_1.shapeLayer.path = CGPathCreateWithSVGString("M0,11.158l7.082,0 0,-1.492 -5.35,0 0,-3.464 5.064,0 0,-1.454 -5.064,0 0,-3.255 5.35,0 0,-1.492 -7.082,0 0,11.158 0,0zM8.048,11.158l1.809,0 1.801,-2.992 0.039,0 1.801,2.992 1.84,0 -2.644,-4.114 2.675,-4.021 -1.848,0 -1.747,2.946 -0.039,0 -1.77,-2.946 -1.879,0 2.652,4.075 -2.69,4.059 0,0zM19.707,11.32c1.971,0,3.224,-1.175,3.487,-2.467l0.015,-0.085 -1.585,0 -0.023,0.062c-0.209,0.611,-0.866,1.121,-1.855,1.121 -1.33,0,-2.172,-0.897,-2.203,-2.436l5.76,0 0,-0.564c0,-2.443,-1.399,-4.083,-3.68,-4.083 -2.281,0,-3.75,1.701,-3.75,4.245l0,0.008c0,2.567,1.446,4.199,3.835,4.199l0,0zM19.629,4.237c1.09,0,1.879,0.688,2.018,2.095l-4.082,0c0.147,-1.361,0.982,-2.095,2.064,-2.095l0,0zM28.095,11.32c1.956,0,3.317,-1.253,3.494,-2.884l0.008,-0.054 -1.608,0 -0.008,0.062c-0.201,0.881,-0.858,1.477,-1.886,1.477 -1.291,0,-2.149,-1.044,-2.149,-2.822l0,-0.008c0,-1.74,0.843,-2.822,2.142,-2.822 1.09,0,1.708,0.673,1.886,1.469l0.015,0.062 1.593,0 -0.008,-0.054c-0.139,-1.531,-1.407,-2.876,-3.502,-2.876 -2.319,0,-3.835,1.631,-3.835,4.206l0,0.008c0,2.606,1.484,4.237,3.858,4.237l0,0zM35.548,11.32c1.237,0,2.064,-0.564,2.489,-1.384l0.039,0 0,1.222 1.678,0 0,-8.134 -1.678,0 0,4.748c0,1.268,-0.758,2.111,-1.933,2.111 -1.16,0,-1.732,-0.68,-1.732,-1.91l0,-4.949 -1.67,0 0,5.273c0,1.871,1.02,3.023,2.806,3.023l0,0zM44.261,11.32c0.34,0,0.657,-0.039,0.85,-0.07l0,-1.291c-0.124,0.015,-0.271,0.031,-0.448,0.031 -0.704,0,-1.075,-0.247,-1.075,-1.075l0,-4.562 1.523,0 0,-1.33 -1.523,0 0,-2.119 -1.709,0 0,2.119 -1.167,0 0,1.33 1.167,0 0,4.663c0,1.624,0.773,2.304,2.381,2.304l0,0zM49.765,11.32c1.971,0,3.224,-1.175,3.487,-2.467l0.015,-0.085 -1.585,0 -0.023,0.062c-0.209,0.611,-0.866,1.121,-1.855,1.121 -1.33,0,-2.172,-0.897,-2.203,-2.436l5.76,0 0,-0.564c0,-2.443,-1.399,-4.083,-3.68,-4.083 -2.281,0,-3.75,1.701,-3.75,4.245l0,0.008c0,2.567,1.446,4.199,3.835,4.199l0,0zM49.688,4.237c1.09,0,1.879,0.688,2.018,2.095l-4.082,0c0.147,-1.361,0.982,-2.095,2.064,-2.095l0,0zM49.688,4.237")!


    }

    private func createVector116stroke() {
        vector116stroke = ShapeView(frame: CGRect(x: 17.92, y: 22.08, width: 8.02, height: 12.5))
        vector116stroke.backgroundColor = UIColor.clear
        vector116stroke.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector116stroke.transform = CGAffineTransform(rotationAngle: -1 * CGFloat.pi)
        vector116stroke.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector116stroke.layer.borderColor = UIColor.clear.cgColor
        vector116stroke.layer.name = "vector116stroke"
        vector116stroke.layer.shadowColor = UIColor.clear.cgColor
        vector116stroke.layer.shadowOpacity = 1
        vector116stroke.layer.position = CGPoint(x: 17.92, y: 22.08)
        vector116stroke.layer.bounds = CGRect(x: 0, y: 0, width: 8.02, height: 12.5)
        vector116stroke.layer.masksToBounds = false
        vector116stroke.shapeLayer.name = "vector116stroke.shapeLayer"
        vector116stroke.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector116stroke.shapeLayer.fillColor = UIColor.white.cgColor
        vector116stroke.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vector116stroke.shapeLayer.miterLimit = 4
        vector116stroke.shapeLayer.lineDashPattern = []
        vector116stroke.shapeLayer.lineDashPhase = 0
        vector116stroke.shapeLayer.lineWidth = 3
        vector116stroke.shapeLayer.path = CGPathCreateWithSVGString("M0.366,0.366c0.488,-0.488,1.28,-0.488,1.768,0l5.886,5.884 -5.886,5.884c-0.488,0.488,-1.28,0.488,-1.768,0 -0.488,-0.488,-0.488,-1.28,0,-1.768l4.117,-4.116 -4.117,-4.116c-0.488,-0.488,-0.488,-1.28,0,-1.768l0,0zM0.366,0.366")!


    }

    private func createRectangle4671() {
        rectangle467_1 = ShapeView(frame: CGRect(x: 0, y: 0, width: 97.5, height: 30))
        rectangle467_1.backgroundColor = UIColor.clear
        rectangle467_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle467_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle467_1.layer.borderColor = UIColor.clear.cgColor
        rectangle467_1.layer.name = "rectangle467_1"
        rectangle467_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle467_1.layer.shadowOpacity = 1
        rectangle467_1.layer.position = CGPoint(x: 0, y: 0)
        rectangle467_1.layer.bounds = CGRect(x: 0, y: 0, width: 97.5, height: 30)
        rectangle467_1.layer.masksToBounds = false
        rectangle467_1.shapeLayer.name = "rectangle467_1.shapeLayer"
        rectangle467_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle467_1.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle467_1.shapeLayer.miterLimit = 4
        rectangle467_1.shapeLayer.lineDashPattern = []
        rectangle467_1.shapeLayer.lineDashPhase = 0
        rectangle467_1.shapeLayer.lineWidth = 2
        rectangle467_1.shapeLayer.path = CGPathCreateWithSVGString("M0,15c0,-8.284,6.716,-15,15,-15l67.5,0c8.284,0,15,6.716,15,15l0,0c0,8.284,-6.716,15,-15,15l-67.5,0c-8.284,0,-15,-6.716,-15,-15l0,0 0,0zM0,15")!


    }

    private func createRectangle467stroke1() {
        rectangle467stroke_1 = ShapeView(frame: CGRect(x: 0, y: 0, width: 97.5, height: 30))
        rectangle467stroke_1.backgroundColor = UIColor.clear
        rectangle467stroke_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle467stroke_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle467stroke_1.layer.borderColor = UIColor.clear.cgColor
        rectangle467stroke_1.layer.name = "rectangle467stroke_1"
        rectangle467stroke_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle467stroke_1.layer.shadowOpacity = 1
        rectangle467stroke_1.layer.position = CGPoint(x: 0, y: 0)
        rectangle467stroke_1.layer.bounds = CGRect(x: 0, y: 0, width: 97.5, height: 30)
        rectangle467stroke_1.layer.masksToBounds = false
        rectangle467stroke_1.shapeLayer.name = "rectangle467stroke_1.shapeLayer"
        rectangle467stroke_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle467stroke_1.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle467stroke_1.shapeLayer.miterLimit = 4
        rectangle467stroke_1.shapeLayer.lineDashPattern = []
        rectangle467stroke_1.shapeLayer.lineDashPhase = 0
        rectangle467stroke_1.shapeLayer.lineWidth = 2
        rectangle467stroke_1.shapeLayer.path = CGPathCreateWithSVGString("M82.5,1.667l-67.5,0c-7.364,0,-13.333,5.97,-13.333,13.333 0,7.364,5.97,13.333,13.333,13.333l67.5,0c7.364,0,13.333,-5.969,13.333,-13.333 0,-7.364,-5.969,-13.333,-13.333,-13.333l0,0zM15,0c-8.284,0,-15,6.716,-15,15 0,8.284,6.716,15,15,15l67.5,0c8.284,0,15,-6.716,15,-15 0,-8.284,-6.716,-15,-15,-15l-67.5,0 0,0zM15,0")!


    }

    private func createCheck1() {
        check_1 = ShapeView(frame: CGRect(x: 35.12, y: 9.49, width: 43.71, height: 11.53))
        check_1.backgroundColor = UIColor.clear
        check_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        check_1.layer.borderColor = UIColor.clear.cgColor
        check_1.layer.name = "check_1"
        check_1.layer.shadowColor = UIColor.clear.cgColor
        check_1.layer.shadowOpacity = 1
        check_1.layer.position = CGPoint(x: 35.12, y: 9.49)
        check_1.layer.bounds = CGRect(x: 0, y: 0, width: 43.71, height: 11.53)
        check_1.layer.masksToBounds = false
        check_1.shapeLayer.name = "check_1.shapeLayer"
        check_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        check_1.shapeLayer.fillColor = UIColor.white.cgColor
        check_1.shapeLayer.miterLimit = 4
        check_1.shapeLayer.lineDashPattern = []
        check_1.shapeLayer.lineDashPhase = 0
        check_1.shapeLayer.lineWidth = 2
        check_1.shapeLayer.path = CGPathCreateWithSVGString("M5.172,11.53c2.466,0,4.314,-1.492,4.662,-3.712l0.008,-0.077 -1.716,0 -0.023,0.07c-0.417,1.415,-1.446,2.188,-2.93,2.188 -2.064,0,-3.402,-1.655,-3.402,-4.238l0,-0.008c0,-2.583,1.33,-4.222,3.402,-4.222 1.5,0,2.536,0.797,2.907,2.103l0.046,0.155 1.716,0 -0.015,-0.07c-0.348,-2.204,-2.196,-3.72,-4.654,-3.72 -3.162,0,-5.172,2.212,-5.172,5.753l0,0.008c0,3.542,2.01,5.769,5.172,5.769l0,0zM11.272,11.344l1.67,0 0,-4.709c0,-1.268,0.765,-2.15,1.917,-2.15 1.175,0,1.855,0.804,1.855,2.15l0,4.709 1.67,0 0,-5.027c0,-1.964,-1.144,-3.263,-2.884,-3.263 -1.214,0,-2.087,0.549,-2.52,1.492l-0.039,0 0,-4.361 -1.67,0 0,11.159 0,0zM23.478,11.507c1.971,0,3.224,-1.175,3.487,-2.467l0.015,-0.085 -1.585,0 -0.023,0.062c-0.209,0.611,-0.866,1.121,-1.855,1.121 -1.33,0,-2.172,-0.897,-2.203,-2.436l5.759,0 0,-0.565c0,-2.444,-1.399,-4.083,-3.68,-4.083 -2.281,0,-3.749,1.701,-3.749,4.245l0,0.008c0,2.567,1.446,4.199,3.834,4.199l0,0zM23.401,4.423c1.09,0,1.879,0.688,2.018,2.096l-4.082,0c0.147,-1.361,0.982,-2.096,2.064,-2.096l0,0zM31.866,11.507c1.956,0,3.316,-1.253,3.494,-2.884l0.008,-0.054 -1.608,0 -0.008,0.062c-0.201,0.882,-0.858,1.477,-1.886,1.477 -1.291,0,-2.149,-1.044,-2.149,-2.823l0,-0.008c0,-1.74,0.843,-2.823,2.141,-2.823 1.09,0,1.709,0.673,1.886,1.469l0.015,0.062 1.593,0 -0.008,-0.054c-0.139,-1.531,-1.407,-2.877,-3.502,-2.877 -2.319,0,-3.835,1.632,-3.835,4.207l0,0.008c0,2.606,1.484,4.238,3.858,4.238l0,0zM36.644,11.344l1.67,0 0,-2.931 0.696,-0.688 2.76,3.619 1.941,0 -3.471,-4.624 3.34,-3.511 -1.964,0 -3.262,3.472 -0.039,0 0,-6.496 -1.67,0 0,11.159 0,0zM36.644,11.344")!


    }

    private func createVector116stroke1() {
        vector116stroke_1 = ShapeView(frame: CGRect(x: 17.92, y: 22.08, width: 8.02, height: 12.5))
        vector116stroke_1.backgroundColor = UIColor.clear
        vector116stroke_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector116stroke_1.transform = CGAffineTransform(rotationAngle: -1 * CGFloat.pi)
        vector116stroke_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector116stroke_1.layer.borderColor = UIColor.clear.cgColor
        vector116stroke_1.layer.name = "vector116stroke_1"
        vector116stroke_1.layer.shadowColor = UIColor.clear.cgColor
        vector116stroke_1.layer.shadowOpacity = 1
        vector116stroke_1.layer.position = CGPoint(x: 17.92, y: 22.08)
        vector116stroke_1.layer.bounds = CGRect(x: 0, y: 0, width: 8.02, height: 12.5)
        vector116stroke_1.layer.masksToBounds = false
        vector116stroke_1.shapeLayer.name = "vector116stroke_1.shapeLayer"
        vector116stroke_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector116stroke_1.shapeLayer.fillColor = UIColor.white.cgColor
        vector116stroke_1.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vector116stroke_1.shapeLayer.miterLimit = 4
        vector116stroke_1.shapeLayer.lineDashPattern = []
        vector116stroke_1.shapeLayer.lineDashPhase = 0
        vector116stroke_1.shapeLayer.lineWidth = 3
        vector116stroke_1.shapeLayer.path = CGPathCreateWithSVGString("M0.366,0.366c0.488,-0.488,1.28,-0.488,1.768,0l5.886,5.884 -5.886,5.884c-0.488,0.488,-1.28,0.488,-1.768,0 -0.488,-0.488,-0.488,-1.28,0,-1.768l4.117,-4.116 -4.117,-4.116c-0.488,-0.488,-0.488,-1.28,0,-1.768l0,0zM0.366,0.366")!


    }

    private func createFollowAndExecuteCaresInSchedule() {
        followAndExecuteCaresInSchedule = ShapeView(frame: CGRect(x: 0, y: 0, width: 207.63, height: 36.84))
        followAndExecuteCaresInSchedule.backgroundColor = UIColor.clear
        followAndExecuteCaresInSchedule.layer.anchorPoint = CGPoint(x: 0, y: 0)
        followAndExecuteCaresInSchedule.layer.shadowOffset = CGSize(width: 0, height: 0)
        followAndExecuteCaresInSchedule.layer.borderColor = UIColor.clear.cgColor
        followAndExecuteCaresInSchedule.layer.name = "followAndExecuteCaresInSchedule"
        followAndExecuteCaresInSchedule.layer.shadowColor = UIColor.clear.cgColor
        followAndExecuteCaresInSchedule.layer.shadowOpacity = 1
        followAndExecuteCaresInSchedule.layer.position = CGPoint(x: 0, y: 0)
        followAndExecuteCaresInSchedule.layer.bounds = CGRect(x: 0, y: 0, width: 207.63, height: 36.84)
        followAndExecuteCaresInSchedule.layer.masksToBounds = false
        followAndExecuteCaresInSchedule.shapeLayer.name = "followAndExecuteCaresInSchedule.shapeLayer"
        followAndExecuteCaresInSchedule.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        followAndExecuteCaresInSchedule.shapeLayer.fillColor = UIColor.white.cgColor
        followAndExecuteCaresInSchedule.shapeLayer.miterLimit = 4
        followAndExecuteCaresInSchedule.shapeLayer.lineDashPattern = []
        followAndExecuteCaresInSchedule.shapeLayer.lineDashPhase = 0
        followAndExecuteCaresInSchedule.shapeLayer.lineWidth = 1
        followAndExecuteCaresInSchedule.shapeLayer.path = CGPathCreateWithSVGString("M0,13.609l2.078,0 0,-5.603 5.752,0 0,-1.753 -5.752,0 0,-4.24 6.281,0 0,-1.79 -8.359,0 0,13.387 0,0zM13.786,13.804c2.793,0,4.629,-1.93,4.629,-5.074l0,-0.019c0,-3.126,-1.855,-5.047,-4.639,-5.047 -2.774,0,-4.62,1.93,-4.62,5.047l0,0.019c0,3.136,1.828,5.074,4.629,5.074l0,0zM13.796,12.125c-1.568,0,-2.588,-1.234,-2.588,-3.395l0,-0.019c0,-2.134,1.03,-3.368,2.57,-3.368 1.568,0,2.588,1.234,2.588,3.368l0,0.019c0,2.152,-1.002,3.395,-2.57,3.395l0,0zM20.039,13.609l2.004,0 0,-13.387 -2.004,0 0,13.387 0,0zM24.177,13.609l2.004,0 0,-13.387 -2.004,0 0,13.387 0,0zM32.434,13.804c2.793,0,4.629,-1.93,4.629,-5.074l0,-0.019c0,-3.126,-1.856,-5.047,-4.639,-5.047 -2.774,0,-4.62,1.93,-4.62,5.047l0,0.019c0,3.136,1.828,5.074,4.629,5.074l0,0zM32.443,12.125c-1.568,0,-2.588,-1.234,-2.588,-3.395l0,-0.019c0,-2.134,1.03,-3.368,2.57,-3.368 1.568,0,2.588,1.234,2.588,3.368l0,0.019c0,2.152,-1.002,3.395,-2.57,3.395l0,0zM40.496,13.609l2.069,0 2.032,-7.31 0.046,0 2.05,7.31 2.087,0 2.672,-9.759 -1.985,0 -1.781,7.681 -0.046,0 -2.041,-7.681 -1.93,0 -2.032,7.681 -0.037,0 -1.781,-7.681 -2.004,0 2.681,9.759 0,0zM59.404,13.785c1.29,0,2.421,-0.668,2.987,-1.716l0.037,0 0,1.54 2.013,0 0,-6.726c0,-1.957,-1.512,-3.219,-3.897,-3.219 -2.403,0,-3.859,1.289,-3.999,2.969l-0.009,0.102 1.893,0 0.019,-0.083c0.167,-0.779,0.881,-1.327,2.041,-1.327 1.243,0,1.939,0.649,1.939,1.725l0,0.733 -2.653,0.158c-2.31,0.139,-3.627,1.178,-3.627,2.876l0,0.018c0,1.753,1.308,2.95,3.256,2.95l0,0zM58.17,10.789l0,-0.019c0,-0.826,0.668,-1.354,1.874,-1.429l2.384,-0.148 0,0.761c0,1.271,-1.067,2.227,-2.477,2.227 -1.076,0,-1.781,-0.538,-1.781,-1.392l0,0zM66.39,13.609l2.004,0 0,-5.687c0,-1.521,0.909,-2.542,2.319,-2.542 1.392,0,2.078,0.826,2.078,2.291l0,5.937 2.013,0 0,-6.318c0,-2.245,-1.234,-3.627,-3.377,-3.627 -1.475,0,-2.477,0.668,-2.987,1.661l-0.046,0 0,-1.475 -2.004,0 0,9.759 0,0zM80.389,13.804c1.401,0,2.477,-0.705,3.062,-1.846l0.037,0 0,1.651 2.013,0 0,-13.387 -2.013,0 0,5.288 -0.037,0c-0.585,-1.15,-1.698,-1.846,-3.08,-1.846 -2.449,0,-4.063,1.948,-4.063,5.056l0,0.009c0,3.108,1.596,5.074,4.082,5.074l0,0zM80.918,12.079c-1.586,0,-2.561,-1.271,-2.561,-3.349l0,-0.009c0,-2.059,0.983,-3.34,2.561,-3.34 1.503,0,2.579,1.317,2.579,3.34l0,0.009c0,2.032,-1.067,3.349,-2.579,3.349l0,0zM91.662,13.609l8.498,0 0,-1.791 -6.42,0 0,-4.156 6.077,0 0,-1.744 -6.077,0 0,-3.906 6.42,0 0,-1.79 -8.498,0 0,13.387 0,0zM101.319,13.609l2.171,0 2.161,-3.59 0.047,0 2.161,3.59 2.208,0 -3.172,-4.935 3.21,-4.824 -2.218,0 -2.096,3.534 -0.047,0 -2.124,-3.534 -2.255,0 3.182,4.889 -3.228,4.87 0,0zM115.31,13.804c2.366,0,3.869,-1.41,4.184,-2.959l0.019,-0.102 -1.902,0 -0.028,0.074c-0.25,0.733,-1.039,1.345,-2.227,1.345 -1.595,0,-2.606,-1.076,-2.644,-2.922l6.912,0 0,-0.677c0,-2.931,-1.679,-4.898,-4.416,-4.898 -2.737,0,-4.499,2.041,-4.499,5.093l0,0.009c0,3.08,1.734,5.037,4.601,5.037l0,0zM115.217,5.306c1.308,0,2.255,0.826,2.422,2.514l-4.899,0c0.177,-1.633,1.179,-2.514,2.477,-2.514l0,0zM125.376,13.804c2.347,0,3.98,-1.503,4.193,-3.46l0.01,-0.065 -1.93,0 -0.009,0.074c-0.242,1.058,-1.03,1.772,-2.264,1.772 -1.549,0,-2.579,-1.252,-2.579,-3.386l0,-0.009c0,-2.087,1.011,-3.386,2.57,-3.386 1.308,0,2.05,0.807,2.263,1.763l0.019,0.074 1.911,0 -0.009,-0.065c-0.167,-1.837,-1.689,-3.451,-4.203,-3.451 -2.783,0,-4.601,1.957,-4.601,5.047l0,0.009c0,3.126,1.781,5.084,4.629,5.084l0,0zM134.319,13.804c1.485,0,2.477,-0.677,2.988,-1.661l0.046,0 0,1.466 2.013,0 0,-9.759 -2.013,0 0,5.696c0,1.521,-0.909,2.533,-2.319,2.533 -1.392,0,-2.078,-0.816,-2.078,-2.291l0,-5.937 -2.004,0 0,6.327c0,2.245,1.224,3.627,3.367,3.627l0,0zM144.775,13.804c0.408,0,0.789,-0.046,1.02,-0.083l0,-1.549c-0.148,0.018,-0.324,0.037,-0.538,0.037 -0.844,0,-1.289,-0.297,-1.289,-1.29l0,-5.473 1.827,0 0,-1.596 -1.827,0 0,-2.542 -2.05,0 0,2.542 -1.401,0 0,1.596 1.401,0 0,5.594c0,1.948,0.927,2.765,2.857,2.765l0,0zM151.38,13.804c2.366,0,3.869,-1.41,4.184,-2.959l0.019,-0.102 -1.902,0 -0.028,0.074c-0.25,0.733,-1.039,1.345,-2.226,1.345 -1.596,0,-2.607,-1.076,-2.644,-2.922l6.911,0 0,-0.677c0,-2.931,-1.679,-4.898,-4.416,-4.898 -2.736,0,-4.499,2.041,-4.499,5.093l0,0.009c0,3.08,1.735,5.037,4.601,5.037l0,0zM151.288,5.306c1.308,0,2.254,0.826,2.421,2.514l-4.898,0c0.176,-1.633,1.178,-2.514,2.477,-2.514l0,0zM167.078,13.832c2.959,0,5.176,-1.79,5.594,-4.453l0.009,-0.093 -2.059,0 -0.028,0.083c-0.501,1.698,-1.735,2.625,-3.516,2.625 -2.477,0,-4.082,-1.985,-4.082,-5.084l0,-0.009c0,-3.098,1.595,-5.065,4.082,-5.065 1.799,0,3.043,0.956,3.488,2.523l0.056,0.186 2.059,0 -0.018,-0.083c-0.418,-2.644,-2.635,-4.462,-5.585,-4.462 -3.795,0,-6.207,2.653,-6.207,6.902l0,0.009c0,4.249,2.412,6.921,6.207,6.921l0,0zM177.172,13.785c1.29,0,2.422,-0.668,2.988,-1.716l0.037,0 0,1.54 2.013,0 0,-6.726c0,-1.957,-1.512,-3.219,-3.896,-3.219 -2.403,0,-3.86,1.289,-3.999,2.969l-0.009,0.102 1.892,0 0.019,-0.083c0.167,-0.779,0.881,-1.327,2.041,-1.327 1.243,0,1.939,0.649,1.939,1.725l0,0.733 -2.653,0.158c-2.311,0.139,-3.628,1.178,-3.628,2.876l0,0.018c0,1.753,1.308,2.95,3.256,2.95l0,0zM175.939,10.789l0,-0.019c0,-0.826,0.668,-1.354,1.874,-1.429l2.384,-0.148 0,0.761c0,1.271,-1.067,2.227,-2.477,2.227 -1.076,0,-1.781,-0.538,-1.781,-1.392l0,0zM184.158,13.609l2.004,0 0,-5.817c0,-1.456,0.798,-2.301,2.088,-2.301 0.389,0,0.742,0.046,0.899,0.111l0,-1.865c-0.157,-0.028,-0.408,-0.074,-0.695,-0.074 -1.114,0,-1.93,0.714,-2.245,1.855l-0.047,0 0,-1.67 -2.004,0 0,9.759 0,0zM194.131,13.804c2.366,0,3.869,-1.41,4.184,-2.959l0.019,-0.102 -1.902,0 -0.028,0.074c-0.25,0.733,-1.039,1.345,-2.226,1.345 -1.596,0,-2.607,-1.076,-2.644,-2.922l6.911,0 0,-0.677c0,-2.931,-1.679,-4.898,-4.416,-4.898 -2.736,0,-4.499,2.041,-4.499,5.093l0,0.009c0,3.08,1.735,5.037,4.601,5.037l0,0zM194.039,5.306c1.308,0,2.254,0.826,2.421,2.514l-4.898,0c0.176,-1.633,1.178,-2.514,2.477,-2.514l0,0zM203.659,13.804c2.301,0,3.971,-1.225,3.971,-3.006l0,-0.009c0,-1.401,-0.761,-2.189,-2.755,-2.653l-1.587,-0.362c-1.048,-0.25,-1.447,-0.659,-1.447,-1.262l0,-0.009c0,-0.779,0.677,-1.289,1.753,-1.289 1.132,0,1.8,0.594,1.921,1.447l0.009,0.065 1.883,0 -0.009,-0.111c-0.102,-1.661,-1.494,-2.95,-3.804,-2.95 -2.245,0,-3.766,1.197,-3.766,2.941l0,0.009c0,1.419,0.918,2.31,2.774,2.737l1.595,0.362c1.049,0.25,1.401,0.612,1.401,1.243l0,0.009c0,0.789,-0.723,1.29,-1.929,1.29 -1.234,0,-1.902,-0.529,-2.088,-1.429l-0.018,-0.093 -1.986,0 0.009,0.083c0.205,1.781,1.633,2.987,4.073,2.987l0,0zM52.64,25.346c0.659,0,1.169,-0.52,1.169,-1.15 0,-0.64,-0.51,-1.16,-1.169,-1.16 -0.649,0,-1.169,0.519,-1.169,1.16 0,0.631,0.52,1.15,1.169,1.15l0,0zM51.638,36.608l2.004,0 0,-9.759 -2.004,0 0,9.759 0,0zM55.711,36.608l2.004,0 0,-5.687c0,-1.521,0.909,-2.542,2.319,-2.542 1.392,0,2.078,0.826,2.078,2.291l0,5.937 2.013,0 0,-6.318c0,-2.245,-1.234,-3.627,-3.377,-3.627 -1.475,0,-2.477,0.668,-2.987,1.661l-0.046,0 0,-1.475 -2.004,0 0,9.759 0,0zM74.934,36.84c3.377,0,5.399,-1.633,5.399,-4.202l0,-0.009c0,-2.106,-1.262,-3.247,-4.064,-3.804l-1.419,-0.288c-1.54,-0.306,-2.227,-0.798,-2.227,-1.642l0,-0.009c0,-0.956,0.863,-1.614,2.301,-1.623 1.382,0,2.347,0.64,2.486,1.688l0.009,0.111 2.644,0 -0.009,-0.176c-0.13,-2.347,-2.032,-3.896,-5.13,-3.896 -2.969,0,-5.103,1.614,-5.103,4.063l0,0.009c0,2.013,1.336,3.275,3.98,3.804l1.41,0.278c1.661,0.343,2.319,0.798,2.319,1.707l0,0.009c0,1.02,-0.974,1.698,-2.524,1.698 -1.531,0,-2.635,-0.649,-2.811,-1.688l-0.019,-0.102 -2.644,0 0.009,0.148c0.158,2.468,2.208,3.924,5.39,3.924l0,0zM86.364,36.812c2.653,0,4.37,-1.651,4.5,-3.822l0,-0.056 -2.523,0 -0.009,0.083c-0.186,1.002,-0.863,1.67,-1.948,1.67 -1.336,0,-2.171,-1.104,-2.171,-3.052l0,-0.009c0,-1.902,0.835,-3.043,2.162,-3.043 1.123,0,1.781,0.724,1.948,1.67l0.019,0.083 2.514,0 0,-0.065c-0.102,-2.152,-1.818,-3.813,-4.518,-3.813 -2.978,0,-4.88,1.976,-4.88,5.158l0,0.009c0,3.21,1.874,5.186,4.908,5.186l0,0zM92.237,36.608l2.709,0 0,-5.696c0,-1.299,0.77,-2.208,1.967,-2.208 1.234,0,1.92,0.826,1.92,2.217l0,5.687 2.71,0 0,-6.243c0,-2.403,-1.336,-3.906,-3.489,-3.906 -1.494,0,-2.542,0.687,-3.052,1.92l-0.056,0 0,-5.158 -2.709,0 0,13.387 0,0zM107.814,36.812c2.839,0,4.212,-1.679,4.518,-3.145l0.028,-0.102 -2.486,0 -0.019,0.056c-0.195,0.557,-0.872,1.169,-1.985,1.169 -1.383,0,-2.245,-0.928,-2.273,-2.514l6.846,0 0,-0.835c0,-3.006,-1.827,-4.982,-4.74,-4.982 -2.913,0,-4.778,2.022,-4.778,5.186l0,0.009c0,3.182,1.846,5.158,4.889,5.158l0,0zM107.749,28.482c1.123,0,1.93,0.714,2.097,2.087l-4.221,0c0.176,-1.345,1.011,-2.087,2.124,-2.087l0,0zM117.527,36.812c1.438,0,2.533,-0.724,3.062,-1.902l0.056,0 0,1.698 2.709,0 0,-13.387 -2.709,0 0,5.167 -0.056,0c-0.538,-1.206,-1.651,-1.93,-3.062,-1.93 -2.504,0,-4.045,1.93,-4.045,5.167l0,0.009c0,3.228,1.541,5.177,4.045,5.177l0,0zM118.437,34.567c-1.355,0,-2.199,-1.122,-2.199,-2.931l0,-0.009c0,-1.818,0.853,-2.922,2.199,-2.922 1.308,0,2.217,1.132,2.217,2.922l0,0.009c0,1.8,-0.9,2.931,-2.217,2.931l0,0zM128.549,36.812c1.503,0,2.523,-0.705,3.034,-1.846l0.055,0 0,1.642 2.709,0 0,-9.945 -2.709,0 0,5.715c0,1.299,-0.77,2.189,-1.985,2.189 -1.215,0,-1.828,-0.751,-1.828,-2.05l0,-5.854 -2.709,0 0,6.42c0,2.328,1.243,3.729,3.433,3.729l0,0zM136.175,36.608l2.709,0 0,-13.387 -2.709,0 0,13.387 0,0zM145.239,36.812c2.839,0,4.212,-1.679,4.518,-3.145l0.028,-0.102 -2.487,0 -0.018,0.056c-0.195,0.557,-0.872,1.169,-1.986,1.169 -1.382,0,-2.245,-0.928,-2.272,-2.514l6.846,0 0,-0.835c0,-3.006,-1.827,-4.982,-4.741,-4.982 -2.913,0,-4.777,2.022,-4.777,5.186l0,0.009c0,3.182,1.846,5.158,4.889,5.158l0,0zM145.174,28.482c1.122,0,1.93,0.714,2.097,2.087l-4.222,0c0.177,-1.345,1.012,-2.087,2.125,-2.087l0,0zM152.225,32.109l2.338,0 0.222,-8.887 -2.783,0 0.223,8.887 0,0zM153.394,36.719c0.844,0,1.512,-0.64,1.512,-1.457 0,-0.816,-0.668,-1.456,-1.512,-1.456 -0.845,0,-1.513,0.64,-1.513,1.456 0,0.816,0.668,1.457,1.513,1.457l0,0zM153.394,36.719")!


    }

    private func createLiLl1() {
        liLl_1 = UIView(frame: CGRect(x: 0, y: 0, width: 127.13, height: 108.19))
        liLl_1.backgroundColor = UIColor.clear
        liLl_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        liLl_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        liLl_1.layer.borderWidth = 1
        liLl_1.layer.borderColor = UIColor.clear.cgColor
        liLl_1.layer.name = "liLl_1"
        liLl_1.layer.shadowColor = UIColor.clear.cgColor
        liLl_1.layer.shadowOpacity = 1
        liLl_1.layer.position = CGPoint(x: 0, y: 0)
        liLl_1.layer.bounds = CGRect(x: 0, y: 0, width: 127.13, height: 108.19)
        liLl_1.layer.masksToBounds = false

    }

    private func createGroup661() {
        group661 = UIView(frame: CGRect(x: 89, y: 23, width: 253, height: 68))
        group661.backgroundColor = UIColor.clear
        group661.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group661.layer.shadowOffset = CGSize(width: 0, height: 6)
        group661.layer.shadowRadius = 12
        group661.layer.borderWidth = 1
        group661.layer.borderColor = UIColor.clear.cgColor
        group661.layer.name = "group661"
        group661.layer.shadowColor = UIColor(red: 0.976, green: 0.38, blue: 0.38, alpha: 0.4).cgColor
        group661.layer.shadowOpacity = 1
        group661.layer.position = CGPoint(x: 89, y: 23)
        group661.layer.bounds = CGRect(x: 0, y: 0, width: 253, height: 68)
        group661.layer.masksToBounds = false

    }

    private func createRectangle389() {
        rectangle389 = ShapeView(frame: CGRect(x: 253, y: 68, width: 232, height: 68))
        rectangle389.backgroundColor = UIColor.clear
        rectangle389.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle389.transform = CGAffineTransform(rotationAngle: 1 * CGFloat.pi)
        rectangle389.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle389.layer.borderColor = UIColor.clear.cgColor
        rectangle389.layer.cornerRadius = 24
        rectangle389.layer.name = "rectangle389"
        rectangle389.layer.shadowColor = UIColor.clear.cgColor
        rectangle389.layer.shadowOpacity = 1
        rectangle389.layer.position = CGPoint(x: 253, y: 68)
        rectangle389.layer.bounds = CGRect(x: 0, y: 0, width: 232, height: 68)
        rectangle389.layer.masksToBounds = true
        rectangle389.shapeLayer.name = "rectangle389.shapeLayer"
        rectangle389.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle389.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle389.shapeLayer.miterLimit = 4
        rectangle389.shapeLayer.lineDashPattern = []
        rectangle389.shapeLayer.lineDashPhase = 0
        rectangle389.shapeLayer.lineWidth = 1
        rectangle389.shapeLayer.path = CGPathCreateWithSVGString("M0,24c-0,-13.166,10.834,-24,24,-24l184,0c13.166,0,24,10.834,24,24l0,20c0,13.166,-10.834,24,-24,24l-184,0c-13.166,0,-24,-10.834,-24,-24l0,-20zM0,24")!


    }

    private func createVector99() {
        vector9 = ShapeView(frame: CGRect(x: 0, y: 41, width: 46, height: 27))
        vector9.backgroundColor = UIColor.clear
        vector9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector9.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector9.layer.borderColor = UIColor.clear.cgColor
        vector9.layer.name = "vector9"
        vector9.layer.shadowColor = UIColor.clear.cgColor
        vector9.layer.shadowOpacity = 1
        vector9.layer.position = CGPoint(x: 0, y: 41)
        vector9.layer.bounds = CGRect(x: 0, y: 0, width: 46, height: 27)
        vector9.layer.masksToBounds = false
        vector9.shapeLayer.name = "vector9.shapeLayer"
        vector9.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector9.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        vector9.shapeLayer.miterLimit = 4
        vector9.shapeLayer.lineDashPattern = []
        vector9.shapeLayer.lineDashPhase = 0
        vector9.shapeLayer.lineWidth = 1
        vector9.shapeLayer.path = CGPathCreateWithSVGString("M0,27l40.083,-27 5.917,27 -46,0 0,0zM0,27")!


    }

    private func createGroup554() {
        group554 = UIView(frame: CGRect(x: 0, y: 0, width: 127.13, height: 108.19))
        group554.backgroundColor = UIColor.clear
        group554.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group554.layer.shadowOffset = CGSize(width: 0, height: 0)
        group554.layer.borderWidth = 1
        group554.layer.borderColor = UIColor.clear.cgColor
        group554.layer.name = "group554"
        group554.layer.shadowColor = UIColor.clear.cgColor
        group554.layer.shadowOpacity = 1
        group554.layer.position = CGPoint(x: 0, y: 0)
        group554.layer.bounds = CGRect(x: 0, y: 0, width: 127.13, height: 108.19)
        group554.layer.masksToBounds = false

    }

    private func createGroup564() {
        group564 = UIView(frame: CGRect(x: 0, y: 0, width: 127.13, height: 108.19))
        group564.backgroundColor = UIColor.clear
        group564.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group564.layer.shadowOffset = CGSize(width: 0, height: 0)
        group564.layer.borderWidth = 1
        group564.layer.borderColor = UIColor.clear.cgColor
        group564.layer.name = "group564"
        group564.layer.shadowColor = UIColor.clear.cgColor
        group564.layer.shadowOpacity = 1
        group564.layer.position = CGPoint(x: 0, y: 0)
        group564.layer.bounds = CGRect(x: 0, y: 0, width: 127.13, height: 108.19)
        group564.layer.masksToBounds = false

    }

    private func createVector() {
        vector = ShapeView(frame: CGRect(x: 10.28, y: 48.69, width: 97.91, height: 59.51))
        vector.backgroundColor = UIColor.clear
        vector.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector.layer.borderColor = UIColor.clear.cgColor
        vector.layer.name = "vector"
        vector.layer.shadowColor = UIColor.clear.cgColor
        vector.layer.shadowOpacity = 1
        vector.layer.position = CGPoint(x: 10.28, y: 48.69)
        vector.layer.bounds = CGRect(x: 0, y: 0, width: 97.91, height: 59.51)
        vector.layer.masksToBounds = false
        vector.shapeLayer.name = "vector.shapeLayer"
        vector.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector.shapeLayer.fillColor = nil
        vector.shapeLayer.miterLimit = 4
        vector.shapeLayer.lineDashPattern = []
        vector.shapeLayer.lineDashPhase = 0
        vector.shapeLayer.lineWidth = 1
        vector.shapeLayer.path = CGPathCreateWithSVGString("M49.951,59.51c10.578,0,32.98,-0.61,37.499,-13.959 4.519,-13.349,9.347,-36.254,10.46,-45.551 -12.235,4.469,-21.917,6.014,-48.955,6.014 -27.038,0,-34.737,-1.236,-48.955,-6.014 1.598,11.996,5.724,31.175,10.46,45.109 4.737,13.934,28.904,14.401,39.49,14.401l0,0zM49.951,59.51")!

        let startPoint = CGPoint(x: 0.508, y: 0.498)
        let endPoint = CGPoint(x: 1.24699, y: 2.00308)
        let colors = [UIColor(red: 1, green: 0.725, blue: 0.561, alpha: 1).cgColor, UIColor(red: 0.996, green: 0.804, blue: 0.647, alpha: 1).cgColor, UIColor(red: 0.992, green: 0.867, blue: 0.714, alpha: 1).cgColor, UIColor(red: 0.988, green: 0.914, blue: 0.765, alpha: 1).cgColor, UIColor(red: 0.988, green: 0.937, blue: 0.792, alpha: 1).cgColor, UIColor(red: 0.988, green: 0.945, blue: 0.8, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.1), NSNumber(value: 0.21), NSNumber(value: 0.36), NSNumber(value: 0.55), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector1() {
        vector_1 = ShapeView(frame: CGRect(x: 11.36, y: 47.06, width: 95.21, height: 23.8))
        vector_1.backgroundColor = UIColor.clear
        vector_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_1.layer.borderColor = UIColor.clear.cgColor
        vector_1.layer.name = "vector_1"
        vector_1.layer.shadowColor = UIColor.clear.cgColor
        vector_1.layer.shadowOpacity = 1
        vector_1.layer.position = CGPoint(x: 11.36, y: 47.06)
        vector_1.layer.bounds = CGRect(x: 0, y: 0, width: 95.21, height: 23.8)
        vector_1.layer.masksToBounds = false
        vector_1.shapeLayer.name = "vector_1.shapeLayer"
        vector_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_1.shapeLayer.fillColor = nil
        vector_1.shapeLayer.miterLimit = 4
        vector_1.shapeLayer.lineDashPattern = []
        vector_1.shapeLayer.lineDashPhase = 0
        vector_1.shapeLayer.lineWidth = 1
        vector_1.shapeLayer.path = CGPathCreateWithSVGString("M45.011,23.78c-20.506,-0.093,-36.904,-2.981,-43.865,-7.077 0,0,-0.619,-3.234,-0.912,-4.907 -0.184,-1.039,-0.636,-2.331,0.602,-3.234 7.187,-5.27,27.919,-6.883,52.232,-6.756 1.146,0,27.894,-4.223,35.591,0.245 2.828,1.638,5.204,3.006,6.292,5.312 0.669,1.419,-0.167,4.662,-0.167,4.662l-1.096,5.565c-9.713,3.8,-27.434,6.308,-48.676,6.207l0,-0.017 0,0zM45.011,23.78")!

        let startPoint = CGPoint(x: 0.506, y: 0.528)
        let endPoint = CGPoint(x: 0.934498, y: 1.00946)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.77).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.5).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.28).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.13).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.03).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.18), NSNumber(value: 0.4), NSNumber(value: 0.6), NSNumber(value: 0.78), NSNumber(value: 0.92), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector2() {
        vector_2 = ShapeView(frame: CGRect(x: 7.57, y: 42.74, width: 102.24, height: 21.1))
        vector_2.backgroundColor = UIColor.clear
        vector_2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_2.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_2.layer.borderColor = UIColor.clear.cgColor
        vector_2.layer.name = "vector_2"
        vector_2.layer.shadowColor = UIColor.clear.cgColor
        vector_2.layer.shadowOpacity = 1
        vector_2.layer.position = CGPoint(x: 7.57, y: 42.74)
        vector_2.layer.bounds = CGRect(x: 0, y: 0, width: 102.24, height: 21.1)
        vector_2.layer.masksToBounds = false
        vector_2.shapeLayer.name = "vector_2.shapeLayer"
        vector_2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_2.shapeLayer.fillColor = UIColor(red: 0.988, green: 0.945, blue: 0.8, alpha: 1).cgColor
        vector_2.shapeLayer.miterLimit = 4
        vector_2.shapeLayer.lineDashPattern = []
        vector_2.shapeLayer.lineDashPhase = 0
        vector_2.shapeLayer.lineWidth = 1
        vector_2.shapeLayer.path = CGPathCreateWithSVGString("M0,0.085l1.939,14.32c0,0,12.497,6.695,51.137,6.695 34.779,0,47.486,-6.584,47.486,-6.584l1.679,-14.516c-16.707,3.364,-33.694,5.08,-50.726,5.123 -40.948,-0.273,-51.514,-5.038,-51.514,-5.038l0,0zM0,0.085")!


    }

    private func createVector3() {
        vector_3 = ShapeView(frame: CGRect(x: 7.57, y: 37.33, width: 102.24, height: 10.82))
        vector_3.backgroundColor = UIColor.clear
        vector_3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_3.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_3.layer.borderColor = UIColor.clear.cgColor
        vector_3.layer.name = "vector_3"
        vector_3.layer.shadowColor = UIColor.clear.cgColor
        vector_3.layer.shadowOpacity = 1
        vector_3.layer.position = CGPoint(x: 7.57, y: 37.33)
        vector_3.layer.bounds = CGRect(x: 0, y: 0, width: 102.24, height: 10.82)
        vector_3.layer.masksToBounds = false
        vector_3.shapeLayer.name = "vector_3.shapeLayer"
        vector_3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_3.shapeLayer.fillColor = UIColor(red: 1, green: 0.973, blue: 0.91, alpha: 1).cgColor
        vector_3.shapeLayer.miterLimit = 4
        vector_3.shapeLayer.lineDashPattern = []
        vector_3.shapeLayer.lineDashPhase = 0
        vector_3.shapeLayer.lineWidth = 1
        vector_3.shapeLayer.path = CGPathCreateWithSVGString("M51.12,10.82c28.233,0,51.12,-2.422,51.12,-5.41 0,-2.988,-22.887,-5.41,-51.12,-5.41 -28.233,0,-51.12,2.422,-51.12,5.41 0,2.988,22.887,5.41,51.12,5.41l0,0zM51.12,10.82")!


    }

    private func createVector4() {
        vector_4 = ShapeView(frame: CGRect(x: 7.57, y: 37.33, width: 102.24, height: 10.82))
        vector_4.backgroundColor = UIColor.clear
        vector_4.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_4.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_4.layer.borderColor = UIColor.clear.cgColor
        vector_4.layer.name = "vector_4"
        vector_4.layer.shadowColor = UIColor.clear.cgColor
        vector_4.layer.shadowOpacity = 1
        vector_4.layer.position = CGPoint(x: 7.57, y: 37.33)
        vector_4.layer.bounds = CGRect(x: 0, y: 0, width: 102.24, height: 10.82)
        vector_4.layer.masksToBounds = false
        vector_4.shapeLayer.name = "vector_4.shapeLayer"
        vector_4.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_4.shapeLayer.fillColor = nil
        vector_4.shapeLayer.miterLimit = 4
        vector_4.shapeLayer.lineDashPattern = []
        vector_4.shapeLayer.lineDashPhase = 0
        vector_4.shapeLayer.lineWidth = 1
        vector_4.shapeLayer.path = CGPathCreateWithSVGString("M51.12,10.82c28.233,0,51.12,-2.422,51.12,-5.41 0,-2.988,-22.887,-5.41,-51.12,-5.41 -28.233,0,-51.12,2.422,-51.12,5.41 0,2.988,22.887,5.41,51.12,5.41l0,0zM51.12,10.82")!

        let startPoint = CGPoint(x: 0.501, y: 0.502)
        let endPoint = CGPoint(x: 1.28818, y: 1.0066)
        let colors = [UIColor(red: 1, green: 0.655, blue: 0.541, alpha: 1).cgColor, UIColor(red: 1, green: 0.659, blue: 0.545, alpha: 0.98).cgColor, UIColor(red: 1, green: 0.675, blue: 0.557, alpha: 0.94).cgColor, UIColor(red: 1, green: 0.694, blue: 0.576, alpha: 0.86).cgColor, UIColor(red: 0.996, green: 0.725, blue: 0.608, alpha: 0.75).cgColor, UIColor(red: 0.996, green: 0.769, blue: 0.643, alpha: 0.61).cgColor, UIColor(red: 0.992, green: 0.816, blue: 0.686, alpha: 0.44).cgColor, UIColor(red: 0.992, green: 0.875, blue: 0.741, alpha: 0.24).cgColor, UIColor(red: 0.988, green: 0.941, blue: 0.8, alpha: 0.01).cgColor, UIColor(red: 0.988, green: 0.945, blue: 0.804, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.13), NSNumber(value: 0.25), NSNumber(value: 0.38), NSNumber(value: 0.5), NSNumber(value: 0.63), NSNumber(value: 0.75), NSNumber(value: 0.87), NSNumber(value: 0.99), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_4.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector5() {
        vector_5 = ShapeView(frame: CGRect(x: 15.69, y: 69.78, width: 38.95, height: 33))
        vector_5.backgroundColor = UIColor.clear
        vector_5.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_5.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_5.layer.borderColor = UIColor.clear.cgColor
        vector_5.layer.name = "vector_5"
        vector_5.layer.shadowColor = UIColor.clear.cgColor
        vector_5.layer.shadowOpacity = 1
        vector_5.layer.position = CGPoint(x: 15.69, y: 69.78)
        vector_5.layer.bounds = CGRect(x: 0, y: 0, width: 38.95, height: 33)
        vector_5.layer.masksToBounds = false
        vector_5.shapeLayer.name = "vector_5.shapeLayer"
        vector_5.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_5.shapeLayer.fillColor = nil
        vector_5.shapeLayer.miterLimit = 4
        vector_5.shapeLayer.lineDashPattern = []
        vector_5.shapeLayer.lineDashPhase = 0
        vector_5.shapeLayer.lineWidth = 1
        vector_5.shapeLayer.path = CGPathCreateWithSVGString("M38.673,19.806c-1.809,-8.938,-12.082,-17.649,-22.913,-19.462 -8.176,-1.366,-13.984,1.434,-15.76,6.797l2.942,10.962c1.247,2.431,2.929,4.615,4.963,6.442 10.146,9.04,17.375,8.433,17.375,8.433 9.174,0.422,15.041,-5.076,13.393,-13.172l0,0zM38.673,19.806")!

        let startPoint = CGPoint(x: 0.499, y: 0.498)
        let endPoint = CGPoint(x: 0.801602, y: 1.05941)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.76).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.53).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.34).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.19).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.09).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.02).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.16), NSNumber(value: 0.32), NSNumber(value: 0.49), NSNumber(value: 0.64), NSNumber(value: 0.78), NSNumber(value: 0.9), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_5.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector6() {
        vector_6 = ShapeView(frame: CGRect(x: 63.83, y: 69.78, width: 38.41, height: 33))
        vector_6.backgroundColor = UIColor.clear
        vector_6.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_6.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_6.layer.borderColor = UIColor.clear.cgColor
        vector_6.layer.name = "vector_6"
        vector_6.layer.shadowColor = UIColor.clear.cgColor
        vector_6.layer.shadowOpacity = 1
        vector_6.layer.position = CGPoint(x: 63.83, y: 69.78)
        vector_6.layer.bounds = CGRect(x: 0, y: 0, width: 38.41, height: 33)
        vector_6.layer.masksToBounds = false
        vector_6.shapeLayer.name = "vector_6.shapeLayer"
        vector_6.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_6.shapeLayer.fillColor = nil
        vector_6.shapeLayer.miterLimit = 4
        vector_6.shapeLayer.lineDashPattern = []
        vector_6.shapeLayer.lineDashPhase = 0
        vector_6.shapeLayer.lineWidth = 1
        vector_6.shapeLayer.path = CGPathCreateWithSVGString("M0.274,19.806c1.776,-8.938,11.906,-17.649,22.595,-19.462 8.063,-1.366,13.791,1.434,15.541,6.797l-2.902,10.962c-1.229,2.431,-2.888,4.615,-4.894,6.442 -10.005,9.04,-17.134,8.433,-17.134,8.433 -9.055,0.422,-14.833,-5.076,-13.207,-13.172l0,0zM0.274,19.806")!

        let startPoint = CGPoint(x: -262.749, y: 201.481)
        let endPoint = CGPoint(x: -250.91, y: 227.33)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.76).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.53).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.34).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.19).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.09).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.02).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.16), NSNumber(value: 0.32), NSNumber(value: 0.49), NSNumber(value: 0.64), NSNumber(value: 0.78), NSNumber(value: 0.9), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_6.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector7() {
        vector_7 = ShapeView(frame: CGRect(x: 26.51, y: 83.31, width: 15.15, height: 5.41))
        vector_7.backgroundColor = UIColor.clear
        vector_7.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_7.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_7.layer.borderColor = UIColor.clear.cgColor
        vector_7.layer.name = "vector_7"
        vector_7.layer.shadowColor = UIColor.clear.cgColor
        vector_7.layer.shadowOpacity = 1
        vector_7.layer.position = CGPoint(x: 26.51, y: 83.31)
        vector_7.layer.bounds = CGRect(x: 0, y: 0, width: 15.15, height: 5.41)
        vector_7.layer.masksToBounds = false
        vector_7.shapeLayer.name = "vector_7.shapeLayer"
        vector_7.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_7.shapeLayer.fillColor = nil
        vector_7.shapeLayer.miterLimit = 4
        vector_7.shapeLayer.lineDashPattern = []
        vector_7.shapeLayer.lineDashPhase = 0
        vector_7.shapeLayer.lineWidth = 1
        vector_7.shapeLayer.path = CGPathCreateWithSVGString("M8.381,0.59c4.16,0.933,7.168,2.644,6.726,3.808 -0.441,1.164,-4.184,1.352,-8.336,0.419 -4.152,-0.933,-7.176,-2.636,-6.726,-3.799 0.45,-1.164,4.176,-1.361,8.336,-0.428l0,0zM8.381,0.59")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1.59364, y: 0.873)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_7.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector8() {
        vector_8 = ShapeView(frame: CGRect(x: 70.87, y: 79.52, width: 26.51, height: 12.44))
        vector_8.backgroundColor = UIColor.clear
        vector_8.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_8.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_8.layer.borderColor = UIColor.clear.cgColor
        vector_8.layer.name = "vector_8"
        vector_8.layer.shadowColor = UIColor.clear.cgColor
        vector_8.layer.shadowOpacity = 1
        vector_8.layer.position = CGPoint(x: 70.87, y: 79.52)
        vector_8.layer.bounds = CGRect(x: 0, y: 0, width: 26.51, height: 12.44)
        vector_8.layer.masksToBounds = false
        vector_8.shapeLayer.name = "vector_8.shapeLayer"
        vector_8.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_8.shapeLayer.fillColor = nil
        vector_8.shapeLayer.miterLimit = 4
        vector_8.shapeLayer.lineDashPattern = []
        vector_8.shapeLayer.lineDashPhase = 0
        vector_8.shapeLayer.lineWidth = 1
        vector_8.shapeLayer.path = CGPathCreateWithSVGString("M11.842,1.366c-7.267,2.145,-12.543,6.058,-11.766,8.74 0.778,2.681,7.317,3.117,14.592,0.972 7.275,-2.145,12.543,-6.058,11.766,-8.74 -0.778,-2.681,-7.317,-3.126,-14.592,-0.972l0,0zM11.842,1.366")!

        let startPoint = CGPoint(x: 0.479, y: 0.477)
        let endPoint = CGPoint(x: 0.892476, y: 1.07624)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.78).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.5).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.29).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.13).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.04).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.17), NSNumber(value: 0.4), NSNumber(value: 0.6), NSNumber(value: 0.78), NSNumber(value: 0.92), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_8.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector9() {
        vector_9 = ShapeView(frame: CGRect(x: 21.1, y: 79.52, width: 26.51, height: 12.44))
        vector_9.backgroundColor = UIColor.clear
        vector_9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_9.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_9.layer.borderColor = UIColor.clear.cgColor
        vector_9.layer.name = "vector_9"
        vector_9.layer.shadowColor = UIColor.clear.cgColor
        vector_9.layer.shadowOpacity = 1
        vector_9.layer.position = CGPoint(x: 21.1, y: 79.52)
        vector_9.layer.bounds = CGRect(x: 0, y: 0, width: 26.51, height: 12.44)
        vector_9.layer.masksToBounds = false
        vector_9.shapeLayer.name = "vector_9.shapeLayer"
        vector_9.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_9.shapeLayer.fillColor = nil
        vector_9.shapeLayer.miterLimit = 4
        vector_9.shapeLayer.lineDashPattern = []
        vector_9.shapeLayer.lineDashPhase = 0
        vector_9.shapeLayer.lineWidth = 1
        vector_9.shapeLayer.path = CGPathCreateWithSVGString("M14.665,1.366c7.277,2.145,12.547,6.058,11.769,8.74 -0.778,2.681,-7.31,3.117,-14.596,0.972 -7.285,-2.145,-12.547,-6.058,-11.76,-8.74 0.786,-2.681,7.31,-3.126,14.587,-0.972l0,0 0,0zM14.665,1.366")!

        let startPoint = CGPoint(x: 0.522, y: 0.493)
        let endPoint = CGPoint(x: 0.935106, y: 1.09257)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.73).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.47).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.27).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.12).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.03).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.21), NSNumber(value: 0.42), NSNumber(value: 0.61), NSNumber(value: 0.78), NSNumber(value: 0.91), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_9.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector10() {
        vector_10 = ShapeView(frame: CGRect(x: 31.38, y: 74.65, width: 10.28, height: 12.44))
        vector_10.backgroundColor = UIColor.clear
        vector_10.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_10.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_10.layer.borderColor = UIColor.clear.cgColor
        vector_10.layer.name = "vector_10"
        vector_10.layer.shadowColor = UIColor.clear.cgColor
        vector_10.layer.shadowOpacity = 1
        vector_10.layer.position = CGPoint(x: 31.38, y: 74.65)
        vector_10.layer.bounds = CGRect(x: 0, y: 0, width: 10.28, height: 12.44)
        vector_10.layer.masksToBounds = false
        vector_10.shapeLayer.name = "vector_10.shapeLayer"
        vector_10.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_10.shapeLayer.fillColor = UIColor(red: 0, green: 0.149, blue: 0.247, alpha: 1).cgColor
        vector_10.shapeLayer.miterLimit = 4
        vector_10.shapeLayer.lineDashPattern = []
        vector_10.shapeLayer.lineDashPhase = 0
        vector_10.shapeLayer.lineWidth = 1
        vector_10.shapeLayer.path = CGPathCreateWithSVGString("M5.14,12.44c2.839,0,5.14,-2.785,5.14,-6.22 0,-3.435,-2.301,-6.22,-5.14,-6.22 -2.839,0,-5.14,2.785,-5.14,6.22 0,3.435,2.301,6.22,5.14,6.22l0,0zM5.14,12.44")!


    }

    private func createVector11() {
        vector_11 = ShapeView(frame: CGRect(x: 76.82, y: 74.65, width: 10.28, height: 12.44))
        vector_11.backgroundColor = UIColor.clear
        vector_11.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_11.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_11.layer.borderColor = UIColor.clear.cgColor
        vector_11.layer.name = "vector_11"
        vector_11.layer.shadowColor = UIColor.clear.cgColor
        vector_11.layer.shadowOpacity = 1
        vector_11.layer.position = CGPoint(x: 76.82, y: 74.65)
        vector_11.layer.bounds = CGRect(x: 0, y: 0, width: 10.28, height: 12.44)
        vector_11.layer.masksToBounds = false
        vector_11.shapeLayer.name = "vector_11.shapeLayer"
        vector_11.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_11.shapeLayer.fillColor = UIColor(red: 0, green: 0.149, blue: 0.247, alpha: 1).cgColor
        vector_11.shapeLayer.miterLimit = 4
        vector_11.shapeLayer.lineDashPattern = []
        vector_11.shapeLayer.lineDashPhase = 0
        vector_11.shapeLayer.lineWidth = 1
        vector_11.shapeLayer.path = CGPathCreateWithSVGString("M5.14,12.44c2.839,0,5.14,-2.785,5.14,-6.22 0,-3.435,-2.301,-6.22,-5.14,-6.22 -2.839,0,-5.14,2.785,-5.14,6.22 0,3.435,2.301,6.22,5.14,6.22l0,0zM5.14,12.44")!


    }

    private func createVector12() {
        vector_12 = ShapeView(frame: CGRect(x: 84.39, y: 82.23, width: 1.62, height: 1.62))
        vector_12.backgroundColor = UIColor.clear
        vector_12.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_12.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_12.layer.borderColor = UIColor.clear.cgColor
        vector_12.layer.name = "vector_12"
        vector_12.layer.shadowColor = UIColor.clear.cgColor
        vector_12.layer.shadowOpacity = 1
        vector_12.layer.position = CGPoint(x: 84.39, y: 82.23)
        vector_12.layer.bounds = CGRect(x: 0, y: 0, width: 1.62, height: 1.62)
        vector_12.layer.masksToBounds = false
        vector_12.shapeLayer.name = "vector_12.shapeLayer"
        vector_12.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_12.shapeLayer.fillColor = UIColor.white.cgColor
        vector_12.shapeLayer.miterLimit = 4
        vector_12.shapeLayer.lineDashPattern = []
        vector_12.shapeLayer.lineDashPhase = 0
        vector_12.shapeLayer.lineWidth = 1
        vector_12.shapeLayer.path = CGPathCreateWithSVGString("M1.114,0.059c0.196,0.079,0.353,0.232,0.438,0.426 0.085,0.194,0.09,0.413,0.016,0.611 -0.057,0.151,-0.157,0.281,-0.289,0.374 -0.131,0.093,-0.287,0.145,-0.448,0.149 -0.161,0.004,-0.32,-0.04,-0.455,-0.126 -0.136,-0.086,-0.243,-0.211,-0.307,-0.359 -0.065,-0.148,-0.084,-0.311,-0.055,-0.469 0.029,-0.158,0.104,-0.305,0.216,-0.42 0.112,-0.115,0.256,-0.195,0.414,-0.228 0.158,-0.033,0.321,-0.018,0.471,0.042l0,0 0,0zM1.114,0.059")!


    }

    private func createVectorstroke() {
        vectorstroke = ShapeView(frame: CGRect(x: 82.77, y: 75.73, width: 3.79, height: 5.95))
        vectorstroke.backgroundColor = UIColor.clear
        vectorstroke.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke.layer.borderColor = UIColor.clear.cgColor
        vectorstroke.layer.name = "vectorstroke"
        vectorstroke.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke.layer.shadowOpacity = 1
        vectorstroke.layer.position = CGPoint(x: 82.77, y: 75.73)
        vectorstroke.layer.bounds = CGRect(x: 0, y: 0, width: 3.79, height: 5.95)
        vectorstroke.layer.masksToBounds = false
        vectorstroke.shapeLayer.name = "vectorstroke.shapeLayer"
        vectorstroke.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke.shapeLayer.fillColor = UIColor.white.cgColor
        vectorstroke.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vectorstroke.shapeLayer.lineDashPattern = []
        vectorstroke.shapeLayer.lineDashPhase = 0
        vectorstroke.shapeLayer.lineWidth = 2
        vectorstroke.shapeLayer.path = CGPathCreateWithSVGString("M0.197,0.386c0.318,-0.434,0.909,-0.514,1.32,-0.178 0.685,0.56,1.244,1.274,1.637,2.09 0.393,0.816,0.61,1.713,0.635,2.628 0.015,0.549,-0.393,1.007,-0.913,1.024 -0.52,0.016,-0.953,-0.416,-0.968,-0.965 -0.017,-0.621,-0.165,-1.23,-0.431,-1.784 -0.267,-0.554,-0.646,-1.039,-1.112,-1.419 -0.411,-0.336,-0.486,-0.961,-0.168,-1.395l0,0zM0.197,0.386")!


    }

    private func createVector13() {
        vector_13 = ShapeView(frame: CGRect(x: 26.51, y: 83.31, width: 15.15, height: 5.41))
        vector_13.backgroundColor = UIColor.clear
        vector_13.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_13.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_13.layer.borderColor = UIColor.clear.cgColor
        vector_13.layer.name = "vector_13"
        vector_13.layer.shadowColor = UIColor.clear.cgColor
        vector_13.layer.shadowOpacity = 1
        vector_13.layer.position = CGPoint(x: 26.51, y: 83.31)
        vector_13.layer.bounds = CGRect(x: 0, y: 0, width: 15.15, height: 5.41)
        vector_13.layer.masksToBounds = false
        vector_13.shapeLayer.name = "vector_13.shapeLayer"
        vector_13.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_13.shapeLayer.fillColor = nil
        vector_13.shapeLayer.miterLimit = 4
        vector_13.shapeLayer.lineDashPattern = []
        vector_13.shapeLayer.lineDashPhase = 0
        vector_13.shapeLayer.lineWidth = 1
        vector_13.shapeLayer.path = CGPathCreateWithSVGString("M8.381,0.59c4.16,0.933,7.168,2.644,6.726,3.808 -0.441,1.164,-4.184,1.352,-8.336,0.419 -4.152,-0.933,-7.176,-2.636,-6.726,-3.799 0.45,-1.164,4.176,-1.361,8.336,-0.428l0,0zM8.381,0.59")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1.59364, y: 0.873)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_13.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector14() {
        vector_14 = ShapeView(frame: CGRect(x: 38.95, y: 82.23, width: 1.62, height: 1.62))
        vector_14.backgroundColor = UIColor.clear
        vector_14.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_14.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_14.layer.borderColor = UIColor.clear.cgColor
        vector_14.layer.name = "vector_14"
        vector_14.layer.shadowColor = UIColor.clear.cgColor
        vector_14.layer.shadowOpacity = 1
        vector_14.layer.position = CGPoint(x: 38.95, y: 82.23)
        vector_14.layer.bounds = CGRect(x: 0, y: 0, width: 1.62, height: 1.62)
        vector_14.layer.masksToBounds = false
        vector_14.shapeLayer.name = "vector_14.shapeLayer"
        vector_14.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_14.shapeLayer.fillColor = UIColor.white.cgColor
        vector_14.shapeLayer.miterLimit = 4
        vector_14.shapeLayer.lineDashPattern = []
        vector_14.shapeLayer.lineDashPhase = 0
        vector_14.shapeLayer.lineWidth = 1
        vector_14.shapeLayer.path = CGPathCreateWithSVGString("M1.086,0.049c0.152,0.055,0.283,0.154,0.378,0.284 0.095,0.13,0.149,0.286,0.155,0.447 0.006,0.161,-0.036,0.32,-0.121,0.457 -0.085,0.137,-0.209,0.245,-0.356,0.311 -0.147,0.066,-0.311,0.087,-0.47,0.059 -0.159,-0.027,-0.306,-0.102,-0.422,-0.213 -0.116,-0.112,-0.197,-0.255,-0.231,-0.413 -0.034,-0.158,-0.021,-0.322,0.039,-0.472 0.078,-0.196,0.229,-0.353,0.421,-0.439 0.192,-0.086,0.41,-0.094,0.608,-0.022l0,0 0,0zM1.086,0.049")!


    }

    private func createVector15() {
        vector_15 = ShapeView(frame: CGRect(x: 76.28, y: 83.31, width: 15.69, height: 5.41))
        vector_15.backgroundColor = UIColor.clear
        vector_15.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_15.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_15.layer.borderColor = UIColor.clear.cgColor
        vector_15.layer.name = "vector_15"
        vector_15.layer.shadowColor = UIColor.clear.cgColor
        vector_15.layer.shadowOpacity = 1
        vector_15.layer.position = CGPoint(x: 76.28, y: 83.31)
        vector_15.layer.bounds = CGRect(x: 0, y: 0, width: 15.69, height: 5.41)
        vector_15.layer.masksToBounds = false
        vector_15.shapeLayer.name = "vector_15.shapeLayer"
        vector_15.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_15.shapeLayer.fillColor = nil
        vector_15.shapeLayer.miterLimit = 4
        vector_15.shapeLayer.lineDashPattern = []
        vector_15.shapeLayer.lineDashPhase = 0
        vector_15.shapeLayer.lineWidth = 1
        vector_15.shapeLayer.path = CGPathCreateWithSVGString("M7.007,0.59c-4.302,0.933,-7.426,2.644,-6.961,3.808 0.466,1.164,4.327,1.352,8.637,0.419 4.31,-0.933,7.426,-2.636,6.961,-3.799 -0.466,-1.164,-4.327,-1.361,-8.637,-0.428l0,0zM7.007,0.59")!

        let startPoint = CGPoint(x: 176.2, y: 153.3)
        let endPoint = CGPoint(x: 183.12, y: 160.22)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_15.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector16() {
        vector_16 = ShapeView(frame: CGRect(x: 51.93, y: 93.04, width: 14.06, height: 10.28))
        vector_16.backgroundColor = UIColor.clear
        vector_16.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_16.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_16.layer.borderColor = UIColor.clear.cgColor
        vector_16.layer.name = "vector_16"
        vector_16.layer.shadowColor = UIColor.clear.cgColor
        vector_16.layer.shadowOpacity = 1
        vector_16.layer.position = CGPoint(x: 51.93, y: 93.04)
        vector_16.layer.bounds = CGRect(x: 0, y: 0, width: 14.06, height: 10.28)
        vector_16.layer.masksToBounds = false
        vector_16.shapeLayer.name = "vector_16.shapeLayer"
        vector_16.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_16.shapeLayer.fillColor = nil
        vector_16.shapeLayer.miterLimit = 4
        vector_16.shapeLayer.lineDashPattern = []
        vector_16.shapeLayer.lineDashPhase = 0
        vector_16.shapeLayer.lineWidth = 1
        vector_16.shapeLayer.path = CGPathCreateWithSVGString("M0.059,0l6.964,0c0,0,5.909,1.614,6.972,0 0.47,4.99,-1.574,10.28,-6.989,10.28 -4.599,0,-7.458,-4.159,-6.947,-9.981l0,-0.299 0,0zM0.059,0")!

        let startPoint = CGPoint(x: 0.51, y: 0.259)
        let endPoint = CGPoint(x: 1.20195, y: 0.806)
        let colors = [UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 1).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0.65).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0.19).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.33), NSNumber(value: 0.79), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_16.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector17() {
        vector_17 = ShapeView(frame: CGRect(x: 53.55, y: 88.18, width: 10.82, height: 10.82))
        vector_17.backgroundColor = UIColor.clear
        vector_17.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_17.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_17.layer.borderColor = UIColor.clear.cgColor
        vector_17.layer.name = "vector_17"
        vector_17.layer.shadowColor = UIColor.clear.cgColor
        vector_17.layer.shadowOpacity = 1
        vector_17.layer.position = CGPoint(x: 53.55, y: 88.18)
        vector_17.layer.bounds = CGRect(x: 0, y: 0, width: 10.82, height: 10.82)
        vector_17.layer.masksToBounds = false
        vector_17.shapeLayer.name = "vector_17.shapeLayer"
        vector_17.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_17.shapeLayer.fillColor = UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor
        vector_17.shapeLayer.miterLimit = 4
        vector_17.shapeLayer.lineDashPattern = []
        vector_17.shapeLayer.lineDashPhase = 0
        vector_17.shapeLayer.lineWidth = 1
        vector_17.shapeLayer.path = CGPathCreateWithSVGString("M0,0l10.82,0c0,0,-0.732,10.82,-5.402,10.82 -4.669,0,-5.418,-10.82,-5.418,-10.82l0,0zM0,0")!


    }

    private func createVector18() {
        vector_18 = ShapeView(frame: CGRect(x: 53.55, y: 88.18, width: 10.28, height: 9.74))
        vector_18.backgroundColor = UIColor.clear
        vector_18.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_18.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_18.layer.borderColor = UIColor.clear.cgColor
        vector_18.layer.name = "vector_18"
        vector_18.layer.shadowColor = UIColor.clear.cgColor
        vector_18.layer.shadowOpacity = 1
        vector_18.layer.position = CGPoint(x: 53.55, y: 88.18)
        vector_18.layer.bounds = CGRect(x: 0, y: 0, width: 10.28, height: 9.74)
        vector_18.layer.masksToBounds = false
        vector_18.shapeLayer.name = "vector_18.shapeLayer"
        vector_18.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_18.shapeLayer.fillColor = nil
        vector_18.shapeLayer.miterLimit = 4
        vector_18.shapeLayer.lineDashPattern = []
        vector_18.shapeLayer.lineDashPhase = 0
        vector_18.shapeLayer.lineWidth = 1
        vector_18.shapeLayer.path = CGPathCreateWithSVGString("M0,0.024l10.276,0.114c0,0,0.313,9.602,-5.011,9.602 -5.323,0,-5.266,-8.766,-5.266,-9.74l0,0.024 0,0zM0,0.024")!

        let startPoint = CGPoint(x: 0.5, y: 0.089)
        let endPoint = CGPoint(x: 0.501, y: 0.94)
        let colors = [UIColor(red: 0.91, green: 0.106, blue: 0, alpha: 1).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_18.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector19() {
        vector_19 = ShapeView(frame: CGRect(x: 52.47, y: 88.18, width: 12.98, height: 7.03))
        vector_19.backgroundColor = UIColor.clear
        vector_19.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_19.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_19.layer.borderColor = UIColor.clear.cgColor
        vector_19.layer.name = "vector_19"
        vector_19.layer.shadowColor = UIColor.clear.cgColor
        vector_19.layer.shadowOpacity = 1
        vector_19.layer.position = CGPoint(x: 52.47, y: 88.18)
        vector_19.layer.bounds = CGRect(x: 0, y: 0, width: 12.98, height: 7.03)
        vector_19.layer.masksToBounds = false
        vector_19.shapeLayer.name = "vector_19.shapeLayer"
        vector_19.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_19.shapeLayer.fillColor = nil
        vector_19.shapeLayer.miterLimit = 4
        vector_19.shapeLayer.lineDashPattern = []
        vector_19.shapeLayer.lineDashPhase = 0
        vector_19.shapeLayer.lineWidth = 1
        vector_19.shapeLayer.path = CGPathCreateWithSVGString("M2.12,6.584c0.825,-1.218,2.244,-3.407,4.217,-3.407 2.302,0,3.936,2.351,4.72,3.807 0.173,0.307,2.327,-1.005,1.857,-1.874 -1.263,-2.334,-3.474,-5.111,-6.601,-5.111 -2.649,0,-4.637,2.555,-5.908,4.429 -1.452,2.257,1.461,2.589,1.716,2.155l0,0zM2.12,6.584")!

        let startPoint = CGPoint(x: 0.505, y: 0.017)
        let endPoint = CGPoint(x: 0.504, y: 0.265)
        let colors = [UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 1).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.96).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.71).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.49).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.31).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.18).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.08).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.02).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.02), NSNumber(value: 0.13), NSNumber(value: 0.25), NSNumber(value: 0.36), NSNumber(value: 0.48), NSNumber(value: 0.59), NSNumber(value: 0.71), NSNumber(value: 0.83)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_19.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector20() {
        vector_20 = ShapeView(frame: CGRect(x: 57.88, y: 3.79, width: 7.57, height: 41.65))
        vector_20.backgroundColor = UIColor.clear
        vector_20.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_20.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_20.layer.borderColor = UIColor.clear.cgColor
        vector_20.layer.name = "vector_20"
        vector_20.layer.shadowColor = UIColor.clear.cgColor
        vector_20.layer.shadowOpacity = 1
        vector_20.layer.position = CGPoint(x: 57.88, y: 3.79)
        vector_20.layer.bounds = CGRect(x: 0, y: 0, width: 7.57, height: 41.65)
        vector_20.layer.masksToBounds = false
        vector_20.shapeLayer.name = "vector_20.shapeLayer"
        vector_20.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_20.shapeLayer.fillColor = nil
        vector_20.shapeLayer.miterLimit = 4
        vector_20.shapeLayer.lineDashPattern = []
        vector_20.shapeLayer.lineDashPhase = 0
        vector_20.shapeLayer.lineWidth = 1
        vector_20.shapeLayer.path = CGPathCreateWithSVGString("M0,40.894c0.352,-16.742,1.57,-33.616,2.191,-39.424 0.098,-0.516,0.277,-1.013,0.531,-1.471 1.006,0.615,1.831,3.016,2.829,2.31 -0.924,5.168,0.875,19.026,2.019,38.443 0,0,-1.218,1.039,-4.414,0.881 -2.608,-0.158,-3.156,-0.739,-3.156,-0.739l0,0zM0,40.894")!

        let startPoint = CGPoint(x: 0.5, y: 0.967)
        let endPoint = CGPoint(x: 0.582, y: 0.501)
        let colors = [UIColor(red: 0.325, green: 0.651, blue: 0.431, alpha: 1).cgColor, UIColor(red: 0.365, green: 0.702, blue: 0.471, alpha: 1).cgColor, UIColor(red: 0.467, green: 0.839, blue: 0.576, alpha: 1).cgColor, UIColor(red: 0.471, green: 0.843, blue: 0.58, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.31), NSNumber(value: 0.9), NSNumber(value: 0.92)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_20.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector21() {
        vector_21 = ShapeView(frame: CGRect(x: 49.77, y: 24.34, width: 8.11, height: 20.56))
        vector_21.backgroundColor = UIColor.clear
        vector_21.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_21.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_21.layer.borderColor = UIColor.clear.cgColor
        vector_21.layer.name = "vector_21"
        vector_21.layer.shadowColor = UIColor.clear.cgColor
        vector_21.layer.shadowOpacity = 1
        vector_21.layer.position = CGPoint(x: 49.77, y: 24.34)
        vector_21.layer.bounds = CGRect(x: 0, y: 0, width: 8.11, height: 20.56)
        vector_21.layer.masksToBounds = false
        vector_21.shapeLayer.name = "vector_21.shapeLayer"
        vector_21.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_21.shapeLayer.fillColor = nil
        vector_21.shapeLayer.miterLimit = 4
        vector_21.shapeLayer.lineDashPattern = []
        vector_21.shapeLayer.lineDashPhase = 0
        vector_21.shapeLayer.lineWidth = 1
        vector_21.shapeLayer.path = CGPathCreateWithSVGString("M8.11,20.162c0,0,-0.284,0.379,-2.659,0.379 -0.969,0.064,-1.942,-0.042,-2.876,-0.312 -0.217,-9.664,-1.062,-20.239,-2.575,-20.147 1.448,-0.18,2.917,-0.068,4.323,0.329 0,0,2.374,11.503,3.787,19.75")!

        let startPoint = CGPoint(x: 0.497, y: 0.922)
        let endPoint = CGPoint(x: 0.502, y: 0.196)
        let colors = [UIColor(red: 0.325, green: 0.651, blue: 0.431, alpha: 1).cgColor, UIColor(red: 0.369, green: 0.71, blue: 0.475, alpha: 1).cgColor, UIColor(red: 0.471, green: 0.843, blue: 0.58, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.36), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_21.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector22() {
        vector_22 = ShapeView(frame: CGRect(x: 0, y: 22.72, width: 54.1, height: 48.15))
        vector_22.backgroundColor = UIColor.clear
        vector_22.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_22.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_22.layer.borderColor = UIColor.clear.cgColor
        vector_22.layer.name = "vector_22"
        vector_22.layer.shadowColor = UIColor.clear.cgColor
        vector_22.layer.shadowOpacity = 1
        vector_22.layer.position = CGPoint(x: 0, y: 22.72)
        vector_22.layer.bounds = CGRect(x: 0, y: 0, width: 54.1, height: 48.15)
        vector_22.layer.masksToBounds = false
        vector_22.shapeLayer.name = "vector_22.shapeLayer"
        vector_22.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_22.shapeLayer.fillColor = nil
        vector_22.shapeLayer.miterLimit = 4
        vector_22.shapeLayer.lineDashPattern = []
        vector_22.shapeLayer.lineDashPhase = 0
        vector_22.shapeLayer.lineWidth = 1
        vector_22.shapeLayer.path = CGPathCreateWithSVGString("M0,48.133c0,0,14.58,-1.493,20.949,-20.137 7.818,-22.856,26.479,-24.383,32.872,-25.467 3.905,-0.667,-34.297,-9.651,-44.763,10.844 -6.268,12.254,-4.399,29.463,-9.058,34.776l0,-0.017 0,0zM0,48.133")!

        let startPoint = CGPoint(x: -0.017, y: 0.984)
        let endPoint = CGPoint(x: 0.796, y: -0.137)
        let colors = [UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor, UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_22.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector23() {
        vector_23 = ShapeView(frame: CGRect(x: 60.05, y: 0, width: 67.08, height: 55.72))
        vector_23.backgroundColor = UIColor.clear
        vector_23.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_23.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_23.layer.borderColor = UIColor.clear.cgColor
        vector_23.layer.name = "vector_23"
        vector_23.layer.shadowColor = UIColor.clear.cgColor
        vector_23.layer.shadowOpacity = 1
        vector_23.layer.position = CGPoint(x: 60.05, y: 0)
        vector_23.layer.bounds = CGRect(x: 0, y: 0, width: 67.08, height: 55.72)
        vector_23.layer.masksToBounds = false
        vector_23.shapeLayer.name = "vector_23.shapeLayer"
        vector_23.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_23.shapeLayer.fillColor = nil
        vector_23.shapeLayer.miterLimit = 4
        vector_23.shapeLayer.lineDashPattern = []
        vector_23.shapeLayer.lineDashPhase = 0
        vector_23.shapeLayer.lineWidth = 1
        vector_23.shapeLayer.path = CGPathCreateWithSVGString("M67.014,55.686c0,0,-5.137,-24.486,-29.611,-29.764 -24.768,-5.337,-36.06,-13.972,-37.388,-21.658 -0.715,-4.112,25.433,-8.937,46.561,5.035 14.545,9.6,21.254,30.905,20.439,46.421l0,-0.034 0,0zM67.014,55.686")!

        let startPoint = CGPoint(x: 128.443, y: 114.493)
        let endPoint = CGPoint(x: 216.95, y: 135.82)
        let colors = [UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor, UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_23.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVectorstroke1() {
        vectorstroke_1 = ShapeView(frame: CGRect(x: 36.79, y: 75.73, width: 3.79, height: 5.95))
        vectorstroke_1.backgroundColor = UIColor.clear
        vectorstroke_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke_1.layer.borderColor = UIColor.clear.cgColor
        vectorstroke_1.layer.name = "vectorstroke_1"
        vectorstroke_1.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke_1.layer.shadowOpacity = 1
        vectorstroke_1.layer.position = CGPoint(x: 36.79, y: 75.73)
        vectorstroke_1.layer.bounds = CGRect(x: 0, y: 0, width: 3.79, height: 5.95)
        vectorstroke_1.layer.masksToBounds = false
        vectorstroke_1.shapeLayer.name = "vectorstroke_1.shapeLayer"
        vectorstroke_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke_1.shapeLayer.fillColor = UIColor.white.cgColor
        vectorstroke_1.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vectorstroke_1.shapeLayer.lineDashPattern = []
        vectorstroke_1.shapeLayer.lineDashPhase = 0
        vectorstroke_1.shapeLayer.lineWidth = 2
        vectorstroke_1.shapeLayer.path = CGPathCreateWithSVGString("M0.197,0.386c0.318,-0.434,0.909,-0.514,1.32,-0.178 0.685,0.56,1.244,1.274,1.637,2.09 0.393,0.816,0.61,1.713,0.635,2.628 0.015,0.549,-0.393,1.007,-0.913,1.024 -0.52,0.016,-0.953,-0.416,-0.968,-0.965 -0.017,-0.621,-0.165,-1.23,-0.431,-1.784 -0.267,-0.554,-0.646,-1.039,-1.112,-1.419 -0.411,-0.336,-0.486,-0.961,-0.168,-1.395l0,0zM0.197,0.386")!


    }

    private func createVector24() {
        vector_24 = ShapeView(frame: CGRect(x: 0, y: 24.88, width: 54.1, height: 46.52))
        vector_24.backgroundColor = UIColor.clear
        vector_24.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_24.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_24.layer.borderColor = UIColor.clear.cgColor
        vector_24.layer.name = "vector_24"
        vector_24.layer.shadowColor = UIColor.clear.cgColor
        vector_24.layer.shadowOpacity = 1
        vector_24.layer.position = CGPoint(x: 0, y: 24.88)
        vector_24.layer.bounds = CGRect(x: 0, y: 0, width: 54.1, height: 46.52)
        vector_24.layer.masksToBounds = false
        vector_24.shapeLayer.name = "vector_24.shapeLayer"
        vector_24.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_24.shapeLayer.fillColor = nil
        vector_24.shapeLayer.miterLimit = 4
        vector_24.shapeLayer.lineDashPattern = []
        vector_24.shapeLayer.lineDashPhase = 0
        vector_24.shapeLayer.lineWidth = 1
        vector_24.shapeLayer.path = CGPathCreateWithSVGString("M0,46.225c0,0,26.531,3.346,35.796,-12.49 8.561,-14.624,5.504,-23.801,18.304,-33.355 0,-0.736,-26.112,-2.426,-34.112,17.953 -5.864,14.891,-7.347,21.283,-19.988,27.892l0,0 0,0zM0,46.225")!

        let startPoint = CGPoint(x: 0.12, y: 1.107)
        let endPoint = CGPoint(x: 0.933, y: -0.056)
        let colors = [UIColor(red: 0.957, green: 0.792, blue: 0.216, alpha: 0.2).cgColor, UIColor(red: 0.957, green: 0.792, blue: 0.216, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_24.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector25() {
        vector_25 = ShapeView(frame: CGRect(x: 60.05, y: 3.79, width: 67.08, height: 51.93))
        vector_25.backgroundColor = UIColor.clear
        vector_25.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_25.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_25.layer.borderColor = UIColor.clear.cgColor
        vector_25.layer.name = "vector_25"
        vector_25.layer.shadowColor = UIColor.clear.cgColor
        vector_25.layer.shadowOpacity = 1
        vector_25.layer.position = CGPoint(x: 60.05, y: 3.79)
        vector_25.layer.bounds = CGRect(x: 0, y: 0, width: 67.08, height: 51.93)
        vector_25.layer.masksToBounds = false
        vector_25.shapeLayer.name = "vector_25.shapeLayer"
        vector_25.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_25.shapeLayer.fillColor = nil
        vector_25.shapeLayer.miterLimit = 4
        vector_25.shapeLayer.lineDashPattern = []
        vector_25.shapeLayer.lineDashPhase = 0
        vector_25.shapeLayer.lineWidth = 1
        vector_25.shapeLayer.path = CGPathCreateWithSVGString("M0,1.527c0,0,1.355,29.327,28.87,36.623 25.724,6.819,35.588,4.468,38.198,13.772 0.159,0.561,-0.837,-31.025,-28.092,-39.861 -17.919,-5.857,-32.317,-2.351,-38.482,-12.057 0,0,0,-0.084,-0.201,0.46 -0.129,0.345,-0.227,0.701,-0.293,1.063l0,0 0,0zM0,1.527")!

        let startPoint = CGPoint(x: 0.973, y: 0.46)
        let endPoint = CGPoint(x: 0.026, y: 0.541)
        let colors = [UIColor(red: 1, green: 0.792, blue: 0, alpha: 0.6).cgColor, UIColor(red: 1, green: 0.792, blue: 0, alpha: 0.2).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_25.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVectorstroke2() {
        vectorstroke_2 = ShapeView(frame: CGRect(x: 51.39, y: 84.39, width: 15.15, height: 16.77))
        vectorstroke_2.backgroundColor = UIColor.clear
        vectorstroke_2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke_2.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke_2.layer.borderColor = UIColor.clear.cgColor
        vectorstroke_2.layer.name = "vectorstroke_2"
        vectorstroke_2.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke_2.layer.shadowOpacity = 1
        vectorstroke_2.layer.position = CGPoint(x: 51.39, y: 84.39)
        vectorstroke_2.layer.bounds = CGRect(x: 0, y: 0, width: 15.15, height: 16.77)
        vectorstroke_2.layer.masksToBounds = false
        vectorstroke_2.shapeLayer.name = "vectorstroke_2.shapeLayer"
        vectorstroke_2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke_2.shapeLayer.fillColor = nil
        vectorstroke_2.shapeLayer.lineDashPattern = []
        vectorstroke_2.shapeLayer.lineDashPhase = 0
        vectorstroke_2.shapeLayer.lineWidth = 4
        vectorstroke_2.shapeLayer.path = CGPathCreateWithSVGString("M7.575,4.014c-1.733,0,-3.572,1.7,-3.572,4.371 0,2.671,1.839,4.371,3.572,4.371 1.733,0,3.572,-1.7,3.572,-4.371 0,-2.671,-1.839,-4.371,-3.572,-4.371l0,0zM0,8.385c0,-4.374,3.152,-8.385,7.575,-8.385 4.423,0,7.575,4.011,7.575,8.385 0,4.374,-3.152,8.385,-7.575,8.385 -4.423,0,-7.575,-4.011,-7.575,-8.385l0,0zM0,8.385")!

        let startPoint = CGPoint(x: 107.861, y: 122.97)
        let endPoint = CGPoint(x: 114.724, y: 129.607)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vectorstroke_2.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVectorstroke3() {
        vectorstroke_3 = ShapeView(frame: CGRect(x: 56.8, y: 85.47, width: 7.03, height: 2.7))
        vectorstroke_3.backgroundColor = UIColor.clear
        vectorstroke_3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke_3.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke_3.layer.borderColor = UIColor.clear.cgColor
        vectorstroke_3.layer.name = "vectorstroke_3"
        vectorstroke_3.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke_3.layer.shadowOpacity = 1
        vectorstroke_3.layer.position = CGPoint(x: 56.8, y: 85.47)
        vectorstroke_3.layer.bounds = CGRect(x: 0, y: 0, width: 7.03, height: 2.7)
        vectorstroke_3.layer.masksToBounds = false
        vectorstroke_3.shapeLayer.name = "vectorstroke_3.shapeLayer"
        vectorstroke_3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke_3.shapeLayer.fillColor = UIColor.white.cgColor
        vectorstroke_3.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vectorstroke_3.shapeLayer.lineDashPattern = []
        vectorstroke_3.shapeLayer.lineDashPhase = 0
        vectorstroke_3.shapeLayer.lineWidth = 1
        vectorstroke_3.shapeLayer.path = CGPathCreateWithSVGString("M2.305,0l0,0c1.707,0.012,3.343,0.666,4.567,1.825 0.207,0.196,0.212,0.518,0.011,0.72 -0.201,0.202,-0.531,0.207,-0.738,0.011 -1.03,-0.976,-2.407,-1.526,-3.844,-1.537 -0.55,0.003,-1.097,0.085,-1.622,0.245 -0.275,0.084,-0.568,-0.066,-0.654,-0.334 -0.086,-0.268,0.067,-0.554,0.342,-0.638 0.626,-0.191,1.277,-0.289,1.932,-0.292l0.006,-0 0,0zM2.305,0")!


    }

    private func createGroup488() {
        group488 = UIView(frame: CGRect(x: 0, y: 0, width: 276.76, height: 560))
        group488.backgroundColor = UIColor.clear
        group488.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group488.layer.shadowOffset = CGSize(width: 0, height: 0)
        group488.layer.borderWidth = 1
        group488.layer.borderColor = UIColor.clear.cgColor
        group488.layer.name = "group488"
        group488.layer.shadowColor = UIColor.clear.cgColor
        group488.layer.shadowOpacity = 1
        group488.layer.position = CGPoint(x: 0, y: 0)
        group488.layer.bounds = CGRect(x: 0, y: 0, width: 276.76, height: 560)
        group488.layer.masksToBounds = false

    }

    private func createIphone12black() {
        iphone12black = UIView(frame: CGRect(x: 0, y: 0, width: 276.76, height: 560))
        iphone12black.backgroundColor = UIColor.clear
        iphone12black.layer.anchorPoint = CGPoint(x: 0, y: 0)
        iphone12black.layer.shadowOffset = CGSize(width: 0, height: 0)
        iphone12black.layer.borderWidth = 1
        iphone12black.layer.borderColor = UIColor.clear.cgColor
        iphone12black.layer.name = "iphone12black"
        iphone12black.layer.shadowColor = UIColor.clear.cgColor
        iphone12black.layer.shadowOpacity = 1
        iphone12black.layer.position = CGPoint(x: 0, y: 0)
        iphone12black.layer.bounds = CGRect(x: 0, y: 0, width: 276.76, height: 560)
        iphone12black.layer.masksToBounds = false

    }

    private func createBlack() {
        black = ShapeView(frame: CGRect(x: 0, y: 0, width: 276.76, height: 560))
        black.backgroundColor = UIColor.clear
        black.layer.anchorPoint = CGPoint(x: 0, y: 0)
        black.layer.shadowOffset = CGSize(width: 0, height: 0)
        black.layer.borderColor = UIColor.clear.cgColor
        black.layer.name = "black"
        black.layer.shadowColor = UIColor.clear.cgColor
        black.layer.shadowOpacity = 1
        black.layer.position = CGPoint(x: 0, y: 0)
        black.layer.bounds = CGRect(x: 0, y: 0, width: 276.76, height: 560)
        black.layer.masksToBounds = false
        black.shapeLayer.name = "black.shapeLayer"
        black.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        black.shapeLayer.fillColor = UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 1).cgColor
        black.shapeLayer.miterLimit = 4
        black.shapeLayer.lineDashPattern = []
        black.shapeLayer.lineDashPhase = 0
        black.shapeLayer.lineWidth = 1
        black.shapeLayer.path = CGPathCreateWithSVGString("M1.909,63.52c0,-22.234,0,-33.351,4.327,-41.844 3.806,-7.47,9.88,-13.543,17.35,-17.35 8.492,-4.327,19.61,-4.327,41.844,-4.327l145.9,0c22.235,0,33.353,0,41.845,4.327 7.47,3.806,13.543,9.88,17.35,17.35 4.327,8.492,4.327,19.609,4.327,41.844l0,80.393 1.145,0c0.421,0,0.763,0.342,0.763,0.763l0,64.894c0,0.422,-0.342,0.764,-0.763,0.764l-1.145,0 0,286.146c0,22.234,0,33.351,-4.327,41.843 -3.807,7.47,-9.88,13.544,-17.35,17.35 -8.492,4.327,-19.609,4.327,-41.845,4.327l-145.9,0c-22.235,0,-33.352,0,-41.844,-4.327 -7.47,-3.806,-13.544,-9.88,-17.35,-17.35 -4.327,-8.492,-4.327,-19.609,-4.327,-41.843l0,-272.785 -1.145,0c-0.422,0,-0.763,-0.342,-0.763,-0.764l0,-41.227c0,-0.422,0.342,-0.763,0.763,-0.763l1.145,0 0,-9.544 -1.145,0c-0.422,0,-0.763,-0.341,-0.763,-0.763l0,-41.227c0,-0.422,0.342,-0.764,0.763,-0.764l1.145,0 0,-17.941 -1.145,0c-0.422,0,-0.763,-0.342,-0.763,-0.763l0,-20.614c0,-0.422,0.342,-0.763,0.763,-0.763l1.145,0 0,-25.042 0,0zM1.909,63.52")!


    }

    private func createWhite() {
        white = ShapeView(frame: CGRect(x: 0, y: 0, width: 276.76, height: 560))
        white.backgroundColor = UIColor.clear
        white.layer.anchorPoint = CGPoint(x: 0, y: 0)
        white.alpha = 0
        white.layer.shadowOffset = CGSize(width: 0, height: 0)
        white.layer.borderColor = UIColor.clear.cgColor
        white.layer.name = "white"
        white.layer.shadowColor = UIColor.clear.cgColor
        white.layer.shadowOpacity = 1
        white.layer.position = CGPoint(x: 0, y: 0)
        white.layer.bounds = CGRect(x: 0, y: 0, width: 276.76, height: 560)
        white.layer.masksToBounds = false
        white.shapeLayer.name = "white.shapeLayer"
        white.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        white.shapeLayer.fillColor = UIColor(red: 0.929, green: 0.91, blue: 0.906, alpha: 1).cgColor
        white.shapeLayer.miterLimit = 4
        white.shapeLayer.lineDashPattern = []
        white.shapeLayer.lineDashPhase = 0
        white.shapeLayer.lineWidth = 1
        white.shapeLayer.path = CGPathCreateWithSVGString("M1.909,63.52c0,-22.234,0,-33.351,4.327,-41.844 3.806,-7.47,9.88,-13.543,17.35,-17.35 8.492,-4.327,19.61,-4.327,41.844,-4.327l145.9,0c22.235,0,33.353,0,41.845,4.327 7.47,3.806,13.543,9.88,17.35,17.35 4.327,8.492,4.327,19.609,4.327,41.844l0,80.393 1.145,0c0.421,0,0.763,0.342,0.763,0.763l0,64.894c0,0.422,-0.342,0.764,-0.763,0.764l-1.145,0 0,286.146c0,22.234,0,33.351,-4.327,41.843 -3.807,7.47,-9.88,13.544,-17.35,17.35 -8.492,4.327,-19.609,4.327,-41.845,4.327l-145.9,0c-22.235,0,-33.352,0,-41.844,-4.327 -7.47,-3.806,-13.544,-9.88,-17.35,-17.35 -4.327,-8.492,-4.327,-19.609,-4.327,-41.843l0,-272.785 -1.145,0c-0.422,0,-0.763,-0.342,-0.763,-0.764l0,-41.227c0,-0.422,0.342,-0.763,0.763,-0.763l1.145,0 0,-9.544 -1.145,0c-0.422,0,-0.763,-0.341,-0.763,-0.763l0,-41.227c0,-0.422,0.342,-0.764,0.763,-0.764l1.145,0 0,-17.941 -1.145,0c-0.422,0,-0.763,-0.342,-0.763,-0.763l0,-20.614c0,-0.422,0.342,-0.763,0.763,-0.763l1.145,0 0,-25.042 0,0zM1.909,63.52")!


    }

    private func createProductRed() {
        productRed = ShapeView(frame: CGRect(x: 0, y: 0, width: 276.76, height: 560))
        productRed.backgroundColor = UIColor.clear
        productRed.layer.anchorPoint = CGPoint(x: 0, y: 0)
        productRed.alpha = 0
        productRed.layer.shadowOffset = CGSize(width: 0, height: 0)
        productRed.layer.borderColor = UIColor.clear.cgColor
        productRed.layer.name = "productRed"
        productRed.layer.shadowColor = UIColor.clear.cgColor
        productRed.layer.shadowOpacity = 1
        productRed.layer.position = CGPoint(x: 0, y: 0)
        productRed.layer.bounds = CGRect(x: 0, y: 0, width: 276.76, height: 560)
        productRed.layer.masksToBounds = false
        productRed.shapeLayer.name = "productRed.shapeLayer"
        productRed.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        productRed.shapeLayer.fillColor = UIColor(red: 0.808, green: 0.067, blue: 0.072, alpha: 1).cgColor
        productRed.shapeLayer.miterLimit = 4
        productRed.shapeLayer.lineDashPattern = []
        productRed.shapeLayer.lineDashPhase = 0
        productRed.shapeLayer.lineWidth = 1
        productRed.shapeLayer.path = CGPathCreateWithSVGString("M1.909,63.52c0,-22.234,0,-33.351,4.327,-41.844 3.806,-7.47,9.88,-13.543,17.35,-17.35 8.492,-4.327,19.61,-4.327,41.844,-4.327l145.9,0c22.235,0,33.353,0,41.845,4.327 7.47,3.806,13.543,9.88,17.35,17.35 4.327,8.492,4.327,19.609,4.327,41.844l0,80.393 1.145,0c0.421,0,0.763,0.342,0.763,0.763l0,64.894c0,0.422,-0.342,0.764,-0.763,0.764l-1.145,0 0,286.146c0,22.234,0,33.351,-4.327,41.843 -3.807,7.47,-9.88,13.544,-17.35,17.35 -8.492,4.327,-19.609,4.327,-41.845,4.327l-145.9,0c-22.235,0,-33.352,0,-41.844,-4.327 -7.47,-3.806,-13.544,-9.88,-17.35,-17.35 -4.327,-8.492,-4.327,-19.609,-4.327,-41.843l0,-272.785 -1.145,0c-0.422,0,-0.763,-0.342,-0.763,-0.764l0,-41.227c0,-0.422,0.342,-0.763,0.763,-0.763l1.145,0 0,-9.544 -1.145,0c-0.422,0,-0.763,-0.341,-0.763,-0.763l0,-41.227c0,-0.422,0.342,-0.764,0.763,-0.764l1.145,0 0,-17.941 -1.145,0c-0.422,0,-0.763,-0.342,-0.763,-0.763l0,-20.614c0,-0.422,0.342,-0.763,0.763,-0.763l1.145,0 0,-25.042 0,0zM1.909,63.52")!


    }

    private func createGreen() {
        green = ShapeView(frame: CGRect(x: 0, y: 0, width: 276.76, height: 560))
        green.backgroundColor = UIColor.clear
        green.layer.anchorPoint = CGPoint(x: 0, y: 0)
        green.alpha = 0
        green.layer.shadowOffset = CGSize(width: 0, height: 0)
        green.layer.borderColor = UIColor.clear.cgColor
        green.layer.name = "green"
        green.layer.shadowColor = UIColor.clear.cgColor
        green.layer.shadowOpacity = 1
        green.layer.position = CGPoint(x: 0, y: 0)
        green.layer.bounds = CGRect(x: 0, y: 0, width: 276.76, height: 560)
        green.layer.masksToBounds = false
        green.shapeLayer.name = "green.shapeLayer"
        green.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        green.shapeLayer.fillColor = UIColor(red: 0.667, green: 0.816, blue: 0.631, alpha: 1).cgColor
        green.shapeLayer.miterLimit = 4
        green.shapeLayer.lineDashPattern = []
        green.shapeLayer.lineDashPhase = 0
        green.shapeLayer.lineWidth = 1
        green.shapeLayer.path = CGPathCreateWithSVGString("M1.909,63.52c0,-22.234,0,-33.351,4.327,-41.844 3.806,-7.47,9.88,-13.543,17.35,-17.35 8.492,-4.327,19.61,-4.327,41.844,-4.327l145.9,0c22.235,0,33.353,0,41.845,4.327 7.47,3.806,13.543,9.88,17.35,17.35 4.327,8.492,4.327,19.609,4.327,41.844l0,80.393 1.145,0c0.421,0,0.763,0.342,0.763,0.763l0,64.894c0,0.422,-0.342,0.764,-0.763,0.764l-1.145,0 0,286.146c0,22.234,0,33.351,-4.327,41.843 -3.807,7.47,-9.88,13.544,-17.35,17.35 -8.492,4.327,-19.609,4.327,-41.845,4.327l-145.9,0c-22.235,0,-33.352,0,-41.844,-4.327 -7.47,-3.806,-13.544,-9.88,-17.35,-17.35 -4.327,-8.492,-4.327,-19.609,-4.327,-41.843l0,-272.785 -1.145,0c-0.422,0,-0.763,-0.342,-0.763,-0.764l0,-41.227c0,-0.422,0.342,-0.763,0.763,-0.763l1.145,0 0,-9.544 -1.145,0c-0.422,0,-0.763,-0.341,-0.763,-0.763l0,-41.227c0,-0.422,0.342,-0.764,0.763,-0.764l1.145,0 0,-17.941 -1.145,0c-0.422,0,-0.763,-0.342,-0.763,-0.763l0,-20.614c0,-0.422,0.342,-0.763,0.763,-0.763l1.145,0 0,-25.042 0,0zM1.909,63.52")!


    }

    private func createBlue() {
        blue = ShapeView(frame: CGRect(x: 0, y: 0, width: 276.76, height: 560))
        blue.backgroundColor = UIColor.clear
        blue.layer.anchorPoint = CGPoint(x: 0, y: 0)
        blue.alpha = 0
        blue.layer.shadowOffset = CGSize(width: 0, height: 0)
        blue.layer.borderColor = UIColor.clear.cgColor
        blue.layer.name = "blue"
        blue.layer.shadowColor = UIColor.clear.cgColor
        blue.layer.shadowOpacity = 1
        blue.layer.position = CGPoint(x: 0, y: 0)
        blue.layer.bounds = CGRect(x: 0, y: 0, width: 276.76, height: 560)
        blue.layer.masksToBounds = false
        blue.shapeLayer.name = "blue.shapeLayer"
        blue.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        blue.shapeLayer.fillColor = UIColor(red: 0.079, green: 0.271, blue: 0.442, alpha: 1).cgColor
        blue.shapeLayer.miterLimit = 4
        blue.shapeLayer.lineDashPattern = []
        blue.shapeLayer.lineDashPhase = 0
        blue.shapeLayer.lineWidth = 1
        blue.shapeLayer.path = CGPathCreateWithSVGString("M1.909,63.52c0,-22.234,0,-33.351,4.327,-41.844 3.806,-7.47,9.88,-13.543,17.35,-17.35 8.492,-4.327,19.61,-4.327,41.844,-4.327l145.9,0c22.235,0,33.353,0,41.845,4.327 7.47,3.806,13.543,9.88,17.35,17.35 4.327,8.492,4.327,19.609,4.327,41.844l0,80.393 1.145,0c0.421,0,0.763,0.342,0.763,0.763l0,64.894c0,0.422,-0.342,0.764,-0.763,0.764l-1.145,0 0,286.146c0,22.234,0,33.351,-4.327,41.843 -3.807,7.47,-9.88,13.544,-17.35,17.35 -8.492,4.327,-19.609,4.327,-41.845,4.327l-145.9,0c-22.235,0,-33.352,0,-41.844,-4.327 -7.47,-3.806,-13.544,-9.88,-17.35,-17.35 -4.327,-8.492,-4.327,-19.609,-4.327,-41.843l0,-272.785 -1.145,0c-0.422,0,-0.763,-0.342,-0.763,-0.764l0,-41.227c0,-0.422,0.342,-0.763,0.763,-0.763l1.145,0 0,-9.544 -1.145,0c-0.422,0,-0.763,-0.341,-0.763,-0.763l0,-41.227c0,-0.422,0.342,-0.764,0.763,-0.764l1.145,0 0,-17.941 -1.145,0c-0.422,0,-0.763,-0.342,-0.763,-0.763l0,-20.614c0,-0.422,0.342,-0.763,0.763,-0.763l1.145,0 0,-25.042 0,0zM1.909,63.52")!


    }

    private func createShadows() {
        shadows = UIView(frame: CGRect(x: 0, y: 0, width: 276.76, height: 560))
        shadows.backgroundColor = UIColor.clear
        shadows.layer.anchorPoint = CGPoint(x: 0, y: 0)
        shadows.layer.shadowOffset = CGSize(width: 0, height: 0)
        shadows.layer.borderWidth = 1
        shadows.layer.borderColor = UIColor.clear.cgColor
        shadows.layer.name = "shadows"
        shadows.layer.shadowColor = UIColor.clear.cgColor
        shadows.layer.shadowOpacity = 1
        shadows.layer.position = CGPoint(x: 0, y: 0)
        shadows.layer.bounds = CGRect(x: 0, y: 0, width: 276.76, height: 560)
        shadows.layer.masksToBounds = false

    }

    private func createHighlights() {
        highlights = UIView(frame: CGRect(x: 0, y: 0, width: 276.76, height: 560))
        highlights.backgroundColor = UIColor.clear
        highlights.layer.anchorPoint = CGPoint(x: 0, y: 0)
        highlights.layer.shadowOffset = CGSize(width: 0, height: 0)
        highlights.layer.borderWidth = 1
        highlights.layer.borderColor = UIColor.clear.cgColor
        highlights.layer.name = "highlights"
        highlights.layer.shadowColor = UIColor.clear.cgColor
        highlights.layer.shadowOpacity = 1
        highlights.layer.position = CGPoint(x: 0, y: 0)
        highlights.layer.bounds = CGRect(x: 0, y: 0, width: 276.76, height: 560)
        highlights.layer.masksToBounds = false

    }

    private func createGroup11() {
        group11 = UIView(frame: CGRect(x: 15.27, y: 13.74, width: 246.22, height: 532.52))
        group11.backgroundColor = UIColor.clear
        group11.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group11.layer.shadowOffset = CGSize(width: 0, height: 0)
        group11.layer.borderWidth = 1
        group11.layer.borderColor = UIColor.clear.cgColor
        group11.layer.name = "group11"
        group11.layer.shadowColor = UIColor.clear.cgColor
        group11.layer.shadowOpacity = 1
        group11.layer.position = CGPoint(x: 15.27, y: 13.74)
        group11.layer.bounds = CGRect(x: 0, y: 0, width: 246.22, height: 532.52)
        group11.layer.masksToBounds = false

    }

    private func createGroup9() {
        group9 = UIView(frame: CGRect(x: 123.68, y: 15.65, width: 46.57, height: 10.69))
        group9.backgroundColor = UIColor.clear
        group9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group9.layer.shadowOffset = CGSize(width: 0, height: 0)
        group9.layer.borderWidth = 1
        group9.layer.borderColor = UIColor.clear.cgColor
        group9.layer.name = "group9"
        group9.layer.shadowColor = UIColor.clear.cgColor
        group9.layer.shadowOpacity = 1
        group9.layer.position = CGPoint(x: 123.68, y: 15.65)
        group9.layer.bounds = CGRect(x: 0, y: 0, width: 46.57, height: 10.69)
        group9.layer.masksToBounds = false

    }

    private func createRectangle17() {
        rectangle17 = ShapeView(frame: CGRect(x: 0, y: 2.67, width: 29.78, height: 5.34))
        rectangle17.backgroundColor = UIColor.clear
        rectangle17.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle17.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle17.layer.borderColor = UIColor.clear.cgColor
        rectangle17.layer.name = "rectangle17"
        rectangle17.layer.shadowColor = UIColor.clear.cgColor
        rectangle17.layer.shadowOpacity = 1
        rectangle17.layer.position = CGPoint(x: 0, y: 2.67)
        rectangle17.layer.bounds = CGRect(x: 0, y: 0, width: 29.78, height: 5.34)
        rectangle17.layer.masksToBounds = false
        rectangle17.shapeLayer.name = "rectangle17.shapeLayer"
        rectangle17.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle17.shapeLayer.fillColor = UIColor(red: 0.086, green: 0.086, blue: 0.086, alpha: 1).cgColor
        rectangle17.shapeLayer.miterLimit = 4
        rectangle17.shapeLayer.lineDashPattern = []
        rectangle17.shapeLayer.lineDashPhase = 0
        rectangle17.shapeLayer.lineWidth = 1
        rectangle17.shapeLayer.path = CGPathCreateWithSVGString("M0,2.67c0,-1.475,1.197,-2.67,2.673,-2.67l24.435,0c1.476,0,2.673,1.195,2.673,2.67 0,1.475,-1.196,2.67,-2.673,2.67l-24.435,0c-1.476,0,-2.673,-1.195,-2.673,-2.67l0,0zM0,2.67")!


    }

    private func createRectangle21() {
        rectangle21 = ShapeView(frame: CGRect(x: 0, y: 2.67, width: 29.78, height: 5.34))
        rectangle21.backgroundColor = UIColor.clear
        rectangle21.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle21.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle21.layer.borderColor = UIColor.clear.cgColor
        rectangle21.layer.name = "rectangle21"
        rectangle21.layer.shadowColor = UIColor.clear.cgColor
        rectangle21.layer.shadowOpacity = 1
        rectangle21.layer.position = CGPoint(x: 0, y: 2.67)
        rectangle21.layer.bounds = CGRect(x: 0, y: 0, width: 29.78, height: 5.34)
        rectangle21.layer.masksToBounds = false
        rectangle21.shapeLayer.name = "rectangle21.shapeLayer"
        rectangle21.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle21.shapeLayer.strokeColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.32).cgColor
        rectangle21.shapeLayer.fillColor = nil
        rectangle21.shapeLayer.miterLimit = 4
        rectangle21.shapeLayer.lineDashPattern = []
        rectangle21.shapeLayer.lineDashPhase = 0
        rectangle21.shapeLayer.lineWidth = 2
        rectangle21.shapeLayer.path = CGPathCreateWithSVGString("M0,2.67c0,-1.475,1.197,-2.67,2.673,-2.67l24.435,0c1.476,0,2.673,1.195,2.673,2.67 0,1.475,-1.196,2.67,-2.673,2.67l-24.435,0c-1.476,0,-2.673,-1.195,-2.673,-2.67l0,0zM0,2.67")!


    }

    private func createRectangle22() {
        rectangle22 = ShapeView(frame: CGRect(x: 0, y: 2.67, width: 29.78, height: 5.34))
        rectangle22.backgroundColor = UIColor.clear
        rectangle22.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle22.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle22.layer.borderColor = UIColor.clear.cgColor
        rectangle22.layer.name = "rectangle22"
        rectangle22.layer.shadowColor = UIColor.clear.cgColor
        rectangle22.layer.shadowOpacity = 1
        rectangle22.layer.position = CGPoint(x: 0, y: 2.67)
        rectangle22.layer.bounds = CGRect(x: 0, y: 0, width: 29.78, height: 5.34)
        rectangle22.layer.masksToBounds = false
        rectangle22.shapeLayer.name = "rectangle22.shapeLayer"
        rectangle22.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle22.shapeLayer.fillColor = nil
        rectangle22.shapeLayer.miterLimit = 4
        rectangle22.shapeLayer.lineDashPattern = []
        rectangle22.shapeLayer.lineDashPhase = 0
        rectangle22.shapeLayer.lineWidth = 1
        rectangle22.shapeLayer.path = CGPathCreateWithSVGString("M0,2.67c0,-1.475,1.197,-2.67,2.673,-2.67l24.435,0c1.476,0,2.673,1.195,2.673,2.67 0,1.475,-1.196,2.67,-2.673,2.67l-24.435,0c-1.476,0,-2.673,-1.195,-2.673,-2.67l0,0zM0,2.67")!


    }

    private func createRectangle18() {
        rectangle18 = ShapeView(frame: CGRect(x: 35.88, y: 0, width: 10.69, height: 10.69))
        rectangle18.backgroundColor = UIColor.clear
        rectangle18.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle18.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle18.layer.borderColor = UIColor.clear.cgColor
        rectangle18.layer.name = "rectangle18"
        rectangle18.layer.shadowColor = UIColor.clear.cgColor
        rectangle18.layer.shadowOpacity = 1
        rectangle18.layer.position = CGPoint(x: 35.88, y: 0)
        rectangle18.layer.bounds = CGRect(x: 0, y: 0, width: 10.69, height: 10.69)
        rectangle18.layer.masksToBounds = false
        rectangle18.shapeLayer.name = "rectangle18.shapeLayer"
        rectangle18.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle18.shapeLayer.fillColor = nil
        rectangle18.shapeLayer.miterLimit = 4
        rectangle18.shapeLayer.lineDashPattern = []
        rectangle18.shapeLayer.lineDashPhase = 0
        rectangle18.shapeLayer.lineWidth = 1
        rectangle18.shapeLayer.path = CGPathCreateWithSVGString("M0,5.345c0,-2.952,2.393,-5.345,5.345,-5.345 2.952,0,5.345,2.393,5.345,5.345 0,2.952,-2.393,5.345,-5.345,5.345 -2.952,0,-5.345,-2.393,-5.345,-5.345l0,0zM0,5.345")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1, y: 1)
        let colors = [UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor, UIColor.clear.cgColor]
        let locations = [NSNumber(value: 0.464), NSNumber(value: 0.646)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        rectangle18.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle19() {
        rectangle19 = ShapeView(frame: CGRect(x: 38.56, y: 2.67, width: 5.34, height: 5.34))
        rectangle19.backgroundColor = UIColor.clear
        rectangle19.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle19.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle19.layer.borderColor = UIColor.clear.cgColor
        rectangle19.layer.name = "rectangle19"
        rectangle19.layer.shadowColor = UIColor.clear.cgColor
        rectangle19.layer.shadowOpacity = 1
        rectangle19.layer.position = CGPoint(x: 38.56, y: 2.67)
        rectangle19.layer.bounds = CGRect(x: 0, y: 0, width: 5.34, height: 5.34)
        rectangle19.layer.masksToBounds = false
        rectangle19.shapeLayer.name = "rectangle19.shapeLayer"
        rectangle19.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle19.shapeLayer.fillColor = nil
        rectangle19.shapeLayer.miterLimit = 4
        rectangle19.shapeLayer.lineDashPattern = []
        rectangle19.shapeLayer.lineDashPhase = 0
        rectangle19.shapeLayer.lineWidth = 1
        rectangle19.shapeLayer.path = CGPathCreateWithSVGString("M5.34,2.67c0,-1.475,-1.195,-2.67,-2.67,-2.67 -1.475,0,-2.67,1.195,-2.67,2.67 0,1.475,1.195,2.67,2.67,2.67 1.475,0,2.67,-1.195,2.67,-2.67l0,0zM5.34,2.67")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1, y: 1)
        let colors = [UIColor.clear.cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0.85).cgColor]
        let locations = [NSNumber(value: 0.828), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        rectangle19.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createSubtract() {
        subtract = ShapeView(frame: CGRect(x: 0, y: 0, width: 246.22, height: 532.52))
        subtract.backgroundColor = UIColor.clear
        subtract.layer.anchorPoint = CGPoint(x: 0, y: 0)
        subtract.layer.shadowOffset = CGSize(width: 0, height: 0)
        subtract.layer.borderColor = UIColor.clear.cgColor
        subtract.layer.name = "subtract"
        subtract.layer.shadowColor = UIColor.clear.cgColor
        subtract.layer.shadowOpacity = 1
        subtract.layer.position = CGPoint(x: 0, y: 0)
        subtract.layer.bounds = CGRect(x: 0, y: 0, width: 246.22, height: 532.52)
        subtract.layer.masksToBounds = false
        let subtractMask = CAShapeLayer()
        subtractMask.name = "subtractMask"
        subtractMask.path = CGPathCreateWithSVGString("M2.829,14.173c-2.829,5.553,-2.829,12.822,-2.829,27.359l0,449.455c0,14.538,0,21.806,2.829,27.359 2.489,4.884,6.46,8.855,11.344,11.344 5.553,2.829,12.822,2.829,27.36,2.829l163.154,0c14.538,0,21.807,0,27.36,-2.829 4.884,-2.489,8.855,-6.46,11.343,-11.344 2.83,-5.553,2.83,-12.821,2.83,-27.359l0,-449.455c0,-14.538,0,-21.807,-2.83,-27.359 -2.488,-4.884,-6.459,-8.855,-11.343,-11.344 -5.553,-2.829,-12.822,-2.829,-27.36,-2.829l-12.758,0c-0.632,0,-0.948,0,-1.201,0.092 -0.424,0.154,-0.758,0.488,-0.912,0.913 -0.093,0.253,-0.093,0.569,-0.093,1.201 0,5.055,0,7.583,-0.736,9.607 -1.235,3.393,-3.908,6.066,-7.301,7.301 -2.024,0.737,-4.552,0.737,-9.607,0.737l-97.937,0c-5.055,0,-7.583,0,-9.607,-0.737 -3.393,-1.235,-6.066,-3.908,-7.301,-7.301 -0.737,-2.024,-0.737,-4.552,-0.737,-9.607 0,-0.632,0,-0.948,-0.092,-1.201 -0.154,-0.424,-0.488,-0.758,-0.913,-0.913 -0.253,-0.092,-0.569,-0.092,-1.201,-0.092l-12.758,0c-14.538,0,-21.807,0,-27.36,2.829 -4.884,2.489,-8.855,6.46,-11.344,11.344l0,0zM2.829,14.173")!
        subtract.layer.mask = subtractMask

    }

    private func createIphone12screen() {
        iphone12screen = UIView(frame: CGRect(x: 0, y: -0.38, width: 246.22, height: 532.9))
        iphone12screen.backgroundColor = UIColor.clear
        iphone12screen.layer.anchorPoint = CGPoint(x: 0, y: 0)
        iphone12screen.layer.shadowOffset = CGSize(width: 0, height: 0)
        iphone12screen.layer.borderWidth = 1
        iphone12screen.layer.borderColor = UIColor.clear.cgColor
        iphone12screen.layer.name = "iphone12screen"
        iphone12screen.layer.shadowColor = UIColor.clear.cgColor
        iphone12screen.layer.shadowOpacity = 1
        iphone12screen.layer.position = CGPoint(x: 0, y: -0.38)
        iphone12screen.layer.bounds = CGRect(x: 0, y: 0, width: 246.22, height: 532.9)
        iphone12screen.layer.masksToBounds = false

    }

    private func createSchedule3() {
        schedule3 = ShapeView(frame: CGRect(x: 0.01, y: 0.07, width: 246.2, height: 532.36))
        schedule3.backgroundColor = UIColor.clear
        schedule3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        schedule3.layer.shadowOffset = CGSize(width: 0, height: 0)
        schedule3.layer.borderColor = UIColor.clear.cgColor
        schedule3.layer.cornerRadius = 22
        schedule3.layer.name = "schedule3"
        schedule3.layer.shadowColor = UIColor.clear.cgColor
        schedule3.layer.shadowOpacity = 1
        schedule3.layer.position = CGPoint(x: 0.01, y: 0.07)
        schedule3.layer.bounds = CGRect(x: 0, y: 0, width: 246.2, height: 532.36)
        schedule3.layer.masksToBounds = true
        schedule3.shapeLayer.name = "schedule3.shapeLayer"
        schedule3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        let mask = CAShapeLayer()
        mask.path = CGPathCreateWithSVGString("M0,22c-0,-12.069,9.931,-22,22,-22l202.2,0c12.069,0,22,9.931,22,22l0,488.36c0,12.069,-9.931,22,-22,22l-202.2,0c-12.069,0,-22,-9.931,-22,-22l0,-488.36zM0,22")!
        mask.fillColor = UIColor.black.cgColor
        schedule3.shapeLayer.mask = mask
        let image = UIImage(named: "d2a1bacac2b6f24c96eeaa53d308d0b6f8bab584")!
         
        schedule3.shapeLayer.contents = image.cgImage
        schedule3.shapeLayer.fillColor = UIColor.clear.cgColor
        schedule3.shapeLayer.masksToBounds = true
        schedule3.shapeLayer.miterLimit = 4
        schedule3.shapeLayer.lineDashPattern = []
        schedule3.shapeLayer.lineDashPhase = 0
        schedule3.shapeLayer.lineWidth = 1
        schedule3.shapeLayer.path = CGPathCreateWithSVGString("M0,22c-0,-12.069,9.931,-22,22,-22l202.2,0c12.069,0,22,9.931,22,22l0,488.36c0,12.069,-9.931,22,-22,22l-202.2,0c-12.069,0,-22,-9.931,-22,-22l0,-488.36zM0,22")!


    }

    private func createSchedule31() {
        schedule3_1 = ShapeView(frame: CGRect(x: 0, y: -0.06, width: 246.22, height: 532.52))
        schedule3_1.backgroundColor = UIColor.clear
        schedule3_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        schedule3_1.alpha = 0
        schedule3_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        schedule3_1.layer.borderColor = UIColor.clear.cgColor
        schedule3_1.layer.cornerRadius = 79
        schedule3_1.layer.name = "schedule3_1"
        schedule3_1.layer.shadowColor = UIColor.clear.cgColor
        schedule3_1.layer.shadowOpacity = 1
        schedule3_1.layer.position = CGPoint(x: 0, y: -0.06)
        schedule3_1.layer.bounds = CGRect(x: 0, y: 0, width: 246.22, height: 532.52)
        schedule3_1.layer.masksToBounds = true
        schedule3_1.shapeLayer.name = "schedule3_1.shapeLayer"
        schedule3_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        let mask = CAShapeLayer()
        mask.path = CGPathCreateWithSVGString("M0,79c-0,-43.338,35.662,-79,79,-79l88.22,0c43.338,0,79,35.662,79,79l0,374.52c0,43.338,-35.662,79,-79,79l-88.22,0c-43.338,0,-79,-35.662,-79,-79s0,0,0,0l0,-374.52zM0,79")!
        mask.fillColor = UIColor.black.cgColor
        schedule3_1.shapeLayer.mask = mask
        let image = UIImage(named: "fdba6d1ffef80f7deaf150c9d1df1e2192528442")!
         
        schedule3_1.shapeLayer.contents = image.cgImage
        schedule3_1.shapeLayer.fillColor = UIColor.clear.cgColor
        schedule3_1.shapeLayer.masksToBounds = true
        schedule3_1.shapeLayer.miterLimit = 4
        schedule3_1.shapeLayer.lineDashPattern = []
        schedule3_1.shapeLayer.lineDashPhase = 0
        schedule3_1.shapeLayer.lineWidth = 1
        schedule3_1.shapeLayer.path = CGPathCreateWithSVGString("M0,79c-0,-43.338,35.662,-79,79,-79l88.22,0c43.338,0,79,35.662,79,79l0,374.52c0,43.338,-35.662,79,-79,79l-88.22,0c-43.338,0,-79,-35.662,-79,-79s0,0,0,0l0,-374.52zM0,79")!


    }

    private func createBackground() {
        background = ShapeView(frame: CGRect(x: 0, y: 0, width: 246.22, height: 532.9))
        background.backgroundColor = UIColor.clear
        background.layer.anchorPoint = CGPoint(x: 0, y: 0)
        background.layer.shadowOffset = CGSize(width: 0, height: 0)
        background.layer.borderColor = UIColor.clear.cgColor
        background.layer.name = "background"
        background.layer.shadowColor = UIColor.clear.cgColor
        background.layer.shadowOpacity = 1
        background.layer.position = CGPoint(x: 0, y: 0)
        background.layer.bounds = CGRect(x: 0, y: 0, width: 246.22, height: 532.9)
        background.layer.masksToBounds = false
        background.shapeLayer.name = "background.shapeLayer"
        background.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        let mask = CAShapeLayer()
        mask.path = CGPathCreateWithSVGString("M0,0l246.22,0 0,532.9 -246.22,0 0,-532.9zM0,0")!
        mask.fillColor = UIColor.black.cgColor
        background.shapeLayer.mask = mask
        let image = UIImage(named: "0387eb0228108c3862249f5f68cc1f46a2b645bf")!
        background.shapeLayer.contents = image.cgImage
        background.shapeLayer.fillColor = UIColor.clear.cgColor
        background.shapeLayer.contentsGravity = CALayerContentsGravity.resizeAspectFill
        background.shapeLayer.masksToBounds = true
        background.shapeLayer.miterLimit = 4
        background.shapeLayer.lineDashPattern = []
        background.shapeLayer.lineDashPhase = 0
        background.shapeLayer.lineWidth = 1
        background.shapeLayer.path = CGPathCreateWithSVGString("M0,0l246.22,0 0,532.9 -246.22,0 0,-532.9zM0,0")!


    }

    private func createGroup8() {
        group8 = UIView(frame: CGRect(x: 1.91, y: 0, width: 272.94, height: 560))
        group8.backgroundColor = UIColor.clear
        group8.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group8.layer.shadowOffset = CGSize(width: 0, height: 0)
        group8.layer.borderWidth = 1
        group8.layer.borderColor = UIColor.clear.cgColor
        group8.layer.name = "group8"
        group8.layer.shadowColor = UIColor.clear.cgColor
        group8.layer.shadowOpacity = 1
        group8.layer.position = CGPoint(x: 1.91, y: 0)
        group8.layer.bounds = CGRect(x: 0, y: 0, width: 272.94, height: 560)
        group8.layer.masksToBounds = false

    }

    private func createRectangle20() {
        rectangle20 = ShapeView(frame: CGRect(x: 4.96, y: 3.05, width: 266.83, height: 553.89))
        rectangle20.backgroundColor = UIColor.clear
        rectangle20.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle20.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle20.layer.borderColor = UIColor.clear.cgColor
        rectangle20.layer.name = "rectangle20"
        rectangle20.layer.shadowColor = UIColor.clear.cgColor
        rectangle20.layer.shadowOpacity = 1
        rectangle20.layer.position = CGPoint(x: 4.96, y: 3.05)
        rectangle20.layer.bounds = CGRect(x: 0, y: 0, width: 266.83, height: 553.89)
        rectangle20.layer.masksToBounds = false
        rectangle20.shapeLayer.name = "rectangle20.shapeLayer"
        rectangle20.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle20.shapeLayer.fillColor = UIColor.black.cgColor
        rectangle20.shapeLayer.miterLimit = 4
        rectangle20.shapeLayer.lineDashPattern = []
        rectangle20.shapeLayer.lineDashPhase = 0
        rectangle20.shapeLayer.lineWidth = 0.5
        rectangle20.shapeLayer.path = CGPathCreateWithSVGString("M0,59.244c0,-20.738,0,-31.106,4.036,-39.027 3.55,-6.967,9.215,-12.632,16.182,-16.182 7.921,-4.036,18.289,-4.036,39.027,-4.036l148.34,0c20.738,0,31.107,0,39.028,4.036 6.967,3.55,12.631,9.215,16.181,16.182 4.036,7.921,4.036,18.289,4.036,39.027l0,435.402c0,20.737,0,31.106,-4.036,39.027 -3.55,6.967,-9.214,12.631,-16.181,16.181 -7.921,4.036,-18.29,4.036,-39.028,4.036l-148.34,0c-20.738,0,-31.106,0,-39.027,-4.036 -6.967,-3.55,-12.632,-9.214,-16.182,-16.181 -4.036,-7.921,-4.036,-18.29,-4.036,-39.027l0,-435.402 0,0zM0,59.244")!


    }

    private func createSubtract1() {
        subtract_1 = ShapeView(frame: CGRect(x: 15.27, y: 13.74, width: 246.22, height: 532.52))
        subtract_1.backgroundColor = UIColor.clear
        subtract_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        subtract_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        subtract_1.layer.borderColor = UIColor.clear.cgColor
        subtract_1.layer.name = "subtract_1"
        subtract_1.layer.shadowColor = UIColor.clear.cgColor
        subtract_1.layer.shadowOpacity = 1
        subtract_1.layer.position = CGPoint(x: 15.27, y: 13.74)
        subtract_1.layer.bounds = CGRect(x: 0, y: 0, width: 246.22, height: 532.52)
        subtract_1.layer.masksToBounds = false
        subtract_1.shapeLayer.name = "subtract_1.shapeLayer"
        subtract_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        subtract_1.shapeLayer.fillColor = UIColor.black.cgColor
        subtract_1.shapeLayer.miterLimit = 4
        subtract_1.shapeLayer.lineDashPattern = []
        subtract_1.shapeLayer.lineDashPhase = 0
        subtract_1.shapeLayer.lineWidth = 1
        subtract_1.shapeLayer.path = CGPathCreateWithSVGString("M2.829,14.173c-2.829,5.553,-2.829,12.822,-2.829,27.359l0,449.455c0,14.538,0,21.806,2.829,27.359 2.489,4.884,6.46,8.855,11.344,11.344 5.553,2.829,12.822,2.829,27.36,2.829l163.154,0c14.538,0,21.807,0,27.36,-2.829 4.884,-2.489,8.855,-6.46,11.343,-11.344 2.83,-5.553,2.83,-12.821,2.83,-27.359l0,-449.455c0,-14.538,0,-21.807,-2.83,-27.359 -2.488,-4.884,-6.459,-8.855,-11.343,-11.344 -5.553,-2.829,-12.822,-2.829,-27.36,-2.829l-12.758,0c-0.632,0,-0.948,0,-1.201,0.092 -0.424,0.154,-0.758,0.488,-0.912,0.913 -0.093,0.253,-0.093,0.569,-0.093,1.201 0,5.055,0,7.583,-0.736,9.607 -1.235,3.393,-3.908,6.066,-7.301,7.301 -2.024,0.737,-4.552,0.737,-9.607,0.737l-97.937,0c-5.055,0,-7.583,0,-9.607,-0.737 -3.393,-1.235,-6.066,-3.908,-7.301,-7.301 -0.737,-2.024,-0.737,-4.552,-0.737,-9.607 0,-0.632,0,-0.948,-0.092,-1.201 -0.154,-0.424,-0.488,-0.758,-0.913,-0.913 -0.253,-0.092,-0.569,-0.092,-1.201,-0.092l-12.758,0c-14.538,0,-21.807,0,-27.36,2.829 -4.884,2.489,-8.855,6.46,-11.344,11.344l0,0zM2.829,14.173")!


    }

    private func createGroup10() {
        group10 = UIView(frame: CGRect(x: 0, y: 88.56, width: 276.76, height: 135.13))
        group10.backgroundColor = UIColor.clear
        group10.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group10.layer.shadowOffset = CGSize(width: 0, height: 0)
        group10.layer.borderWidth = 1
        group10.layer.borderColor = UIColor.clear.cgColor
        group10.layer.name = "group10"
        group10.layer.shadowColor = UIColor.clear.cgColor
        group10.layer.shadowOpacity = 1
        group10.layer.position = CGPoint(x: 0, y: 88.56)
        group10.layer.bounds = CGRect(x: 0, y: 0, width: 276.76, height: 135.13)
        group10.layer.masksToBounds = false

    }

    private func createRectangle13() {
        rectangle13 = ShapeView(frame: CGRect(x: 0, y: 0, width: 1.91, height: 22.14))
        rectangle13.backgroundColor = UIColor.clear
        rectangle13.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle13.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle13.layer.borderColor = UIColor.clear.cgColor
        rectangle13.layer.name = "rectangle13"
        rectangle13.layer.shadowColor = UIColor.clear.cgColor
        rectangle13.layer.shadowOpacity = 1
        rectangle13.layer.position = CGPoint(x: 0, y: 0)
        rectangle13.layer.bounds = CGRect(x: 0, y: 0, width: 1.91, height: 22.14)
        rectangle13.layer.masksToBounds = false
        rectangle13.shapeLayer.name = "rectangle13.shapeLayer"
        rectangle13.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle13.shapeLayer.fillColor = nil
        rectangle13.shapeLayer.miterLimit = 4
        rectangle13.shapeLayer.lineDashPattern = []
        rectangle13.shapeLayer.lineDashPhase = 0
        rectangle13.shapeLayer.lineWidth = 1
        rectangle13.shapeLayer.path = CGPathCreateWithSVGString("M0,0.763c0,-0.422,0.342,-0.763,0.764,-0.763l1.146,0 0,22.14 -1.146,0c-0.422,0,-0.764,-0.342,-0.764,-0.763l0,-20.613 0,0zM0,0.763")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0.08).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0.24).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.276), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle13.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle14() {
        rectangle14 = ShapeView(frame: CGRect(x: 0, y: 40.08, width: 1.91, height: 42.75))
        rectangle14.backgroundColor = UIColor.clear
        rectangle14.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle14.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle14.layer.borderColor = UIColor.clear.cgColor
        rectangle14.layer.name = "rectangle14"
        rectangle14.layer.shadowColor = UIColor.clear.cgColor
        rectangle14.layer.shadowOpacity = 1
        rectangle14.layer.position = CGPoint(x: 0, y: 40.08)
        rectangle14.layer.bounds = CGRect(x: 0, y: 0, width: 1.91, height: 42.75)
        rectangle14.layer.masksToBounds = false
        rectangle14.shapeLayer.name = "rectangle14.shapeLayer"
        rectangle14.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle14.shapeLayer.fillColor = nil
        rectangle14.shapeLayer.miterLimit = 4
        rectangle14.shapeLayer.lineDashPattern = []
        rectangle14.shapeLayer.lineDashPhase = 0
        rectangle14.shapeLayer.lineWidth = 1
        rectangle14.shapeLayer.path = CGPathCreateWithSVGString("M0,0.763c0,-0.422,0.342,-0.763,0.764,-0.763l1.146,0 0,42.75 -1.146,0c-0.422,0,-0.764,-0.342,-0.764,-0.763l0,-41.223 0,0zM0,0.763")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0.08).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0.24).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.276), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle14.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle16() {
        rectangle16 = ShapeView(frame: CGRect(x: 274.85, y: 55.35, width: 1.91, height: 66.42))
        rectangle16.backgroundColor = UIColor.clear
        rectangle16.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle16.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle16.layer.borderColor = UIColor.clear.cgColor
        rectangle16.layer.name = "rectangle16"
        rectangle16.layer.shadowColor = UIColor.clear.cgColor
        rectangle16.layer.shadowOpacity = 1
        rectangle16.layer.position = CGPoint(x: 274.85, y: 55.35)
        rectangle16.layer.bounds = CGRect(x: 0, y: 0, width: 1.91, height: 66.42)
        rectangle16.layer.masksToBounds = false
        rectangle16.shapeLayer.name = "rectangle16.shapeLayer"
        rectangle16.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle16.shapeLayer.fillColor = nil
        rectangle16.shapeLayer.miterLimit = 4
        rectangle16.shapeLayer.lineDashPattern = []
        rectangle16.shapeLayer.lineDashPhase = 0
        rectangle16.shapeLayer.lineWidth = 1
        rectangle16.shapeLayer.path = CGPathCreateWithSVGString("M0,0l1.146,0c0.422,0,0.764,0.342,0.764,0.763l0,64.893c0,0.422,-0.342,0.763,-0.764,0.763l-1.146,0 0,-66.42 0,0zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0.24).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0.08).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.63), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle16.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle15() {
        rectangle15 = ShapeView(frame: CGRect(x: 0, y: 92.38, width: 1.91, height: 42.75))
        rectangle15.backgroundColor = UIColor.clear
        rectangle15.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle15.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle15.layer.borderColor = UIColor.clear.cgColor
        rectangle15.layer.name = "rectangle15"
        rectangle15.layer.shadowColor = UIColor.clear.cgColor
        rectangle15.layer.shadowOpacity = 1
        rectangle15.layer.position = CGPoint(x: 0, y: 92.38)
        rectangle15.layer.bounds = CGRect(x: 0, y: 0, width: 1.91, height: 42.75)
        rectangle15.layer.masksToBounds = false
        rectangle15.shapeLayer.name = "rectangle15.shapeLayer"
        rectangle15.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle15.shapeLayer.fillColor = nil
        rectangle15.shapeLayer.miterLimit = 4
        rectangle15.shapeLayer.lineDashPattern = []
        rectangle15.shapeLayer.lineDashPhase = 0
        rectangle15.shapeLayer.lineWidth = 1
        rectangle15.shapeLayer.path = CGPathCreateWithSVGString("M0,0.763c0,-0.422,0.342,-0.763,0.764,-0.763l1.146,0 0,42.75 -1.146,0c-0.422,0,-0.764,-0.342,-0.764,-0.763l0,-41.223 0,0zM0,0.763")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0.08).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0.24).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.276), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle15.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle10() {
        rectangle10 = ShapeView(frame: CGRect(x: 0, y: 0, width: 272.94, height: 560))
        rectangle10.backgroundColor = UIColor.clear
        rectangle10.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle10.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle10.layer.borderColor = UIColor.clear.cgColor
        rectangle10.layer.name = "rectangle10"
        rectangle10.layer.shadowColor = UIColor.clear.cgColor
        rectangle10.layer.shadowOpacity = 1
        rectangle10.layer.position = CGPoint(x: 0, y: 0)
        rectangle10.layer.bounds = CGRect(x: 0, y: 0, width: 272.94, height: 560)
        rectangle10.layer.masksToBounds = false
        let rectangle10Mask = CAShapeLayer()
        rectangle10Mask.name = "rectangle10Mask"
        rectangle10Mask.path = CGPathCreateWithSVGString("M0,63.52c0,-22.234,0,-33.351,4.327,-41.844 3.806,-7.47,9.88,-13.543,17.35,-17.35 8.492,-4.327,19.61,-4.327,41.844,-4.327l145.899,0c22.234,0,33.351,0,41.843,4.327 7.47,3.806,13.544,9.88,17.35,17.35 4.327,8.492,4.327,19.609,4.327,41.844l0,432.96c0,22.234,0,33.351,-4.327,41.843 -3.806,7.47,-9.88,13.544,-17.35,17.35 -8.492,4.327,-19.609,4.327,-41.843,4.327l-145.899,0c-22.234,0,-33.351,0,-41.844,-4.327 -7.47,-3.806,-13.543,-9.88,-17.35,-17.35 -4.327,-8.492,-4.327,-19.609,-4.327,-41.843l0,-432.96 0,0zM0,63.52")!
        rectangle10.layer.mask = rectangle10Mask

    }

    private func createRectangle11() {
        rectangle11 = ShapeView(frame: CGRect(x: 0, y: 0, width: 272.94, height: 560))
        rectangle11.backgroundColor = UIColor.clear
        rectangle11.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle11.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle11.layer.borderColor = UIColor.clear.cgColor
        rectangle11.layer.name = "rectangle11"
        rectangle11.layer.shadowColor = UIColor.clear.cgColor
        rectangle11.layer.shadowOpacity = 1
        rectangle11.layer.position = CGPoint(x: 0, y: 0)
        rectangle11.layer.bounds = CGRect(x: 0, y: 0, width: 272.94, height: 560)
        rectangle11.layer.masksToBounds = false
        rectangle11.shapeLayer.name = "rectangle11.shapeLayer"
        rectangle11.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle11.shapeLayer.fillColor = UIColor(red: 0.02, green: 0.02, blue: 0.02, alpha: 1).cgColor
        rectangle11.shapeLayer.miterLimit = 4
        rectangle11.shapeLayer.lineDashPattern = []
        rectangle11.shapeLayer.lineDashPhase = 0
        rectangle11.shapeLayer.lineWidth = 2
        rectangle11.shapeLayer.path = CGPathCreateWithSVGString("M0,63.52c0,-22.234,0,-33.351,4.327,-41.844 3.806,-7.47,9.88,-13.543,17.35,-17.35 8.492,-4.327,19.61,-4.327,41.844,-4.327l145.899,0c22.234,0,33.351,0,41.843,4.327 7.47,3.806,13.544,9.88,17.35,17.35 4.327,8.492,4.327,19.609,4.327,41.844l0,432.96c0,22.234,0,33.351,-4.327,41.843 -3.806,7.47,-9.88,13.544,-17.35,17.35 -8.492,4.327,-19.609,4.327,-41.843,4.327l-145.899,0c-22.234,0,-33.351,0,-41.844,-4.327 -7.47,-3.806,-13.543,-9.88,-17.35,-17.35 -4.327,-8.492,-4.327,-19.609,-4.327,-41.843l0,-432.96 0,0zM0,63.52")!


    }

    private func createGroup4() {
        group4 = UIView(frame: CGRect(x: -1.53, y: -2.67, width: 275.99, height: 564.2))
        group4.backgroundColor = UIColor.clear
        group4.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group4.layer.shadowOffset = CGSize(width: 0, height: 0)
        group4.layer.borderWidth = 1
        group4.layer.borderColor = UIColor.clear.cgColor
        group4.layer.name = "group4"
        group4.layer.shadowColor = UIColor.clear.cgColor
        group4.layer.shadowOpacity = 1
        group4.layer.position = CGPoint(x: -1.53, y: -2.67)
        group4.layer.bounds = CGRect(x: 0, y: 0, width: 275.99, height: 564.2)
        group4.layer.masksToBounds = false

    }

    private func createRectangle23() {
        rectangle23 = ShapeView(frame: CGRect(x: 0, y: 50.39, width: 6.49, height: 5.34))
        rectangle23.backgroundColor = UIColor.clear
        rectangle23.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle23.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle23.layer.borderColor = UIColor.clear.cgColor
        rectangle23.layer.name = "rectangle23"
        rectangle23.layer.shadowColor = UIColor.clear.cgColor
        rectangle23.layer.shadowOpacity = 1
        rectangle23.layer.position = CGPoint(x: 0, y: 50.39)
        rectangle23.layer.bounds = CGRect(x: 0, y: 0, width: 6.49, height: 5.34)
        rectangle23.layer.masksToBounds = false
        rectangle23.shapeLayer.name = "rectangle23.shapeLayer"
        rectangle23.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle23.shapeLayer.fillColor = nil
        rectangle23.shapeLayer.miterLimit = 4
        rectangle23.shapeLayer.lineDashPattern = []
        rectangle23.shapeLayer.lineDashPhase = 0
        rectangle23.shapeLayer.lineWidth = 1
        rectangle23.shapeLayer.path = CGPathCreateWithSVGString("M0,0l6.49,0 0,5.34 -6.49,0 0,-5.34zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.56, green: 0.56, blue: 0.56, alpha: 1).cgColor, UIColor(red: 0.32, green: 0.32, blue: 0.32, alpha: 1).cgColor, UIColor(red: 0.08, green: 0.08, blue: 0.08, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.124), NSNumber(value: 0.366), NSNumber(value: 0.828)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle23.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle25() {
        rectangle25 = ShapeView(frame: CGRect(x: 0, y: 511.9, width: 6.49, height: 5.34))
        rectangle25.backgroundColor = UIColor.clear
        rectangle25.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle25.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle25.layer.borderColor = UIColor.clear.cgColor
        rectangle25.layer.name = "rectangle25"
        rectangle25.layer.shadowColor = UIColor.clear.cgColor
        rectangle25.layer.shadowOpacity = 1
        rectangle25.layer.position = CGPoint(x: 0, y: 511.9)
        rectangle25.layer.bounds = CGRect(x: 0, y: 0, width: 6.49, height: 5.34)
        rectangle25.layer.masksToBounds = false
        rectangle25.shapeLayer.name = "rectangle25.shapeLayer"
        rectangle25.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle25.shapeLayer.fillColor = nil
        rectangle25.shapeLayer.miterLimit = 4
        rectangle25.shapeLayer.lineDashPattern = []
        rectangle25.shapeLayer.lineDashPhase = 0
        rectangle25.shapeLayer.lineWidth = 1
        rectangle25.shapeLayer.path = CGPathCreateWithSVGString("M0,0l6.49,0 0,5.34 -6.49,0 0,-5.34zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.56, green: 0.56, blue: 0.56, alpha: 1).cgColor, UIColor(red: 0.32, green: 0.32, blue: 0.32, alpha: 1).cgColor, UIColor(red: 0.08, green: 0.08, blue: 0.08, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.124), NSNumber(value: 0.366), NSNumber(value: 0.828)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle25.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle24() {
        rectangle24 = ShapeView(frame: CGRect(x: 269.5, y: 50.39, width: 6.49, height: 5.34))
        rectangle24.backgroundColor = UIColor.clear
        rectangle24.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle24.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle24.layer.borderColor = UIColor.clear.cgColor
        rectangle24.layer.name = "rectangle24"
        rectangle24.layer.shadowColor = UIColor.clear.cgColor
        rectangle24.layer.shadowOpacity = 1
        rectangle24.layer.position = CGPoint(x: 269.5, y: 50.39)
        rectangle24.layer.bounds = CGRect(x: 0, y: 0, width: 6.49, height: 5.34)
        rectangle24.layer.masksToBounds = false
        rectangle24.shapeLayer.name = "rectangle24.shapeLayer"
        rectangle24.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle24.shapeLayer.fillColor = nil
        rectangle24.shapeLayer.miterLimit = 4
        rectangle24.shapeLayer.lineDashPattern = []
        rectangle24.shapeLayer.lineDashPhase = 0
        rectangle24.shapeLayer.lineWidth = 1
        rectangle24.shapeLayer.path = CGPathCreateWithSVGString("M0,0l6.49,0 0,5.34 -6.49,0 0,-5.34zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.08, green: 0.08, blue: 0.08, alpha: 1).cgColor, UIColor(red: 0.32, green: 0.32, blue: 0.32, alpha: 1).cgColor, UIColor(red: 0.56, green: 0.56, blue: 0.56, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.088), NSNumber(value: 0.536), NSNumber(value: 0.757)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle24.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle26() {
        rectangle26 = ShapeView(frame: CGRect(x: 269.5, y: 511.9, width: 6.49, height: 5.34))
        rectangle26.backgroundColor = UIColor.clear
        rectangle26.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle26.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle26.layer.borderColor = UIColor.clear.cgColor
        rectangle26.layer.name = "rectangle26"
        rectangle26.layer.shadowColor = UIColor.clear.cgColor
        rectangle26.layer.shadowOpacity = 1
        rectangle26.layer.position = CGPoint(x: 269.5, y: 511.9)
        rectangle26.layer.bounds = CGRect(x: 0, y: 0, width: 6.49, height: 5.34)
        rectangle26.layer.masksToBounds = false
        rectangle26.shapeLayer.name = "rectangle26.shapeLayer"
        rectangle26.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle26.shapeLayer.fillColor = nil
        rectangle26.shapeLayer.miterLimit = 4
        rectangle26.shapeLayer.lineDashPattern = []
        rectangle26.shapeLayer.lineDashPhase = 0
        rectangle26.shapeLayer.lineWidth = 1
        rectangle26.shapeLayer.path = CGPathCreateWithSVGString("M0,0l6.49,0 0,5.34 -6.49,0 0,-5.34zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.08, green: 0.08, blue: 0.08, alpha: 1).cgColor, UIColor(red: 0.32, green: 0.32, blue: 0.32, alpha: 1).cgColor, UIColor(red: 0.56, green: 0.56, blue: 0.56, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.088), NSNumber(value: 0.529), NSNumber(value: 0.771)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle26.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle27() {
        rectangle27 = ShapeView(frame: CGRect(x: 216.44, y: 0, width: 6.49, height: 5.34))
        rectangle27.backgroundColor = UIColor.clear
        rectangle27.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle27.transform = CGAffineTransform(rotationAngle: 0.5 * CGFloat.pi)
        rectangle27.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle27.layer.borderColor = UIColor.clear.cgColor
        rectangle27.layer.name = "rectangle27"
        rectangle27.layer.shadowColor = UIColor.clear.cgColor
        rectangle27.layer.shadowOpacity = 1
        rectangle27.layer.position = CGPoint(x: 216.44, y: 0)
        rectangle27.layer.bounds = CGRect(x: 0, y: 0, width: 6.49, height: 5.34)
        rectangle27.layer.masksToBounds = false
        rectangle27.shapeLayer.name = "rectangle27.shapeLayer"
        rectangle27.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle27.shapeLayer.fillColor = nil
        rectangle27.shapeLayer.miterLimit = 4
        rectangle27.shapeLayer.lineDashPattern = []
        rectangle27.shapeLayer.lineDashPhase = 0
        rectangle27.shapeLayer.lineWidth = 1
        rectangle27.shapeLayer.path = CGPathCreateWithSVGString("M0,0l6.49,0 0,5.34 -6.49,0 0,-5.34zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.56, green: 0.56, blue: 0.56, alpha: 1).cgColor, UIColor(red: 0.32, green: 0.32, blue: 0.32, alpha: 1).cgColor, UIColor(red: 0.08, green: 0.08, blue: 0.08, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.42), NSNumber(value: 0.61), NSNumber(value: 0.976)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle27.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle28() {
        rectangle28 = ShapeView(frame: CGRect(x: 55.73, y: 557.71, width: 6.49, height: 5.34))
        rectangle28.backgroundColor = UIColor.clear
        rectangle28.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle28.transform = CGAffineTransform(rotationAngle: 0.5 * CGFloat.pi)
        rectangle28.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle28.layer.borderColor = UIColor.clear.cgColor
        rectangle28.layer.name = "rectangle28"
        rectangle28.layer.shadowColor = UIColor.clear.cgColor
        rectangle28.layer.shadowOpacity = 1
        rectangle28.layer.position = CGPoint(x: 55.73, y: 557.71)
        rectangle28.layer.bounds = CGRect(x: 0, y: 0, width: 6.49, height: 5.34)
        rectangle28.layer.masksToBounds = false
        rectangle28.shapeLayer.name = "rectangle28.shapeLayer"
        rectangle28.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle28.shapeLayer.fillColor = nil
        rectangle28.shapeLayer.miterLimit = 4
        rectangle28.shapeLayer.lineDashPattern = []
        rectangle28.shapeLayer.lineDashPhase = 0
        rectangle28.shapeLayer.lineWidth = 1
        rectangle28.shapeLayer.path = CGPathCreateWithSVGString("M0,0l6.49,0 0,5.34 -6.49,0 0,-5.34zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor.black.cgColor, UIColor(red: 0.16, green: 0.16, blue: 0.16, alpha: 1).cgColor, UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.123), NSNumber(value: 0.585), NSNumber(value: 0.876)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle28.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createGroup81() {
        group8_1 = UIView(frame: CGRect(x: 1.91, y: 0, width: 272.94, height: 560))
        group8_1.backgroundColor = UIColor.clear
        group8_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group8_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        group8_1.layer.borderWidth = 1
        group8_1.layer.borderColor = UIColor.clear.cgColor
        group8_1.layer.name = "group8_1"
        group8_1.layer.shadowColor = UIColor.clear.cgColor
        group8_1.layer.shadowOpacity = 1
        group8_1.layer.position = CGPoint(x: 1.91, y: 0)
        group8_1.layer.bounds = CGRect(x: 0, y: 0, width: 272.94, height: 560)
        group8_1.layer.masksToBounds = false

    }

    private func createRectangle201() {
        rectangle20_1 = ShapeView(frame: CGRect(x: 4.96, y: 3.05, width: 266.83, height: 553.89))
        rectangle20_1.backgroundColor = UIColor.clear
        rectangle20_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle20_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle20_1.layer.borderColor = UIColor.clear.cgColor
        rectangle20_1.layer.name = "rectangle20_1"
        rectangle20_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle20_1.layer.shadowOpacity = 1
        rectangle20_1.layer.position = CGPoint(x: 4.96, y: 3.05)
        rectangle20_1.layer.bounds = CGRect(x: 0, y: 0, width: 266.83, height: 553.89)
        rectangle20_1.layer.masksToBounds = false
        rectangle20_1.shapeLayer.name = "rectangle20_1.shapeLayer"
        rectangle20_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle20_1.shapeLayer.fillColor = UIColor.black.cgColor
        rectangle20_1.shapeLayer.miterLimit = 4
        rectangle20_1.shapeLayer.lineDashPattern = []
        rectangle20_1.shapeLayer.lineDashPhase = 0
        rectangle20_1.shapeLayer.lineWidth = 0.5
        rectangle20_1.shapeLayer.path = CGPathCreateWithSVGString("M0,59.244c0,-20.738,0,-31.106,4.036,-39.027 3.55,-6.967,9.215,-12.632,16.182,-16.182 7.921,-4.036,18.289,-4.036,39.027,-4.036l148.34,0c20.738,0,31.107,0,39.028,4.036 6.967,3.55,12.631,9.215,16.181,16.182 4.036,7.921,4.036,18.289,4.036,39.027l0,435.402c0,20.737,0,31.106,-4.036,39.027 -3.55,6.967,-9.214,12.631,-16.181,16.181 -7.921,4.036,-18.29,4.036,-39.028,4.036l-148.34,0c-20.738,0,-31.106,0,-39.027,-4.036 -6.967,-3.55,-12.632,-9.214,-16.182,-16.181 -4.036,-7.921,-4.036,-18.29,-4.036,-39.027l0,-435.402 0,0zM0,59.244")!


    }

    private func createGroup101() {
        group10_1 = UIView(frame: CGRect(x: 0, y: 88.56, width: 276.76, height: 135.13))
        group10_1.backgroundColor = UIColor.clear
        group10_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group10_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        group10_1.layer.borderWidth = 1
        group10_1.layer.borderColor = UIColor.clear.cgColor
        group10_1.layer.name = "group10_1"
        group10_1.layer.shadowColor = UIColor.clear.cgColor
        group10_1.layer.shadowOpacity = 1
        group10_1.layer.position = CGPoint(x: 0, y: 88.56)
        group10_1.layer.bounds = CGRect(x: 0, y: 0, width: 276.76, height: 135.13)
        group10_1.layer.masksToBounds = false

    }

    private func createRectangle131() {
        rectangle13_1 = ShapeView(frame: CGRect(x: 0, y: 0, width: 1.91, height: 22.14))
        rectangle13_1.backgroundColor = UIColor.clear
        rectangle13_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle13_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle13_1.layer.borderColor = UIColor.clear.cgColor
        rectangle13_1.layer.name = "rectangle13_1"
        rectangle13_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle13_1.layer.shadowOpacity = 1
        rectangle13_1.layer.position = CGPoint(x: 0, y: 0)
        rectangle13_1.layer.bounds = CGRect(x: 0, y: 0, width: 1.91, height: 22.14)
        rectangle13_1.layer.masksToBounds = false
        rectangle13_1.shapeLayer.name = "rectangle13_1.shapeLayer"
        rectangle13_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle13_1.shapeLayer.fillColor = nil
        rectangle13_1.shapeLayer.miterLimit = 4
        rectangle13_1.shapeLayer.lineDashPattern = []
        rectangle13_1.shapeLayer.lineDashPhase = 0
        rectangle13_1.shapeLayer.lineWidth = 1
        rectangle13_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0.763c0,-0.422,0.342,-0.763,0.764,-0.763l1.146,0 0,22.14 -1.146,0c-0.422,0,-0.764,-0.342,-0.764,-0.763l0,-20.613 0,0zM0,0.763")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor.clear.cgColor, UIColor(red: 0.817, green: 0.817, blue: 0.817, alpha: 0.42).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0.24).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.333), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle13_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle141() {
        rectangle14_1 = ShapeView(frame: CGRect(x: 0, y: 40.08, width: 1.91, height: 42.75))
        rectangle14_1.backgroundColor = UIColor.clear
        rectangle14_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle14_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle14_1.layer.borderColor = UIColor.clear.cgColor
        rectangle14_1.layer.name = "rectangle14_1"
        rectangle14_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle14_1.layer.shadowOpacity = 1
        rectangle14_1.layer.position = CGPoint(x: 0, y: 40.08)
        rectangle14_1.layer.bounds = CGRect(x: 0, y: 0, width: 1.91, height: 42.75)
        rectangle14_1.layer.masksToBounds = false
        rectangle14_1.shapeLayer.name = "rectangle14_1.shapeLayer"
        rectangle14_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle14_1.shapeLayer.fillColor = nil
        rectangle14_1.shapeLayer.miterLimit = 4
        rectangle14_1.shapeLayer.lineDashPattern = []
        rectangle14_1.shapeLayer.lineDashPhase = 0
        rectangle14_1.shapeLayer.lineWidth = 1
        rectangle14_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0.763c0,-0.422,0.342,-0.763,0.764,-0.763l1.146,0 0,42.75 -1.146,0c-0.422,0,-0.764,-0.342,-0.764,-0.763l0,-41.223 0,0zM0,0.763")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor.clear.cgColor, UIColor(red: 0.817, green: 0.817, blue: 0.817, alpha: 0.42).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0.24).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.333), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle14_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle161() {
        rectangle16_1 = ShapeView(frame: CGRect(x: 274.85, y: 55.35, width: 1.91, height: 66.42))
        rectangle16_1.backgroundColor = UIColor.clear
        rectangle16_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle16_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle16_1.layer.borderColor = UIColor.clear.cgColor
        rectangle16_1.layer.name = "rectangle16_1"
        rectangle16_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle16_1.layer.shadowOpacity = 1
        rectangle16_1.layer.position = CGPoint(x: 274.85, y: 55.35)
        rectangle16_1.layer.bounds = CGRect(x: 0, y: 0, width: 1.91, height: 66.42)
        rectangle16_1.layer.masksToBounds = false
        rectangle16_1.shapeLayer.name = "rectangle16_1.shapeLayer"
        rectangle16_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle16_1.shapeLayer.fillColor = nil
        rectangle16_1.shapeLayer.miterLimit = 4
        rectangle16_1.shapeLayer.lineDashPattern = []
        rectangle16_1.shapeLayer.lineDashPhase = 0
        rectangle16_1.shapeLayer.lineWidth = 1
        rectangle16_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l1.146,0c0.422,0,0.764,0.342,0.764,0.763l0,64.893c0,0.422,-0.342,0.763,-0.764,0.763l-1.146,0 0,-66.42 0,0zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor(red: 0, green: 0, blue: 0, alpha: 0.24).cgColor, UIColor(red: 0.817, green: 0.817, blue: 0.817, alpha: 0.42).cgColor, UIColor.clear.cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.574), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle16_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle151() {
        rectangle15_1 = ShapeView(frame: CGRect(x: 0, y: 92.38, width: 1.91, height: 42.75))
        rectangle15_1.backgroundColor = UIColor.clear
        rectangle15_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle15_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle15_1.layer.borderColor = UIColor.clear.cgColor
        rectangle15_1.layer.name = "rectangle15_1"
        rectangle15_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle15_1.layer.shadowOpacity = 1
        rectangle15_1.layer.position = CGPoint(x: 0, y: 92.38)
        rectangle15_1.layer.bounds = CGRect(x: 0, y: 0, width: 1.91, height: 42.75)
        rectangle15_1.layer.masksToBounds = false
        rectangle15_1.shapeLayer.name = "rectangle15_1.shapeLayer"
        rectangle15_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle15_1.shapeLayer.fillColor = nil
        rectangle15_1.shapeLayer.miterLimit = 4
        rectangle15_1.shapeLayer.lineDashPattern = []
        rectangle15_1.shapeLayer.lineDashPhase = 0
        rectangle15_1.shapeLayer.lineWidth = 1
        rectangle15_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0.763c0,-0.422,0.342,-0.763,0.764,-0.763l1.146,0 0,42.75 -1.146,0c-0.422,0,-0.764,-0.342,-0.764,-0.763l0,-41.223 0,0zM0,0.763")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor.clear.cgColor, UIColor(red: 0.817, green: 0.817, blue: 0.817, alpha: 0.42).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0.24).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.333), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle15_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle101() {
        rectangle10_1 = ShapeView(frame: CGRect(x: 0, y: 0, width: 272.94, height: 560))
        rectangle10_1.backgroundColor = UIColor.clear
        rectangle10_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle10_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle10_1.layer.borderColor = UIColor.clear.cgColor
        rectangle10_1.layer.name = "rectangle10_1"
        rectangle10_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle10_1.layer.shadowOpacity = 1
        rectangle10_1.layer.position = CGPoint(x: 0, y: 0)
        rectangle10_1.layer.bounds = CGRect(x: 0, y: 0, width: 272.94, height: 560)
        rectangle10_1.layer.masksToBounds = false
        let rectangle10_1Mask = CAShapeLayer()
        rectangle10_1Mask.name = "rectangle10_1Mask"
        rectangle10_1Mask.path = CGPathCreateWithSVGString("M0,63.52c0,-22.234,0,-33.351,4.327,-41.844 3.806,-7.47,9.88,-13.543,17.35,-17.35 8.492,-4.327,19.61,-4.327,41.844,-4.327l145.899,0c22.234,0,33.351,0,41.843,4.327 7.47,3.806,13.544,9.88,17.35,17.35 4.327,8.492,4.327,19.609,4.327,41.844l0,432.96c0,22.234,0,33.351,-4.327,41.843 -3.806,7.47,-9.88,13.544,-17.35,17.35 -8.492,4.327,-19.609,4.327,-41.843,4.327l-145.899,0c-22.234,0,-33.351,0,-41.844,-4.327 -7.47,-3.806,-13.543,-9.88,-17.35,-17.35 -4.327,-8.492,-4.327,-19.609,-4.327,-41.843l0,-432.96 0,0zM0,63.52")!
        rectangle10_1.layer.mask = rectangle10_1Mask

    }

    private func createRectangle111() {
        rectangle11_1 = ShapeView(frame: CGRect(x: 0, y: 0, width: 272.94, height: 560))
        rectangle11_1.backgroundColor = UIColor.clear
        rectangle11_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle11_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle11_1.layer.borderColor = UIColor.clear.cgColor
        rectangle11_1.layer.name = "rectangle11_1"
        rectangle11_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle11_1.layer.shadowOpacity = 1
        rectangle11_1.layer.position = CGPoint(x: 0, y: 0)
        rectangle11_1.layer.bounds = CGRect(x: 0, y: 0, width: 272.94, height: 560)
        rectangle11_1.layer.masksToBounds = false
        rectangle11_1.shapeLayer.name = "rectangle11_1.shapeLayer"
        rectangle11_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle11_1.shapeLayer.fillColor = UIColor(red: 0.922, green: 0.922, blue: 0.922, alpha: 1).cgColor
        rectangle11_1.shapeLayer.miterLimit = 4
        rectangle11_1.shapeLayer.lineDashPattern = []
        rectangle11_1.shapeLayer.lineDashPhase = 0
        rectangle11_1.shapeLayer.lineWidth = 2
        rectangle11_1.shapeLayer.path = CGPathCreateWithSVGString("M0,63.52c0,-22.234,0,-33.351,4.327,-41.844 3.806,-7.47,9.88,-13.543,17.35,-17.35 8.492,-4.327,19.61,-4.327,41.844,-4.327l145.899,0c22.234,0,33.351,0,41.843,4.327 7.47,3.806,13.544,9.88,17.35,17.35 4.327,8.492,4.327,19.609,4.327,41.844l0,432.96c0,22.234,0,33.351,-4.327,41.843 -3.806,7.47,-9.88,13.544,-17.35,17.35 -8.492,4.327,-19.609,4.327,-41.843,4.327l-145.899,0c-22.234,0,-33.351,0,-41.844,-4.327 -7.47,-3.806,-13.543,-9.88,-17.35,-17.35 -4.327,-8.492,-4.327,-19.609,-4.327,-41.843l0,-432.96 0,0zM0,63.52")!


    }

    private func createGroup41() {
        group4_1 = UIView(frame: CGRect(x: -1.53, y: -2.67, width: 275.99, height: 564.2))
        group4_1.backgroundColor = UIColor.clear
        group4_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group4_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        group4_1.layer.borderWidth = 1
        group4_1.layer.borderColor = UIColor.clear.cgColor
        group4_1.layer.name = "group4_1"
        group4_1.layer.shadowColor = UIColor.clear.cgColor
        group4_1.layer.shadowOpacity = 1
        group4_1.layer.position = CGPoint(x: -1.53, y: -2.67)
        group4_1.layer.bounds = CGRect(x: 0, y: 0, width: 275.99, height: 564.2)
        group4_1.layer.masksToBounds = false

    }

    private func createRectangle231() {
        rectangle23_1 = ShapeView(frame: CGRect(x: 0, y: 50.39, width: 6.49, height: 5.34))
        rectangle23_1.backgroundColor = UIColor.clear
        rectangle23_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle23_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle23_1.layer.borderColor = UIColor.clear.cgColor
        rectangle23_1.layer.name = "rectangle23_1"
        rectangle23_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle23_1.layer.shadowOpacity = 1
        rectangle23_1.layer.position = CGPoint(x: 0, y: 50.39)
        rectangle23_1.layer.bounds = CGRect(x: 0, y: 0, width: 6.49, height: 5.34)
        rectangle23_1.layer.masksToBounds = false
        rectangle23_1.shapeLayer.name = "rectangle23_1.shapeLayer"
        rectangle23_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle23_1.shapeLayer.fillColor = nil
        rectangle23_1.shapeLayer.miterLimit = 4
        rectangle23_1.shapeLayer.lineDashPattern = []
        rectangle23_1.shapeLayer.lineDashPhase = 0
        rectangle23_1.shapeLayer.lineWidth = 1
        rectangle23_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l6.49,0 0,5.34 -6.49,0 0,-5.34zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.109), NSNumber(value: 0.318), NSNumber(value: 0.552), NSNumber(value: 0.807)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle23_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle251() {
        rectangle25_1 = ShapeView(frame: CGRect(x: 0, y: 511.9, width: 6.49, height: 5.34))
        rectangle25_1.backgroundColor = UIColor.clear
        rectangle25_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle25_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle25_1.layer.borderColor = UIColor.clear.cgColor
        rectangle25_1.layer.name = "rectangle25_1"
        rectangle25_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle25_1.layer.shadowOpacity = 1
        rectangle25_1.layer.position = CGPoint(x: 0, y: 511.9)
        rectangle25_1.layer.bounds = CGRect(x: 0, y: 0, width: 6.49, height: 5.34)
        rectangle25_1.layer.masksToBounds = false
        rectangle25_1.shapeLayer.name = "rectangle25_1.shapeLayer"
        rectangle25_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle25_1.shapeLayer.fillColor = nil
        rectangle25_1.shapeLayer.miterLimit = 4
        rectangle25_1.shapeLayer.lineDashPattern = []
        rectangle25_1.shapeLayer.lineDashPhase = 0
        rectangle25_1.shapeLayer.lineWidth = 1
        rectangle25_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l6.49,0 0,5.34 -6.49,0 0,-5.34zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.109), NSNumber(value: 0.318), NSNumber(value: 0.552), NSNumber(value: 0.807)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle25_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle241() {
        rectangle24_1 = ShapeView(frame: CGRect(x: 269.5, y: 50.39, width: 6.49, height: 5.34))
        rectangle24_1.backgroundColor = UIColor.clear
        rectangle24_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle24_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle24_1.layer.borderColor = UIColor.clear.cgColor
        rectangle24_1.layer.name = "rectangle24_1"
        rectangle24_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle24_1.layer.shadowOpacity = 1
        rectangle24_1.layer.position = CGPoint(x: 269.5, y: 50.39)
        rectangle24_1.layer.bounds = CGRect(x: 0, y: 0, width: 6.49, height: 5.34)
        rectangle24_1.layer.masksToBounds = false
        rectangle24_1.shapeLayer.name = "rectangle24_1.shapeLayer"
        rectangle24_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle24_1.shapeLayer.fillColor = nil
        rectangle24_1.shapeLayer.miterLimit = 4
        rectangle24_1.shapeLayer.lineDashPattern = []
        rectangle24_1.shapeLayer.lineDashPhase = 0
        rectangle24_1.shapeLayer.lineWidth = 1
        rectangle24_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l6.49,0 0,5.34 -6.49,0 0,-5.34zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.099), NSNumber(value: 0.369), NSNumber(value: 0.625), NSNumber(value: 0.799)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle24_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle261() {
        rectangle26_1 = ShapeView(frame: CGRect(x: 269.5, y: 511.9, width: 6.49, height: 5.34))
        rectangle26_1.backgroundColor = UIColor.clear
        rectangle26_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle26_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle26_1.layer.borderColor = UIColor.clear.cgColor
        rectangle26_1.layer.name = "rectangle26_1"
        rectangle26_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle26_1.layer.shadowOpacity = 1
        rectangle26_1.layer.position = CGPoint(x: 269.5, y: 511.9)
        rectangle26_1.layer.bounds = CGRect(x: 0, y: 0, width: 6.49, height: 5.34)
        rectangle26_1.layer.masksToBounds = false
        rectangle26_1.shapeLayer.name = "rectangle26_1.shapeLayer"
        rectangle26_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle26_1.shapeLayer.fillColor = nil
        rectangle26_1.shapeLayer.miterLimit = 4
        rectangle26_1.shapeLayer.lineDashPattern = []
        rectangle26_1.shapeLayer.lineDashPhase = 0
        rectangle26_1.shapeLayer.lineWidth = 1
        rectangle26_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l6.49,0 0,5.34 -6.49,0 0,-5.34zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.099), NSNumber(value: 0.369), NSNumber(value: 0.625), NSNumber(value: 0.799)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle26_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle271() {
        rectangle27_1 = ShapeView(frame: CGRect(x: 216.44, y: 0, width: 6.49, height: 5.34))
        rectangle27_1.backgroundColor = UIColor.clear
        rectangle27_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle27_1.transform = CGAffineTransform(rotationAngle: 0.5 * CGFloat.pi)
        rectangle27_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle27_1.layer.borderColor = UIColor.clear.cgColor
        rectangle27_1.layer.name = "rectangle27_1"
        rectangle27_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle27_1.layer.shadowOpacity = 1
        rectangle27_1.layer.position = CGPoint(x: 216.44, y: 0)
        rectangle27_1.layer.bounds = CGRect(x: 0, y: 0, width: 6.49, height: 5.34)
        rectangle27_1.layer.masksToBounds = false
        rectangle27_1.shapeLayer.name = "rectangle27_1.shapeLayer"
        rectangle27_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle27_1.shapeLayer.fillColor = nil
        rectangle27_1.shapeLayer.miterLimit = 4
        rectangle27_1.shapeLayer.lineDashPattern = []
        rectangle27_1.shapeLayer.lineDashPhase = 0
        rectangle27_1.shapeLayer.lineWidth = 1
        rectangle27_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l6.49,0 0,5.34 -6.49,0 0,-5.34zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.238), NSNumber(value: 0.417), NSNumber(value: 0.7), NSNumber(value: 0.926)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle27_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle281() {
        rectangle28_1 = ShapeView(frame: CGRect(x: 55.73, y: 557.71, width: 6.49, height: 5.34))
        rectangle28_1.backgroundColor = UIColor.clear
        rectangle28_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle28_1.transform = CGAffineTransform(rotationAngle: 0.5 * CGFloat.pi)
        rectangle28_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle28_1.layer.borderColor = UIColor.clear.cgColor
        rectangle28_1.layer.name = "rectangle28_1"
        rectangle28_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle28_1.layer.shadowOpacity = 1
        rectangle28_1.layer.position = CGPoint(x: 55.73, y: 557.71)
        rectangle28_1.layer.bounds = CGRect(x: 0, y: 0, width: 6.49, height: 5.34)
        rectangle28_1.layer.masksToBounds = false
        rectangle28_1.shapeLayer.name = "rectangle28_1.shapeLayer"
        rectangle28_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle28_1.shapeLayer.fillColor = nil
        rectangle28_1.shapeLayer.miterLimit = 4
        rectangle28_1.shapeLayer.lineDashPattern = []
        rectangle28_1.shapeLayer.lineDashPhase = 0
        rectangle28_1.shapeLayer.lineWidth = 1
        rectangle28_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l6.49,0 0,5.34 -6.49,0 0,-5.34zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.099), NSNumber(value: 0.369), NSNumber(value: 0.625), NSNumber(value: 0.799)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle28_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func addSubviews() {
        group4_1.addSubview(rectangle23_1)
        group4_1.addSubview(rectangle25_1)
        group4_1.addSubview(rectangle24_1)
        group4_1.addSubview(rectangle26_1)
        group4_1.addSubview(rectangle27_1)
        group4_1.addSubview(rectangle28_1)
        rectangle10_1.addSubview(rectangle11_1)
        rectangle10_1.addSubview(group4_1)
        group8_1.addSubview(rectangle10_1)
        group10_1.addSubview(rectangle13_1)
        group10_1.addSubview(rectangle14_1)
        group10_1.addSubview(rectangle16_1)
        group10_1.addSubview(rectangle15_1)
        shadows.addSubview(group8_1)
        shadows.addSubview(rectangle20_1)
        shadows.addSubview(group10_1)
        group4.addSubview(rectangle23)
        group4.addSubview(rectangle25)
        group4.addSubview(rectangle24)
        group4.addSubview(rectangle26)
        group4.addSubview(rectangle27)
        group4.addSubview(rectangle28)
        rectangle10.addSubview(rectangle11)
        rectangle10.addSubview(group4)
        group8.addSubview(rectangle10)
        group10.addSubview(rectangle13)
        group10.addSubview(rectangle14)
        group10.addSubview(rectangle16)
        group10.addSubview(rectangle15)
        highlights.addSubview(group8)
        highlights.addSubview(rectangle20)
        highlights.addSubview(subtract_1)
        highlights.addSubview(group10)
        iphone12screen.addSubview(background)
        subtract.addSubview(iphone12screen)
        subtract.addSubview(schedule3)
        subtract.addSubview(schedule3_1)
        group11.addSubview(subtract)
        group9.addSubview(rectangle17)
        group9.addSubview(rectangle21)
        group9.addSubview(rectangle22)
        group9.addSubview(rectangle18)
        group9.addSubview(rectangle19)
        iphone12black.addSubview(black)
        iphone12black.addSubview(white)
        iphone12black.addSubview(productRed)
        iphone12black.addSubview(green)
        iphone12black.addSubview(blue)
        iphone12black.addSubview(shadows)
        iphone12black.addSubview(highlights)
        iphone12black.addSubview(group11)
        iphone12black.addSubview(group9)
        group488.addSubview(iphone12black)
        phone.addSubview(group488)
        group564.addSubview(vector)
        group564.addSubview(vector_1)
        group564.addSubview(vector_2)
        group564.addSubview(vector_3)
        group564.addSubview(vector_4)
        group564.addSubview(vector_5)
        group564.addSubview(vector_6)
        group564.addSubview(vector_7)
        group564.addSubview(vector_8)
        group564.addSubview(vector_9)
        group564.addSubview(vector_10)
        group564.addSubview(vector_11)
        group564.addSubview(vector_12)
        group564.addSubview(vectorstroke)
        group564.addSubview(vector_13)
        group564.addSubview(vector_14)
        group564.addSubview(vector_15)
        group564.addSubview(vector_16)
        group564.addSubview(vector_17)
        group564.addSubview(vector_18)
        group564.addSubview(vector_19)
        group564.addSubview(vector_20)
        group564.addSubview(vector_21)
        group564.addSubview(vector_22)
        group564.addSubview(vector_23)
        group564.addSubview(vectorstroke_1)
        group564.addSubview(vector_24)
        group564.addSubview(vector_25)
        group564.addSubview(vectorstroke_2)
        group564.addSubview(vectorstroke_3)
        group554.addSubview(group564)
        liLl_1.addSubview(group554)
        group661.addSubview(rectangle389)
        group661.addSubview(vector9)
        liLl.addSubview(liLl_1)
        liLl.addSubview(group661)
        txt.addSubview(followAndExecuteCaresInSchedule)
        check.addSubview(rectangle467_1)
        check.addSubview(rectangle467stroke_1)
        check.addSubview(check_1)
        check.addSubview(vector116stroke_1)
        execute.addSubview(rectangle467)
        execute.addSubview(rectangle467stroke)
        execute.addSubview(execute_1)
        execute.addSubview(vector116stroke)
        addSubview(phone)
        addSubview(grad)
        addSubview(liLl)
        addSubview(txt)
        addSubview(check)
        addSubview(execute)
    }
}
