// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

//@IBDesignable
public class IPhoneSe5View: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 320, height: 568)
        public static let backgroundColor = UIColor.white
    }

    public var phone: UIView!
    public var grad: ShapeView!
    public var group674: UIView!
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
    public var liLl: UIView!
    public var txt: UIView!
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
            createGroup674()
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
            createLiLl()
            createTxt()
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
        phone = UIView(frame: CGRect(x: 56, y: 541, width: 208, height: 420.88))
        phone.backgroundColor = UIColor.clear
        phone.layer.anchorPoint = CGPoint(x: 0, y: 0)
        phone.layer.shadowOffset = CGSize(width: 0, height: 0)
        phone.layer.borderWidth = 1
        phone.layer.borderColor = UIColor.clear.cgColor
        phone.layer.name = "phone"
        phone.layer.shadowColor = UIColor.clear.cgColor
        phone.layer.shadowOpacity = 1
        phone.layer.position = CGPoint(x: 56, y: 541)
        phone.layer.bounds = CGRect(x: 0, y: 0, width: 208, height: 420.88)
        phone.layer.masksToBounds = false

    }

    private func createGrad() {
        grad = ShapeView(frame: CGRect(x: 0, y: 399, width: 320, height: 169))
        grad.backgroundColor = UIColor.clear
        grad.layer.anchorPoint = CGPoint(x: 0, y: 0)
        grad.layer.shadowOffset = CGSize(width: 0, height: 0)
        grad.layer.borderColor = UIColor.clear.cgColor
        grad.layer.name = "grad"
        grad.layer.shadowColor = UIColor.clear.cgColor
        grad.layer.shadowOpacity = 1
        grad.layer.position = CGPoint(x: 0, y: 399)
        grad.layer.bounds = CGRect(x: 0, y: 0, width: 320, height: 169)
        grad.layer.masksToBounds = false
        grad.shapeLayer.name = "grad.shapeLayer"
        grad.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        grad.shapeLayer.fillColor = nil
        grad.shapeLayer.miterLimit = 4
        grad.shapeLayer.lineDashPattern = []
        grad.shapeLayer.lineDashPhase = 0
        grad.shapeLayer.lineWidth = 1
        grad.shapeLayer.path = CGPathCreateWithSVGString("M0,0l320,0 0,169 -320,0 0,-169zM0,0")!

        let startPoint = CGPoint(x: 0.5, y: 0)
        let endPoint = CGPoint(x: 0.5, y: 0.613)
        let colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor, UIColor.white.cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        grad.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createGroup674() {
        group674 = UIView(frame: CGRect(x: 14, y: 32, width: 290, height: 91.74))
        group674.backgroundColor = UIColor.clear
        group674.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group674.layer.shadowOffset = CGSize(width: 0, height: 0)
        group674.layer.borderWidth = 1
        group674.layer.borderColor = UIColor.clear.cgColor
        group674.layer.name = "group674"
        group674.layer.shadowColor = UIColor.clear.cgColor
        group674.layer.shadowOpacity = 1
        group674.layer.position = CGPoint(x: 14, y: 32)
        group674.layer.bounds = CGRect(x: 0, y: 0, width: 290, height: 91.74)
        group674.layer.masksToBounds = false

    }

    private func createCheck() {
        check = UIView(frame: CGRect(x: 329, y: 248, width: 97.5, height: 30))
        check.backgroundColor = UIColor.clear
        check.layer.anchorPoint = CGPoint(x: 0, y: 0)
        check.layer.shadowOffset = CGSize(width: 0, height: 0)
        check.layer.borderWidth = 1
        check.layer.borderColor = UIColor.clear.cgColor
        check.layer.name = "check"
        check.layer.shadowColor = UIColor.clear.cgColor
        check.layer.shadowOpacity = 1
        check.layer.position = CGPoint(x: 329, y: 248)
        check.layer.bounds = CGRect(x: 0, y: 0, width: 97.5, height: 30)
        check.layer.masksToBounds = false

    }

    private func createExecute() {
        execute = UIView(frame: CGRect(x: 329, y: 300, width: 97.5, height: 30))
        execute.backgroundColor = UIColor.clear
        execute.layer.anchorPoint = CGPoint(x: 0, y: 0)
        execute.layer.shadowOffset = CGSize(width: 0, height: 0)
        execute.layer.borderWidth = 1
        execute.layer.borderColor = UIColor.clear.cgColor
        execute.layer.name = "execute"
        execute.layer.shadowColor = UIColor.clear.cgColor
        execute.layer.shadowOpacity = 1
        execute.layer.position = CGPoint(x: 329, y: 300)
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

    private func createLiLl() {
        liLl = UIView(frame: CGRect(x: 0, y: 0, width: 290, height: 91.74))
        liLl.backgroundColor = UIColor.clear
        liLl.layer.anchorPoint = CGPoint(x: 0, y: 0)
        liLl.layer.shadowOffset = CGSize(width: 0, height: 0)
        liLl.layer.borderWidth = 1
        liLl.layer.borderColor = UIColor.clear.cgColor
        liLl.layer.name = "liLl"
        liLl.layer.shadowColor = UIColor.clear.cgColor
        liLl.layer.shadowOpacity = 1
        liLl.layer.position = CGPoint(x: 0, y: 0)
        liLl.layer.bounds = CGRect(x: 0, y: 0, width: 290, height: 91.74)
        liLl.layer.masksToBounds = false

    }

    private func createTxt() {
        txt = UIView(frame: CGRect(x: 103.45, y: 33.12, width: 176.06, height: 31.24))
        txt.backgroundColor = UIColor.clear
        txt.layer.anchorPoint = CGPoint(x: 0, y: 0)
        txt.layer.shadowOffset = CGSize(width: 0, height: 0)
        txt.layer.borderWidth = 1
        txt.layer.borderColor = UIColor.clear.cgColor
        txt.layer.name = "txt"
        txt.layer.shadowColor = UIColor.clear.cgColor
        txt.layer.shadowOpacity = 1
        txt.layer.position = CGPoint(x: 103.45, y: 33.12)
        txt.layer.bounds = CGRect(x: 0, y: 0, width: 176.06, height: 31.24)
        txt.layer.masksToBounds = false

    }

    private func createFollowAndExecuteCaresInSchedule() {
        followAndExecuteCaresInSchedule = ShapeView(frame: CGRect(x: 0, y: 0, width: 176.06, height: 31.24))
        followAndExecuteCaresInSchedule.backgroundColor = UIColor.clear
        followAndExecuteCaresInSchedule.layer.anchorPoint = CGPoint(x: 0, y: 0)
        followAndExecuteCaresInSchedule.layer.shadowOffset = CGSize(width: 0, height: 0)
        followAndExecuteCaresInSchedule.layer.borderColor = UIColor.clear.cgColor
        followAndExecuteCaresInSchedule.layer.name = "followAndExecuteCaresInSchedule"
        followAndExecuteCaresInSchedule.layer.shadowColor = UIColor.clear.cgColor
        followAndExecuteCaresInSchedule.layer.shadowOpacity = 1
        followAndExecuteCaresInSchedule.layer.position = CGPoint(x: 0, y: 0)
        followAndExecuteCaresInSchedule.layer.bounds = CGRect(x: 0, y: 0, width: 176.06, height: 31.24)
        followAndExecuteCaresInSchedule.layer.masksToBounds = false
        followAndExecuteCaresInSchedule.shapeLayer.name = "followAndExecuteCaresInSchedule.shapeLayer"
        followAndExecuteCaresInSchedule.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        followAndExecuteCaresInSchedule.shapeLayer.fillColor = UIColor.white.cgColor
        followAndExecuteCaresInSchedule.shapeLayer.miterLimit = 4
        followAndExecuteCaresInSchedule.shapeLayer.lineDashPattern = []
        followAndExecuteCaresInSchedule.shapeLayer.lineDashPhase = 0
        followAndExecuteCaresInSchedule.shapeLayer.lineWidth = 1
        followAndExecuteCaresInSchedule.shapeLayer.path = CGPathCreateWithSVGString("M0,11.54l1.762,0 0,-4.751 4.877,0 0,-1.487 -4.877,0 0,-3.595 5.326,0 0,-1.518 -7.088,0 0,11.352 0,0zM11.69,11.706c2.368,0,3.926,-1.636,3.926,-4.303l0,-0.016c0,-2.651,-1.573,-4.279,-3.933,-4.279 -2.352,0,-3.918,1.636,-3.918,4.279l0,0.016c0,2.659,1.55,4.303,3.926,4.303l0,0zM11.698,10.282c-1.33,0,-2.195,-1.046,-2.195,-2.879l0,-0.016c0,-1.809,0.873,-2.856,2.179,-2.856 1.33,0,2.195,1.046,2.195,2.856l0,0.016c0,1.825,-0.85,2.879,-2.179,2.879l0,0zM16.992,11.54l1.699,0 0,-11.352 -1.699,0 0,11.352 0,0zM20.501,11.54l1.699,0 0,-11.352 -1.699,0 0,11.352 0,0zM27.502,11.706c2.368,0,3.926,-1.636,3.926,-4.303l0,-0.016c0,-2.651,-1.573,-4.279,-3.933,-4.279 -2.352,0,-3.918,1.636,-3.918,4.279l0,0.016c0,2.659,1.55,4.303,3.926,4.303l0,0zM27.51,10.282c-1.33,0,-2.195,-1.046,-2.195,-2.879l0,-0.016c0,-1.809,0.873,-2.856,2.179,-2.856 1.33,0,2.195,1.046,2.195,2.856l0,0.016c0,1.825,-0.85,2.879,-2.179,2.879l0,0zM34.339,11.54l1.754,0 1.723,-6.199 0.039,0 1.739,6.199 1.77,0 2.266,-8.276 -1.684,0 -1.51,6.514 -0.039,0 -1.731,-6.514 -1.636,0 -1.723,6.514 -0.032,0 -1.51,-6.514 -1.699,0 2.273,8.276 0,0zM50.371,11.69c1.093,0,2.053,-0.566,2.533,-1.455l0.031,0 0,1.306 1.707,0 0,-5.703c0,-1.66,-1.282,-2.73,-3.304,-2.73 -2.038,0,-3.273,1.093,-3.391,2.517l-0.008,0.087 1.605,0 0.016,-0.071c0.142,-0.661,0.747,-1.125,1.731,-1.125 1.054,0,1.644,0.551,1.644,1.463l0,0.621 -2.25,0.134c-1.959,0.118,-3.076,0.999,-3.076,2.439l0,0.016c0,1.487,1.109,2.502,2.761,2.502l0,0zM49.325,9.149l0,-0.016c0,-0.7,0.566,-1.149,1.589,-1.211l2.022,-0.126 0,0.645c0,1.078,-0.905,1.888,-2.1,1.888 -0.913,0,-1.51,-0.456,-1.51,-1.18l0,0zM56.295,11.54l1.699,0 0,-4.822c0,-1.29,0.771,-2.155,1.967,-2.155 1.18,0,1.762,0.7,1.762,1.943l0,5.035 1.707,0 0,-5.357c0,-1.904,-1.046,-3.076,-2.864,-3.076 -1.251,0,-2.101,0.566,-2.533,1.408l-0.039,0 0,-1.251 -1.699,0 0,8.276 0,0zM68.166,11.706c1.188,0,2.101,-0.598,2.596,-1.565l0.031,0 0,1.4 1.707,0 0,-11.352 -1.707,0 0,4.484 -0.031,0c-0.496,-0.975,-1.44,-1.565,-2.612,-1.565 -2.077,0,-3.446,1.652,-3.446,4.287l0,0.008c0,2.635,1.353,4.303,3.461,4.303l0,0zM68.615,10.242c-1.345,0,-2.171,-1.078,-2.171,-2.84l0,-0.008c0,-1.746,0.834,-2.832,2.171,-2.832 1.275,0,2.187,1.117,2.187,2.832l0,0.008c0,1.723,-0.905,2.84,-2.187,2.84l0,0zM77.724,11.54l7.206,0 0,-1.518 -5.444,0 0,-3.524 5.153,0 0,-1.479 -5.153,0 0,-3.312 5.444,0 0,-1.518 -7.206,0 0,11.352 0,0zM85.914,11.54l1.841,0 1.833,-3.044 0.039,0 1.833,3.044 1.872,0 -2.691,-4.185 2.722,-4.091 -1.88,0 -1.778,2.997 -0.039,0 -1.802,-2.997 -1.912,0 2.698,4.146 -2.738,4.13 0,0zM97.777,11.706c2.006,0,3.28,-1.196,3.548,-2.509l0.015,-0.087 -1.612,0 -0.024,0.063c-0.212,0.621,-0.881,1.141,-1.888,1.141 -1.353,0,-2.211,-0.913,-2.242,-2.478l5.861,0 0,-0.574c0,-2.486,-1.424,-4.154,-3.745,-4.154 -2.321,0,-3.815,1.731,-3.815,4.319l0,0.008c0,2.612,1.471,4.272,3.902,4.272l0,0zM97.698,4.5c1.109,0,1.912,0.7,2.053,2.132l-4.154,0c0.15,-1.385,0.999,-2.132,2.1,-2.132l0,0zM106.312,11.706c1.99,0,3.375,-1.274,3.556,-2.934l0.008,-0.055 -1.636,0 -0.008,0.063c-0.205,0.897,-0.874,1.503,-1.92,1.503 -1.314,0,-2.187,-1.062,-2.187,-2.871l0,-0.008c0,-1.77,0.858,-2.871,2.179,-2.871 1.11,0,1.739,0.684,1.92,1.495l0.016,0.063 1.62,0 -0.008,-0.055c-0.141,-1.558,-1.432,-2.926,-3.563,-2.926 -2.36,0,-3.902,1.66,-3.902,4.279l0,0.008c0,2.651,1.51,4.311,3.925,4.311l0,0zM113.896,11.706c1.258,0,2.1,-0.574,2.533,-1.408l0.039,0 0,1.243 1.707,0 0,-8.276 -1.707,0 0,4.83c0,1.29,-0.771,2.148,-1.967,2.148 -1.18,0,-1.762,-0.692,-1.762,-1.943l0,-5.035 -1.699,0 0,5.365c0,1.904,1.039,3.076,2.856,3.076l0,0zM122.763,11.706c0.346,0,0.668,-0.039,0.865,-0.071l0,-1.314c-0.126,0.016,-0.275,0.031,-0.456,0.031 -0.716,0,-1.094,-0.252,-1.094,-1.093l0,-4.641 1.55,0 0,-1.353 -1.55,0 0,-2.155 -1.738,0 0,2.155 -1.188,0 0,1.353 1.188,0 0,4.744c0,1.652,0.786,2.344,2.423,2.344l0,0zM128.364,11.706c2.006,0,3.28,-1.196,3.548,-2.509l0.015,-0.087 -1.612,0 -0.024,0.063c-0.212,0.621,-0.881,1.141,-1.888,1.141 -1.353,0,-2.211,-0.913,-2.242,-2.478l5.861,0 0,-0.574c0,-2.486,-1.424,-4.154,-3.745,-4.154 -2.321,0,-3.815,1.731,-3.815,4.319l0,0.008c0,2.612,1.471,4.272,3.902,4.272l0,0zM128.285,4.5c1.109,0,1.912,0.7,2.053,2.132l-4.153,0c0.149,-1.385,0.999,-2.132,2.1,-2.132l0,0zM141.674,11.729c2.51,0,4.39,-1.518,4.744,-3.776l0.008,-0.079 -1.747,0 -0.023,0.071c-0.425,1.44,-1.471,2.226,-2.982,2.226 -2.1,0,-3.461,-1.683,-3.461,-4.311l0,-0.008c0,-2.627,1.353,-4.295,3.461,-4.295 1.526,0,2.581,0.81,2.958,2.14l0.047,0.157 1.747,0 -0.016,-0.071c-0.354,-2.242,-2.234,-3.784,-4.736,-3.784 -3.217,0,-5.263,2.25,-5.263,5.853l0,0.008c0,3.603,2.046,5.869,5.263,5.869l0,0zM150.233,11.69c1.094,0,2.053,-0.566,2.533,-1.455l0.032,0 0,1.306 1.707,0 0,-5.703c0,-1.66,-1.282,-2.73,-3.304,-2.73 -2.038,0,-3.273,1.093,-3.391,2.517l-0.008,0.087 1.605,0 0.016,-0.071c0.142,-0.661,0.747,-1.125,1.731,-1.125 1.054,0,1.644,0.551,1.644,1.463l0,0.621 -2.25,0.134c-1.959,0.118,-3.076,0.999,-3.076,2.439l0,0.016c0,1.487,1.109,2.502,2.761,2.502l0,0zM149.187,9.149l0,-0.016c0,-0.7,0.566,-1.149,1.589,-1.211l2.022,-0.126 0,0.645c0,1.078,-0.905,1.888,-2.101,1.888 -0.912,0,-1.51,-0.456,-1.51,-1.18l0,0zM156.157,11.54l1.699,0 0,-4.932c0,-1.235,0.677,-1.951,1.77,-1.951 0.331,0,0.629,0.039,0.763,0.094l0,-1.581c-0.134,-0.024,-0.346,-0.063,-0.59,-0.063 -0.944,0,-1.636,0.606,-1.904,1.573l-0.039,0 0,-1.416 -1.699,0 0,8.276 0,0zM164.614,11.706c2.006,0,3.28,-1.196,3.548,-2.509l0.015,-0.087 -1.612,0 -0.024,0.063c-0.212,0.621,-0.881,1.141,-1.888,1.141 -1.353,0,-2.211,-0.913,-2.242,-2.478l5.861,0 0,-0.574c0,-2.486,-1.424,-4.154,-3.745,-4.154 -2.321,0,-3.815,1.731,-3.815,4.319l0,0.008c0,2.612,1.471,4.272,3.902,4.272l0,0zM164.535,4.5c1.109,0,1.912,0.7,2.053,2.132l-4.153,0c0.149,-1.385,0.999,-2.132,2.1,-2.132l0,0zM172.693,11.706c1.951,0,3.367,-1.038,3.367,-2.549l0,-0.008c0,-1.188,-0.645,-1.857,-2.337,-2.25l-1.345,-0.307c-0.889,-0.212,-1.227,-0.559,-1.227,-1.07l0,-0.008c0,-0.661,0.574,-1.093,1.487,-1.093 0.959,0,1.526,0.503,1.628,1.227l0.008,0.055 1.597,0 -0.008,-0.094c-0.086,-1.408,-1.266,-2.502,-3.225,-2.502 -1.904,0,-3.194,1.015,-3.194,2.494l0,0.008c0,1.204,0.779,1.959,2.352,2.321l1.353,0.307c0.889,0.212,1.188,0.519,1.188,1.054l0,0.008c0,0.669,-0.614,1.094,-1.636,1.094 -1.047,0,-1.613,-0.448,-1.77,-1.212l-0.016,-0.079 -1.684,0 0.008,0.071c0.173,1.51,1.385,2.533,3.454,2.533l0,0zM44.636,21.493c0.559,0,0.991,-0.44,0.991,-0.975 0,-0.543,-0.433,-0.983,-0.991,-0.983 -0.551,0,-0.991,0.44,-0.991,0.983 0,0.535,0.441,0.975,0.991,0.975l0,0zM43.787,31.043l1.699,0 0,-8.276 -1.699,0 0,8.276 0,0zM47.24,31.043l1.699,0 0,-4.822c0,-1.29,0.771,-2.155,1.967,-2.155 1.18,0,1.762,0.7,1.762,1.943l0,5.035 1.707,0 0,-5.357c0,-1.904,-1.046,-3.076,-2.864,-3.076 -1.251,0,-2.1,0.566,-2.533,1.408l-0.039,0 0,-1.251 -1.699,0 0,8.276 0,0zM63.541,31.24c2.864,0,4.578,-1.385,4.578,-3.564l0,-0.008c0,-1.786,-1.07,-2.753,-3.446,-3.225l-1.204,-0.244c-1.306,-0.26,-1.888,-0.677,-1.888,-1.392l0,-0.008c0,-0.81,0.732,-1.369,1.951,-1.377 1.172,0,1.99,0.543,2.108,1.432l0.008,0.094 2.242,0 -0.008,-0.149c-0.11,-1.99,-1.723,-3.304,-4.35,-3.304 -2.517,0,-4.327,1.369,-4.327,3.446l0,0.008c0,1.707,1.133,2.777,3.375,3.225l1.196,0.236c1.408,0.291,1.967,0.676,1.967,1.447l0,0.008c0,0.865,-0.826,1.44,-2.14,1.44 -1.298,0,-2.234,-0.551,-2.384,-1.432l-0.016,-0.086 -2.242,0 0.008,0.126c0.134,2.092,1.872,3.328,4.571,3.328l0,0zM73.232,31.216c2.25,0,3.705,-1.4,3.815,-3.241l0,-0.047 -2.14,0 -0.008,0.071c-0.157,0.85,-0.732,1.416,-1.652,1.416 -1.133,0,-1.841,-0.936,-1.841,-2.588l0,-0.008c0,-1.613,0.708,-2.58,1.833,-2.58 0.952,0,1.51,0.614,1.652,1.416l0.016,0.071 2.132,0 0,-0.055c-0.087,-1.825,-1.542,-3.233,-3.831,-3.233 -2.525,0,-4.138,1.676,-4.138,4.374l0,0.008c0,2.722,1.589,4.397,4.162,4.397l0,0zM78.212,31.043l2.297,0 0,-4.83c0,-1.101,0.653,-1.872,1.668,-1.872 1.046,0,1.628,0.7,1.628,1.88l0,4.822 2.297,0 0,-5.294c0,-2.037,-1.133,-3.312,-2.958,-3.312 -1.267,0,-2.156,0.582,-2.588,1.628l-0.047,0 0,-4.374 -2.297,0 0,11.352 0,0zM91.421,31.216c2.407,0,3.572,-1.424,3.831,-2.667l0.024,-0.087 -2.108,0 -0.016,0.047c-0.165,0.472,-0.739,0.991,-1.684,0.991 -1.172,0,-1.904,-0.787,-1.927,-2.132l5.806,0 0,-0.708c0,-2.549,-1.55,-4.224,-4.02,-4.224 -2.47,0,-4.051,1.715,-4.051,4.397l0,0.008c0,2.698,1.565,4.374,4.146,4.374l0,0zM91.366,24.152c0.952,0,1.636,0.606,1.778,1.77l-3.579,0c0.15,-1.141,0.858,-1.77,1.802,-1.77l0,0zM99.657,31.216c1.219,0,2.148,-0.614,2.596,-1.613l0.047,0 0,1.44 2.297,0 0,-11.352 -2.297,0 0,4.382 -0.047,0c-0.456,-1.023,-1.4,-1.636,-2.596,-1.636 -2.124,0,-3.43,1.636,-3.43,4.382l0,0.008c0,2.738,1.306,4.39,3.43,4.39l0,0zM100.428,29.313c-1.149,0,-1.865,-0.952,-1.865,-2.486l0,-0.008c0,-1.542,0.724,-2.478,1.865,-2.478 1.109,0,1.88,0.96,1.88,2.478l0,0.008c0,1.526,-0.763,2.486,-1.88,2.486l0,0zM109.003,31.216c1.274,0,2.139,-0.598,2.572,-1.565l0.047,0 0,1.392 2.297,0 0,-8.433 -2.297,0 0,4.846c0,1.101,-0.653,1.856,-1.683,1.856 -1.031,0,-1.55,-0.637,-1.55,-1.738l0,-4.964 -2.297,0 0,5.444c0,1.974,1.054,3.162,2.911,3.162l0,0zM115.469,31.043l2.297,0 0,-11.352 -2.297,0 0,11.352 0,0zM123.156,31.216c2.407,0,3.571,-1.424,3.831,-2.667l0.024,-0.087 -2.109,0 -0.015,0.047c-0.166,0.472,-0.74,0.991,-1.684,0.991 -1.172,0,-1.904,-0.787,-1.927,-2.132l5.805,0 0,-0.708c0,-2.549,-1.549,-4.224,-4.02,-4.224 -2.47,0,-4.051,1.715,-4.051,4.397l0,0.008c0,2.698,1.566,4.374,4.146,4.374l0,0zM123.101,24.152c0.952,0,1.636,0.606,1.778,1.77l-3.58,0c0.15,-1.141,0.858,-1.77,1.802,-1.77l0,0zM129.08,27.228l1.982,0 0.189,-7.536 -2.36,0 0.189,7.536 0,0zM130.071,31.138c0.716,0,1.282,-0.543,1.282,-1.235 0,-0.692,-0.566,-1.235,-1.282,-1.235 -0.716,0,-1.283,0.543,-1.283,1.235 0,0.692,0.567,1.235,1.283,1.235l0,0zM130.071,31.138")!


    }

    private func createLiLl1() {
        liLl_1 = UIView(frame: CGRect(x: 0, y: 0, width: 107.8, height: 91.74))
        liLl_1.backgroundColor = UIColor.clear
        liLl_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        liLl_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        liLl_1.layer.borderWidth = 1
        liLl_1.layer.borderColor = UIColor.clear.cgColor
        liLl_1.layer.name = "liLl_1"
        liLl_1.layer.shadowColor = UIColor.clear.cgColor
        liLl_1.layer.shadowOpacity = 1
        liLl_1.layer.position = CGPoint(x: 0, y: 0)
        liLl_1.layer.bounds = CGRect(x: 0, y: 0, width: 107.8, height: 91.74)
        liLl_1.layer.masksToBounds = false

    }

    private func createGroup661() {
        group661 = UIView(frame: CGRect(x: 75.47, y: 19.5, width: 214.53, height: 57.66))
        group661.backgroundColor = UIColor.clear
        group661.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group661.layer.shadowOffset = CGSize(width: 0, height: 6)
        group661.layer.shadowRadius = 12
        group661.layer.borderWidth = 1
        group661.layer.borderColor = UIColor.clear.cgColor
        group661.layer.name = "group661"
        group661.layer.shadowColor = UIColor(red: 0.976, green: 0.38, blue: 0.38, alpha: 0.4).cgColor
        group661.layer.shadowOpacity = 1
        group661.layer.position = CGPoint(x: 75.47, y: 19.5)
        group661.layer.bounds = CGRect(x: 0, y: 0, width: 214.53, height: 57.66)
        group661.layer.masksToBounds = false

    }

    private func createRectangle389() {
        rectangle389 = ShapeView(frame: CGRect(x: 214.53, y: 57.66, width: 196.72, height: 57.66))
        rectangle389.backgroundColor = UIColor.clear
        rectangle389.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle389.transform = CGAffineTransform(rotationAngle: 1 * CGFloat.pi)
        rectangle389.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle389.layer.borderColor = UIColor.clear.cgColor
        rectangle389.layer.cornerRadius = 24
        rectangle389.layer.name = "rectangle389"
        rectangle389.layer.shadowColor = UIColor.clear.cgColor
        rectangle389.layer.shadowOpacity = 1
        rectangle389.layer.position = CGPoint(x: 214.53, y: 57.66)
        rectangle389.layer.bounds = CGRect(x: 0, y: 0, width: 196.72, height: 57.66)
        rectangle389.layer.masksToBounds = true
        rectangle389.shapeLayer.name = "rectangle389.shapeLayer"
        rectangle389.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle389.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle389.shapeLayer.miterLimit = 4
        rectangle389.shapeLayer.lineDashPattern = []
        rectangle389.shapeLayer.lineDashPhase = 0
        rectangle389.shapeLayer.lineWidth = 1
        rectangle389.shapeLayer.path = CGPathCreateWithSVGString("M0,24c-0,-13.166,10.834,-24,24,-24l148.72,0c13.166,0,24,10.834,24,24l0,9.66c0,13.166,-10.834,24,-24,24l-148.72,0c-13.166,0,-24,-10.834,-24,-24l0,-9.66zM0,24")!


    }

    private func createVector99() {
        vector9 = ShapeView(frame: CGRect(x: 0, y: 34.77, width: 41.03, height: 22.89))
        vector9.backgroundColor = UIColor.clear
        vector9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector9.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector9.layer.borderColor = UIColor.clear.cgColor
        vector9.layer.name = "vector9"
        vector9.layer.shadowColor = UIColor.clear.cgColor
        vector9.layer.shadowOpacity = 1
        vector9.layer.position = CGPoint(x: 0, y: 34.77)
        vector9.layer.bounds = CGRect(x: 0, y: 0, width: 41.03, height: 22.89)
        vector9.layer.masksToBounds = false
        vector9.shapeLayer.name = "vector9.shapeLayer"
        vector9.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector9.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        vector9.shapeLayer.miterLimit = 4
        vector9.shapeLayer.lineDashPattern = []
        vector9.shapeLayer.lineDashPhase = 0
        vector9.shapeLayer.lineWidth = 1
        vector9.shapeLayer.path = CGPathCreateWithSVGString("M0,22.89l33.987,-22.89 7.043,22.89 -41.03,0 0,0zM0,22.89")!


    }

    private func createGroup554() {
        group554 = UIView(frame: CGRect(x: 0, y: 0, width: 107.8, height: 91.74))
        group554.backgroundColor = UIColor.clear
        group554.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group554.layer.shadowOffset = CGSize(width: 0, height: 0)
        group554.layer.borderWidth = 1
        group554.layer.borderColor = UIColor.clear.cgColor
        group554.layer.name = "group554"
        group554.layer.shadowColor = UIColor.clear.cgColor
        group554.layer.shadowOpacity = 1
        group554.layer.position = CGPoint(x: 0, y: 0)
        group554.layer.bounds = CGRect(x: 0, y: 0, width: 107.8, height: 91.74)
        group554.layer.masksToBounds = false

    }

    private func createGroup564() {
        group564 = UIView(frame: CGRect(x: 0, y: 0, width: 107.8, height: 91.74))
        group564.backgroundColor = UIColor.clear
        group564.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group564.layer.shadowOffset = CGSize(width: 0, height: 0)
        group564.layer.borderWidth = 1
        group564.layer.borderColor = UIColor.clear.cgColor
        group564.layer.name = "group564"
        group564.layer.shadowColor = UIColor.clear.cgColor
        group564.layer.shadowOpacity = 1
        group564.layer.position = CGPoint(x: 0, y: 0)
        group564.layer.bounds = CGRect(x: 0, y: 0, width: 107.8, height: 91.74)
        group564.layer.masksToBounds = false

    }

    private func createVector() {
        vector = ShapeView(frame: CGRect(x: 8.72, y: 41.28, width: 83.03, height: 50.46))
        vector.backgroundColor = UIColor.clear
        vector.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector.layer.borderColor = UIColor.clear.cgColor
        vector.layer.name = "vector"
        vector.layer.shadowColor = UIColor.clear.cgColor
        vector.layer.shadowOpacity = 1
        vector.layer.position = CGPoint(x: 8.72, y: 41.28)
        vector.layer.bounds = CGRect(x: 0, y: 0, width: 83.03, height: 50.46)
        vector.layer.masksToBounds = false
        vector.shapeLayer.name = "vector.shapeLayer"
        vector.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector.shapeLayer.fillColor = nil
        vector.shapeLayer.miterLimit = 4
        vector.shapeLayer.lineDashPattern = []
        vector.shapeLayer.lineDashPhase = 0
        vector.shapeLayer.lineWidth = 1
        vector.shapeLayer.path = CGPathCreateWithSVGString("M42.36,50.46c8.97,0,27.968,-0.517,31.8,-11.836 3.832,-11.319,7.927,-30.741,8.871,-38.624 -10.375,3.789,-18.586,5.1,-41.515,5.1 -22.929,0,-29.458,-1.048,-41.515,-5.1 1.355,10.171,4.854,26.434,8.871,38.249 4.017,11.815,24.512,12.211,33.489,12.211l0,0zM42.36,50.46")!

        let startPoint = CGPoint(x: 0.508, y: 0.498)
        let endPoint = CGPoint(x: 1.24699, y: 2.00308)
        let colors = [UIColor(red: 1, green: 0.725, blue: 0.561, alpha: 1).cgColor, UIColor(red: 0.996, green: 0.804, blue: 0.647, alpha: 1).cgColor, UIColor(red: 0.992, green: 0.867, blue: 0.714, alpha: 1).cgColor, UIColor(red: 0.988, green: 0.914, blue: 0.765, alpha: 1).cgColor, UIColor(red: 0.988, green: 0.937, blue: 0.792, alpha: 1).cgColor, UIColor(red: 0.988, green: 0.945, blue: 0.8, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.1), NSNumber(value: 0.21), NSNumber(value: 0.36), NSNumber(value: 0.55), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector1() {
        vector_1 = ShapeView(frame: CGRect(x: 9.63, y: 39.91, width: 80.73, height: 20.18))
        vector_1.backgroundColor = UIColor.clear
        vector_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_1.layer.borderColor = UIColor.clear.cgColor
        vector_1.layer.name = "vector_1"
        vector_1.layer.shadowColor = UIColor.clear.cgColor
        vector_1.layer.shadowOpacity = 1
        vector_1.layer.position = CGPoint(x: 9.63, y: 39.91)
        vector_1.layer.bounds = CGRect(x: 0, y: 0, width: 80.73, height: 20.18)
        vector_1.layer.masksToBounds = false
        vector_1.shapeLayer.name = "vector_1.shapeLayer"
        vector_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_1.shapeLayer.fillColor = nil
        vector_1.shapeLayer.miterLimit = 4
        vector_1.shapeLayer.lineDashPattern = []
        vector_1.shapeLayer.lineDashPhase = 0
        vector_1.shapeLayer.lineWidth = 1
        vector_1.shapeLayer.path = CGPathCreateWithSVGString("M38.166,20.163c-17.388,-0.079,-31.292,-2.528,-37.194,-6 0,0,-0.525,-2.742,-0.773,-4.16 -0.156,-0.881,-0.539,-1.976,0.511,-2.743 6.094,-4.468,23.673,-5.836,44.288,-5.728 0.972,0,23.652,-3.58,30.178,0.208 2.398,1.389,4.413,2.549,5.335,4.504 0.568,1.203,-0.142,3.953,-0.142,3.953l-0.929,4.719c-8.236,3.222,-23.261,5.349,-41.273,5.263l0,-0.014 0,0zM38.166,20.163")!

        let startPoint = CGPoint(x: 0.506, y: 0.528)
        let endPoint = CGPoint(x: 0.934498, y: 1.00946)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.77).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.5).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.28).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.13).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.03).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.18), NSNumber(value: 0.4), NSNumber(value: 0.6), NSNumber(value: 0.78), NSNumber(value: 0.92), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector2() {
        vector_2 = ShapeView(frame: CGRect(x: 6.42, y: 36.24, width: 86.7, height: 17.89))
        vector_2.backgroundColor = UIColor.clear
        vector_2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_2.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_2.layer.borderColor = UIColor.clear.cgColor
        vector_2.layer.name = "vector_2"
        vector_2.layer.shadowColor = UIColor.clear.cgColor
        vector_2.layer.shadowOpacity = 1
        vector_2.layer.position = CGPoint(x: 6.42, y: 36.24)
        vector_2.layer.bounds = CGRect(x: 0, y: 0, width: 86.7, height: 17.89)
        vector_2.layer.masksToBounds = false
        vector_2.shapeLayer.name = "vector_2.shapeLayer"
        vector_2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_2.shapeLayer.fillColor = UIColor(red: 0.988, green: 0.945, blue: 0.8, alpha: 1).cgColor
        vector_2.shapeLayer.miterLimit = 4
        vector_2.shapeLayer.lineDashPattern = []
        vector_2.shapeLayer.lineDashPhase = 0
        vector_2.shapeLayer.lineWidth = 1
        vector_2.shapeLayer.path = CGPathCreateWithSVGString("M0,0.072l1.644,12.141c0,0,10.597,5.676,43.364,5.676 29.493,0,40.268,-5.582,40.268,-5.582l1.423,-12.308c-14.168,2.852,-28.573,4.307,-43.016,4.344 -34.724,-0.232,-43.684,-4.272,-43.684,-4.272l0,0zM0,0.072")!


    }

    private func createVector3() {
        vector_3 = ShapeView(frame: CGRect(x: 6.42, y: 31.65, width: 86.7, height: 9.17))
        vector_3.backgroundColor = UIColor.clear
        vector_3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_3.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_3.layer.borderColor = UIColor.clear.cgColor
        vector_3.layer.name = "vector_3"
        vector_3.layer.shadowColor = UIColor.clear.cgColor
        vector_3.layer.shadowOpacity = 1
        vector_3.layer.position = CGPoint(x: 6.42, y: 31.65)
        vector_3.layer.bounds = CGRect(x: 0, y: 0, width: 86.7, height: 9.17)
        vector_3.layer.masksToBounds = false
        vector_3.shapeLayer.name = "vector_3.shapeLayer"
        vector_3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_3.shapeLayer.fillColor = UIColor(red: 1, green: 0.973, blue: 0.91, alpha: 1).cgColor
        vector_3.shapeLayer.miterLimit = 4
        vector_3.shapeLayer.lineDashPattern = []
        vector_3.shapeLayer.lineDashPhase = 0
        vector_3.shapeLayer.lineWidth = 1
        vector_3.shapeLayer.path = CGPathCreateWithSVGString("M43.35,9.17c23.942,0,43.35,-2.053,43.35,-4.585 0,-2.532,-19.409,-4.585,-43.35,-4.585 -23.942,0,-43.35,2.053,-43.35,4.585 0,2.532,19.408,4.585,43.35,4.585l0,0zM43.35,9.17")!


    }

    private func createVector4() {
        vector_4 = ShapeView(frame: CGRect(x: 6.42, y: 31.65, width: 86.7, height: 9.17))
        vector_4.backgroundColor = UIColor.clear
        vector_4.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_4.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_4.layer.borderColor = UIColor.clear.cgColor
        vector_4.layer.name = "vector_4"
        vector_4.layer.shadowColor = UIColor.clear.cgColor
        vector_4.layer.shadowOpacity = 1
        vector_4.layer.position = CGPoint(x: 6.42, y: 31.65)
        vector_4.layer.bounds = CGRect(x: 0, y: 0, width: 86.7, height: 9.17)
        vector_4.layer.masksToBounds = false
        vector_4.shapeLayer.name = "vector_4.shapeLayer"
        vector_4.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_4.shapeLayer.fillColor = nil
        vector_4.shapeLayer.miterLimit = 4
        vector_4.shapeLayer.lineDashPattern = []
        vector_4.shapeLayer.lineDashPhase = 0
        vector_4.shapeLayer.lineWidth = 1
        vector_4.shapeLayer.path = CGPathCreateWithSVGString("M43.35,9.17c23.942,0,43.35,-2.053,43.35,-4.585 0,-2.532,-19.409,-4.585,-43.35,-4.585 -23.942,0,-43.35,2.053,-43.35,4.585 0,2.532,19.408,4.585,43.35,4.585l0,0zM43.35,9.17")!

        let startPoint = CGPoint(x: 0.501, y: 0.502)
        let endPoint = CGPoint(x: 1.28818, y: 1.0066)
        let colors = [UIColor(red: 1, green: 0.655, blue: 0.541, alpha: 1).cgColor, UIColor(red: 1, green: 0.659, blue: 0.545, alpha: 0.98).cgColor, UIColor(red: 1, green: 0.675, blue: 0.557, alpha: 0.94).cgColor, UIColor(red: 1, green: 0.694, blue: 0.576, alpha: 0.86).cgColor, UIColor(red: 0.996, green: 0.725, blue: 0.608, alpha: 0.75).cgColor, UIColor(red: 0.996, green: 0.769, blue: 0.643, alpha: 0.61).cgColor, UIColor(red: 0.992, green: 0.816, blue: 0.686, alpha: 0.44).cgColor, UIColor(red: 0.992, green: 0.875, blue: 0.741, alpha: 0.24).cgColor, UIColor(red: 0.988, green: 0.941, blue: 0.8, alpha: 0.01).cgColor, UIColor(red: 0.988, green: 0.945, blue: 0.804, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.13), NSNumber(value: 0.25), NSNumber(value: 0.38), NSNumber(value: 0.5), NSNumber(value: 0.63), NSNumber(value: 0.75), NSNumber(value: 0.87), NSNumber(value: 0.99), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_4.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector5() {
        vector_5 = ShapeView(frame: CGRect(x: 13.3, y: 59.17, width: 33.03, height: 27.98))
        vector_5.backgroundColor = UIColor.clear
        vector_5.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_5.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_5.layer.borderColor = UIColor.clear.cgColor
        vector_5.layer.name = "vector_5"
        vector_5.layer.shadowColor = UIColor.clear.cgColor
        vector_5.layer.shadowOpacity = 1
        vector_5.layer.position = CGPoint(x: 13.3, y: 59.17)
        vector_5.layer.bounds = CGRect(x: 0, y: 0, width: 33.03, height: 27.98)
        vector_5.layer.masksToBounds = false
        vector_5.shapeLayer.name = "vector_5.shapeLayer"
        vector_5.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_5.shapeLayer.fillColor = nil
        vector_5.shapeLayer.miterLimit = 4
        vector_5.shapeLayer.lineDashPattern = []
        vector_5.shapeLayer.lineDashPhase = 0
        vector_5.shapeLayer.lineWidth = 1
        vector_5.shapeLayer.path = CGPathCreateWithSVGString("M32.795,16.793c-1.534,-7.579,-10.246,-14.964,-19.43,-16.502 -6.933,-1.158,-11.859,1.215,-13.365,5.763l2.495,9.295c1.057,2.062,2.483,3.913,4.209,5.462 8.604,7.665,14.734,7.15,14.734,7.15 7.779,0.358,12.755,-4.304,11.357,-11.168l0,0zM32.795,16.793")!

        let startPoint = CGPoint(x: 0.499, y: 0.498)
        let endPoint = CGPoint(x: 0.801602, y: 1.05941)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.76).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.53).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.34).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.19).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.09).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.02).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.16), NSNumber(value: 0.32), NSNumber(value: 0.49), NSNumber(value: 0.64), NSNumber(value: 0.78), NSNumber(value: 0.9), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_5.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector6() {
        vector_6 = ShapeView(frame: CGRect(x: 54.13, y: 59.17, width: 32.57, height: 27.98))
        vector_6.backgroundColor = UIColor.clear
        vector_6.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_6.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_6.layer.borderColor = UIColor.clear.cgColor
        vector_6.layer.name = "vector_6"
        vector_6.layer.shadowColor = UIColor.clear.cgColor
        vector_6.layer.shadowOpacity = 1
        vector_6.layer.position = CGPoint(x: 54.13, y: 59.17)
        vector_6.layer.bounds = CGRect(x: 0, y: 0, width: 32.57, height: 27.98)
        vector_6.layer.masksToBounds = false
        vector_6.shapeLayer.name = "vector_6.shapeLayer"
        vector_6.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_6.shapeLayer.fillColor = nil
        vector_6.shapeLayer.miterLimit = 4
        vector_6.shapeLayer.lineDashPattern = []
        vector_6.shapeLayer.lineDashPhase = 0
        vector_6.shapeLayer.lineWidth = 1
        vector_6.shapeLayer.path = CGPathCreateWithSVGString("M0.232,16.793c1.506,-7.579,10.096,-14.964,19.16,-16.502 6.837,-1.158,11.694,1.215,13.178,5.763l-2.46,9.295c-1.042,2.062,-2.449,3.913,-4.15,5.462 -8.484,7.665,-14.529,7.15,-14.529,7.15 -7.678,0.358,-12.577,-4.304,-11.199,-11.168l0,0zM0.232,16.793")!

        let startPoint = CGPoint(x: -262.749, y: 201.481)
        let endPoint = CGPoint(x: -250.91, y: 227.33)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.76).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.53).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.34).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.19).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.09).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.02).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.16), NSNumber(value: 0.32), NSNumber(value: 0.49), NSNumber(value: 0.64), NSNumber(value: 0.78), NSNumber(value: 0.9), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_6.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector7() {
        vector_7 = ShapeView(frame: CGRect(x: 22.48, y: 70.64, width: 12.84, height: 4.59))
        vector_7.backgroundColor = UIColor.clear
        vector_7.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_7.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_7.layer.borderColor = UIColor.clear.cgColor
        vector_7.layer.name = "vector_7"
        vector_7.layer.shadowColor = UIColor.clear.cgColor
        vector_7.layer.shadowOpacity = 1
        vector_7.layer.position = CGPoint(x: 22.48, y: 70.64)
        vector_7.layer.bounds = CGRect(x: 0, y: 0, width: 12.84, height: 4.59)
        vector_7.layer.masksToBounds = false
        vector_7.shapeLayer.name = "vector_7.shapeLayer"
        vector_7.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_7.shapeLayer.fillColor = nil
        vector_7.shapeLayer.miterLimit = 4
        vector_7.shapeLayer.lineDashPattern = []
        vector_7.shapeLayer.lineDashPhase = 0
        vector_7.shapeLayer.lineWidth = 1
        vector_7.shapeLayer.path = CGPathCreateWithSVGString("M7.103,0.5c3.526,0.791,6.075,2.243,5.701,3.231 -0.374,0.987,-3.546,1.147,-7.065,0.356 -3.519,-0.791,-6.082,-2.236,-5.701,-3.224 0.381,-0.987,3.54,-1.154,7.065,-0.363l0,0zM7.103,0.5")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1.59364, y: 0.873)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_7.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector8() {
        vector_8 = ShapeView(frame: CGRect(x: 60.09, y: 67.43, width: 22.48, height: 10.55))
        vector_8.backgroundColor = UIColor.clear
        vector_8.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_8.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_8.layer.borderColor = UIColor.clear.cgColor
        vector_8.layer.name = "vector_8"
        vector_8.layer.shadowColor = UIColor.clear.cgColor
        vector_8.layer.shadowOpacity = 1
        vector_8.layer.position = CGPoint(x: 60.09, y: 67.43)
        vector_8.layer.bounds = CGRect(x: 0, y: 0, width: 22.48, height: 10.55)
        vector_8.layer.masksToBounds = false
        vector_8.shapeLayer.name = "vector_8.shapeLayer"
        vector_8.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_8.shapeLayer.fillColor = nil
        vector_8.shapeLayer.miterLimit = 4
        vector_8.shapeLayer.lineDashPattern = []
        vector_8.shapeLayer.lineDashPhase = 0
        vector_8.shapeLayer.lineWidth = 1
        vector_8.shapeLayer.path = CGPathCreateWithSVGString("M10.042,1.158c-6.162,1.819,-10.637,5.138,-9.977,7.412 0.659,2.274,6.205,2.644,12.374,0.824 6.169,-1.819,10.637,-5.138,9.977,-7.412 -0.659,-2.274,-6.205,-2.651,-12.374,-0.824l0,0zM10.042,1.158")!

        let startPoint = CGPoint(x: 0.479, y: 0.477)
        let endPoint = CGPoint(x: 0.892476, y: 1.07624)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.78).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.5).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.29).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.13).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.04).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.17), NSNumber(value: 0.4), NSNumber(value: 0.6), NSNumber(value: 0.78), NSNumber(value: 0.92), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_8.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector9() {
        vector_9 = ShapeView(frame: CGRect(x: 17.89, y: 67.43, width: 22.48, height: 10.55))
        vector_9.backgroundColor = UIColor.clear
        vector_9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_9.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_9.layer.borderColor = UIColor.clear.cgColor
        vector_9.layer.name = "vector_9"
        vector_9.layer.shadowColor = UIColor.clear.cgColor
        vector_9.layer.shadowOpacity = 1
        vector_9.layer.position = CGPoint(x: 17.89, y: 67.43)
        vector_9.layer.bounds = CGRect(x: 0, y: 0, width: 22.48, height: 10.55)
        vector_9.layer.masksToBounds = false
        vector_9.shapeLayer.name = "vector_9.shapeLayer"
        vector_9.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_9.shapeLayer.fillColor = nil
        vector_9.shapeLayer.miterLimit = 4
        vector_9.shapeLayer.lineDashPattern = []
        vector_9.shapeLayer.lineDashPhase = 0
        vector_9.shapeLayer.lineWidth = 1
        vector_9.shapeLayer.path = CGPathCreateWithSVGString("M12.436,1.158c6.171,1.819,10.639,5.138,9.98,7.412 -0.66,2.274,-6.199,2.644,-12.377,0.824 -6.178,-1.819,-10.639,-5.138,-9.972,-7.412 0.667,-2.274,6.199,-2.651,12.37,-0.824l0,0 0,0zM12.436,1.158")!

        let startPoint = CGPoint(x: 0.522, y: 0.493)
        let endPoint = CGPoint(x: 0.935106, y: 1.09257)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.73).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.47).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.27).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.12).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.03).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.21), NSNumber(value: 0.42), NSNumber(value: 0.61), NSNumber(value: 0.78), NSNumber(value: 0.91), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_9.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector10() {
        vector_10 = ShapeView(frame: CGRect(x: 26.6, y: 63.3, width: 8.72, height: 10.55))
        vector_10.backgroundColor = UIColor.clear
        vector_10.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_10.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_10.layer.borderColor = UIColor.clear.cgColor
        vector_10.layer.name = "vector_10"
        vector_10.layer.shadowColor = UIColor.clear.cgColor
        vector_10.layer.shadowOpacity = 1
        vector_10.layer.position = CGPoint(x: 26.6, y: 63.3)
        vector_10.layer.bounds = CGRect(x: 0, y: 0, width: 8.72, height: 10.55)
        vector_10.layer.masksToBounds = false
        vector_10.shapeLayer.name = "vector_10.shapeLayer"
        vector_10.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_10.shapeLayer.fillColor = UIColor(red: 0, green: 0.149, blue: 0.247, alpha: 1).cgColor
        vector_10.shapeLayer.miterLimit = 4
        vector_10.shapeLayer.lineDashPattern = []
        vector_10.shapeLayer.lineDashPhase = 0
        vector_10.shapeLayer.lineWidth = 1
        vector_10.shapeLayer.path = CGPathCreateWithSVGString("M4.36,10.55c2.408,0,4.36,-2.362,4.36,-5.275 0,-2.913,-1.952,-5.275,-4.36,-5.275 -2.408,0,-4.36,2.362,-4.36,5.275 0,2.913,1.952,5.275,4.36,5.275l0,0zM4.36,10.55")!


    }

    private func createVector11() {
        vector_11 = ShapeView(frame: CGRect(x: 65.14, y: 63.3, width: 8.72, height: 10.55))
        vector_11.backgroundColor = UIColor.clear
        vector_11.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_11.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_11.layer.borderColor = UIColor.clear.cgColor
        vector_11.layer.name = "vector_11"
        vector_11.layer.shadowColor = UIColor.clear.cgColor
        vector_11.layer.shadowOpacity = 1
        vector_11.layer.position = CGPoint(x: 65.14, y: 63.3)
        vector_11.layer.bounds = CGRect(x: 0, y: 0, width: 8.72, height: 10.55)
        vector_11.layer.masksToBounds = false
        vector_11.shapeLayer.name = "vector_11.shapeLayer"
        vector_11.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_11.shapeLayer.fillColor = UIColor(red: 0, green: 0.149, blue: 0.247, alpha: 1).cgColor
        vector_11.shapeLayer.miterLimit = 4
        vector_11.shapeLayer.lineDashPattern = []
        vector_11.shapeLayer.lineDashPhase = 0
        vector_11.shapeLayer.lineWidth = 1
        vector_11.shapeLayer.path = CGPathCreateWithSVGString("M4.36,10.55c2.408,0,4.36,-2.362,4.36,-5.275 0,-2.913,-1.952,-5.275,-4.36,-5.275 -2.408,0,-4.36,2.362,-4.36,5.275 0,2.913,1.952,5.275,4.36,5.275l0,0zM4.36,10.55")!


    }

    private func createVector12() {
        vector_12 = ShapeView(frame: CGRect(x: 71.56, y: 69.72, width: 1.38, height: 1.38))
        vector_12.backgroundColor = UIColor.clear
        vector_12.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_12.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_12.layer.borderColor = UIColor.clear.cgColor
        vector_12.layer.name = "vector_12"
        vector_12.layer.shadowColor = UIColor.clear.cgColor
        vector_12.layer.shadowOpacity = 1
        vector_12.layer.position = CGPoint(x: 71.56, y: 69.72)
        vector_12.layer.bounds = CGRect(x: 0, y: 0, width: 1.38, height: 1.38)
        vector_12.layer.masksToBounds = false
        vector_12.shapeLayer.name = "vector_12.shapeLayer"
        vector_12.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_12.shapeLayer.fillColor = UIColor.white.cgColor
        vector_12.shapeLayer.miterLimit = 4
        vector_12.shapeLayer.lineDashPattern = []
        vector_12.shapeLayer.lineDashPhase = 0
        vector_12.shapeLayer.lineWidth = 1
        vector_12.shapeLayer.path = CGPathCreateWithSVGString("M0.949,0.051c0.167,0.068,0.301,0.198,0.373,0.363 0.072,0.165,0.077,0.352,0.013,0.52 -0.048,0.128,-0.134,0.239,-0.246,0.319 -0.112,0.079,-0.245,0.124,-0.382,0.127 -0.137,0.004,-0.272,-0.034,-0.388,-0.107 -0.116,-0.074,-0.207,-0.18,-0.262,-0.306 -0.055,-0.126,-0.071,-0.265,-0.047,-0.4 0.025,-0.135,0.089,-0.26,0.184,-0.358 0.096,-0.098,0.218,-0.166,0.353,-0.194 0.134,-0.028,0.274,-0.016,0.401,0.036l0,0zM0.949,0.051")!


    }

    private func createVectorstroke() {
        vectorstroke = ShapeView(frame: CGRect(x: 70.18, y: 64.22, width: 3.21, height: 5.05))
        vectorstroke.backgroundColor = UIColor.clear
        vectorstroke.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke.layer.borderColor = UIColor.clear.cgColor
        vectorstroke.layer.name = "vectorstroke"
        vectorstroke.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke.layer.shadowOpacity = 1
        vectorstroke.layer.position = CGPoint(x: 70.18, y: 64.22)
        vectorstroke.layer.bounds = CGRect(x: 0, y: 0, width: 3.21, height: 5.05)
        vectorstroke.layer.masksToBounds = false
        vectorstroke.shapeLayer.name = "vectorstroke.shapeLayer"
        vectorstroke.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke.shapeLayer.fillColor = UIColor.white.cgColor
        vectorstroke.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vectorstroke.shapeLayer.lineDashPattern = []
        vectorstroke.shapeLayer.lineDashPhase = 0
        vectorstroke.shapeLayer.lineWidth = 2
        vectorstroke.shapeLayer.path = CGPathCreateWithSVGString("M0.167,0.327c0.269,-0.369,0.77,-0.436,1.118,-0.151 0.58,0.476,1.054,1.081,1.386,1.774 0.333,0.692,0.517,1.454,0.538,2.23 0.013,0.466,-0.333,0.855,-0.773,0.869 -0.44,0.014,-0.807,-0.353,-0.82,-0.819 -0.015,-0.527,-0.139,-1.044,-0.365,-1.514 -0.226,-0.47,-0.547,-0.881,-0.942,-1.205 -0.348,-0.285,-0.412,-0.816,-0.142,-1.184l0,0zM0.167,0.327")!


    }

    private func createVector13() {
        vector_13 = ShapeView(frame: CGRect(x: 22.48, y: 70.64, width: 12.84, height: 4.59))
        vector_13.backgroundColor = UIColor.clear
        vector_13.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_13.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_13.layer.borderColor = UIColor.clear.cgColor
        vector_13.layer.name = "vector_13"
        vector_13.layer.shadowColor = UIColor.clear.cgColor
        vector_13.layer.shadowOpacity = 1
        vector_13.layer.position = CGPoint(x: 22.48, y: 70.64)
        vector_13.layer.bounds = CGRect(x: 0, y: 0, width: 12.84, height: 4.59)
        vector_13.layer.masksToBounds = false
        vector_13.shapeLayer.name = "vector_13.shapeLayer"
        vector_13.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_13.shapeLayer.fillColor = nil
        vector_13.shapeLayer.miterLimit = 4
        vector_13.shapeLayer.lineDashPattern = []
        vector_13.shapeLayer.lineDashPhase = 0
        vector_13.shapeLayer.lineWidth = 1
        vector_13.shapeLayer.path = CGPathCreateWithSVGString("M7.103,0.5c3.526,0.791,6.075,2.243,5.701,3.231 -0.374,0.987,-3.546,1.147,-7.065,0.356 -3.519,-0.791,-6.082,-2.236,-5.701,-3.224 0.381,-0.987,3.54,-1.154,7.065,-0.363l0,0zM7.103,0.5")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1.59364, y: 0.873)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_13.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector14() {
        vector_14 = ShapeView(frame: CGRect(x: 33.03, y: 69.72, width: 1.38, height: 1.38))
        vector_14.backgroundColor = UIColor.clear
        vector_14.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_14.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_14.layer.borderColor = UIColor.clear.cgColor
        vector_14.layer.name = "vector_14"
        vector_14.layer.shadowColor = UIColor.clear.cgColor
        vector_14.layer.shadowOpacity = 1
        vector_14.layer.position = CGPoint(x: 33.03, y: 69.72)
        vector_14.layer.bounds = CGRect(x: 0, y: 0, width: 1.38, height: 1.38)
        vector_14.layer.masksToBounds = false
        vector_14.shapeLayer.name = "vector_14.shapeLayer"
        vector_14.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_14.shapeLayer.fillColor = UIColor.white.cgColor
        vector_14.shapeLayer.miterLimit = 4
        vector_14.shapeLayer.lineDashPattern = []
        vector_14.shapeLayer.lineDashPhase = 0
        vector_14.shapeLayer.lineWidth = 1
        vector_14.shapeLayer.path = CGPathCreateWithSVGString("M0.925,0.041c0.129,0.047,0.241,0.131,0.322,0.242 0.081,0.111,0.127,0.244,0.132,0.381 0.005,0.137,-0.031,0.273,-0.103,0.39 -0.073,0.117,-0.178,0.209,-0.304,0.265 -0.125,0.056,-0.265,0.074,-0.4,0.05 -0.135,-0.023,-0.261,-0.087,-0.36,-0.182 -0.099,-0.095,-0.168,-0.218,-0.197,-0.352 -0.029,-0.134,-0.018,-0.274,0.033,-0.402 0.066,-0.167,0.195,-0.301,0.358,-0.374 0.164,-0.073,0.349,-0.08,0.518,-0.019l0,0 0,0zM0.925,0.041")!


    }

    private func createVector15() {
        vector_15 = ShapeView(frame: CGRect(x: 64.68, y: 70.64, width: 13.3, height: 4.59))
        vector_15.backgroundColor = UIColor.clear
        vector_15.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_15.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_15.layer.borderColor = UIColor.clear.cgColor
        vector_15.layer.name = "vector_15"
        vector_15.layer.shadowColor = UIColor.clear.cgColor
        vector_15.layer.shadowOpacity = 1
        vector_15.layer.position = CGPoint(x: 64.68, y: 70.64)
        vector_15.layer.bounds = CGRect(x: 0, y: 0, width: 13.3, height: 4.59)
        vector_15.layer.masksToBounds = false
        vector_15.shapeLayer.name = "vector_15.shapeLayer"
        vector_15.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_15.shapeLayer.fillColor = nil
        vector_15.shapeLayer.miterLimit = 4
        vector_15.shapeLayer.lineDashPattern = []
        vector_15.shapeLayer.lineDashPhase = 0
        vector_15.shapeLayer.lineWidth = 1
        vector_15.shapeLayer.path = CGPathCreateWithSVGString("M5.939,0.5c-3.646,0.791,-6.295,2.243,-5.9,3.231 0.395,0.987,3.668,1.147,7.322,0.356 3.654,-0.791,6.295,-2.236,5.9,-3.224 -0.395,-0.987,-3.668,-1.154,-7.322,-0.363l0,0zM5.939,0.5")!

        let startPoint = CGPoint(x: 176.2, y: 153.3)
        let endPoint = CGPoint(x: 183.12, y: 160.22)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_15.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector16() {
        vector_16 = ShapeView(frame: CGRect(x: 44.04, y: 78.9, width: 11.93, height: 8.72))
        vector_16.backgroundColor = UIColor.clear
        vector_16.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_16.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_16.layer.borderColor = UIColor.clear.cgColor
        vector_16.layer.name = "vector_16"
        vector_16.layer.shadowColor = UIColor.clear.cgColor
        vector_16.layer.shadowOpacity = 1
        vector_16.layer.position = CGPoint(x: 44.04, y: 78.9)
        vector_16.layer.bounds = CGRect(x: 0, y: 0, width: 11.93, height: 8.72)
        vector_16.layer.masksToBounds = false
        vector_16.shapeLayer.name = "vector_16.shapeLayer"
        vector_16.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_16.shapeLayer.fillColor = nil
        vector_16.shapeLayer.miterLimit = 4
        vector_16.shapeLayer.lineDashPattern = []
        vector_16.shapeLayer.lineDashPhase = 0
        vector_16.shapeLayer.lineWidth = 1
        vector_16.shapeLayer.path = CGPathCreateWithSVGString("M0.05,0l5.909,0c0,0,5.014,1.369,5.916,0 0.399,4.233,-1.336,8.72,-5.93,8.72 -3.902,0,-6.328,-3.528,-5.895,-8.466l0,-0.254 0,0zM0.05,0")!

        let startPoint = CGPoint(x: 0.51, y: 0.259)
        let endPoint = CGPoint(x: 1.20195, y: 0.806)
        let colors = [UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 1).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0.65).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0.19).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.33), NSNumber(value: 0.79), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_16.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector17() {
        vector_17 = ShapeView(frame: CGRect(x: 45.41, y: 74.77, width: 9.17, height: 9.17))
        vector_17.backgroundColor = UIColor.clear
        vector_17.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_17.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_17.layer.borderColor = UIColor.clear.cgColor
        vector_17.layer.name = "vector_17"
        vector_17.layer.shadowColor = UIColor.clear.cgColor
        vector_17.layer.shadowOpacity = 1
        vector_17.layer.position = CGPoint(x: 45.41, y: 74.77)
        vector_17.layer.bounds = CGRect(x: 0, y: 0, width: 9.17, height: 9.17)
        vector_17.layer.masksToBounds = false
        vector_17.shapeLayer.name = "vector_17.shapeLayer"
        vector_17.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_17.shapeLayer.fillColor = UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor
        vector_17.shapeLayer.miterLimit = 4
        vector_17.shapeLayer.lineDashPattern = []
        vector_17.shapeLayer.lineDashPhase = 0
        vector_17.shapeLayer.lineWidth = 1
        vector_17.shapeLayer.path = CGPathCreateWithSVGString("M0,0l9.17,0c0,0,-0.621,9.17,-4.578,9.17 -3.957,0,-4.592,-9.17,-4.592,-9.17l0,0zM0,0")!


    }

    private func createVector18() {
        vector_18 = ShapeView(frame: CGRect(x: 45.41, y: 74.77, width: 8.72, height: 8.26))
        vector_18.backgroundColor = UIColor.clear
        vector_18.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_18.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_18.layer.borderColor = UIColor.clear.cgColor
        vector_18.layer.name = "vector_18"
        vector_18.layer.shadowColor = UIColor.clear.cgColor
        vector_18.layer.shadowOpacity = 1
        vector_18.layer.position = CGPoint(x: 45.41, y: 74.77)
        vector_18.layer.bounds = CGRect(x: 0, y: 0, width: 8.72, height: 8.26)
        vector_18.layer.masksToBounds = false
        vector_18.shapeLayer.name = "vector_18.shapeLayer"
        vector_18.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_18.shapeLayer.fillColor = nil
        vector_18.shapeLayer.miterLimit = 4
        vector_18.shapeLayer.lineDashPattern = []
        vector_18.shapeLayer.lineDashPhase = 0
        vector_18.shapeLayer.lineWidth = 1
        vector_18.shapeLayer.path = CGPathCreateWithSVGString("M0,0.021l8.717,0.096c0,0,0.265,8.143,-4.25,8.143 -4.516,0,-4.467,-7.434,-4.467,-8.26l0,0.021 0,0zM0,0.021")!

        let startPoint = CGPoint(x: 0.5, y: 0.089)
        let endPoint = CGPoint(x: 0.501, y: 0.94)
        let colors = [UIColor(red: 0.91, green: 0.106, blue: 0, alpha: 1).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_18.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector19() {
        vector_19 = ShapeView(frame: CGRect(x: 44.49, y: 74.77, width: 11.01, height: 5.96))
        vector_19.backgroundColor = UIColor.clear
        vector_19.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_19.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_19.layer.borderColor = UIColor.clear.cgColor
        vector_19.layer.name = "vector_19"
        vector_19.layer.shadowColor = UIColor.clear.cgColor
        vector_19.layer.shadowOpacity = 1
        vector_19.layer.position = CGPoint(x: 44.49, y: 74.77)
        vector_19.layer.bounds = CGRect(x: 0, y: 0, width: 11.01, height: 5.96)
        vector_19.layer.masksToBounds = false
        vector_19.shapeLayer.name = "vector_19.shapeLayer"
        vector_19.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_19.shapeLayer.fillColor = nil
        vector_19.shapeLayer.miterLimit = 4
        vector_19.shapeLayer.lineDashPattern = []
        vector_19.shapeLayer.lineDashPhase = 0
        vector_19.shapeLayer.lineWidth = 1
        vector_19.shapeLayer.path = CGPathCreateWithSVGString("M1.798,5.582c0.7,-1.033,1.904,-2.888,3.577,-2.888 1.953,0,3.339,1.993,4.003,3.228 0.147,0.26,1.974,-0.852,1.575,-1.589 -1.071,-1.979,-2.947,-4.333,-5.599,-4.333 -2.247,0,-3.934,2.166,-5.011,3.755 -1.232,1.914,1.239,2.195,1.456,1.827l0,0zM1.798,5.582")!

        let startPoint = CGPoint(x: 0.505, y: 0.017)
        let endPoint = CGPoint(x: 0.504, y: 0.265)
        let colors = [UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 1).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.96).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.71).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.49).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.31).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.18).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.08).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.02).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.02), NSNumber(value: 0.13), NSNumber(value: 0.25), NSNumber(value: 0.36), NSNumber(value: 0.48), NSNumber(value: 0.59), NSNumber(value: 0.71), NSNumber(value: 0.83)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_19.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector20() {
        vector_20 = ShapeView(frame: CGRect(x: 49.08, y: 3.21, width: 6.42, height: 35.32))
        vector_20.backgroundColor = UIColor.clear
        vector_20.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_20.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_20.layer.borderColor = UIColor.clear.cgColor
        vector_20.layer.name = "vector_20"
        vector_20.layer.shadowColor = UIColor.clear.cgColor
        vector_20.layer.shadowOpacity = 1
        vector_20.layer.position = CGPoint(x: 49.08, y: 3.21)
        vector_20.layer.bounds = CGRect(x: 0, y: 0, width: 6.42, height: 35.32)
        vector_20.layer.masksToBounds = false
        vector_20.shapeLayer.name = "vector_20.shapeLayer"
        vector_20.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_20.shapeLayer.fillColor = nil
        vector_20.shapeLayer.miterLimit = 4
        vector_20.shapeLayer.lineDashPattern = []
        vector_20.shapeLayer.lineDashPhase = 0
        vector_20.shapeLayer.lineWidth = 1
        vector_20.shapeLayer.path = CGPathCreateWithSVGString("M0,34.679c0.298,-14.197,1.331,-28.507,1.858,-33.432 0.083,-0.438,0.235,-0.859,0.451,-1.247 0.853,0.521,1.553,2.558,2.399,1.959 -0.783,4.382,0.742,16.135,1.712,32.601 0,0,-1.033,0.881,-3.744,0.747 -2.212,-0.134,-2.676,-0.627,-2.676,-0.627l0,0zM0,34.679")!

        let startPoint = CGPoint(x: 0.5, y: 0.967)
        let endPoint = CGPoint(x: 0.582, y: 0.501)
        let colors = [UIColor(red: 0.325, green: 0.651, blue: 0.431, alpha: 1).cgColor, UIColor(red: 0.365, green: 0.702, blue: 0.471, alpha: 1).cgColor, UIColor(red: 0.467, green: 0.839, blue: 0.576, alpha: 1).cgColor, UIColor(red: 0.471, green: 0.843, blue: 0.58, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.31), NSNumber(value: 0.9), NSNumber(value: 0.92)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_20.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector21() {
        vector_21 = ShapeView(frame: CGRect(x: 42.2, y: 20.64, width: 6.88, height: 17.43))
        vector_21.backgroundColor = UIColor.clear
        vector_21.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_21.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_21.layer.borderColor = UIColor.clear.cgColor
        vector_21.layer.name = "vector_21"
        vector_21.layer.shadowColor = UIColor.clear.cgColor
        vector_21.layer.shadowOpacity = 1
        vector_21.layer.position = CGPoint(x: 42.2, y: 20.64)
        vector_21.layer.bounds = CGRect(x: 0, y: 0, width: 6.88, height: 17.43)
        vector_21.layer.masksToBounds = false
        vector_21.shapeLayer.name = "vector_21.shapeLayer"
        vector_21.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_21.shapeLayer.fillColor = nil
        vector_21.shapeLayer.miterLimit = 4
        vector_21.shapeLayer.lineDashPattern = []
        vector_21.shapeLayer.lineDashPhase = 0
        vector_21.shapeLayer.lineWidth = 1
        vector_21.shapeLayer.path = CGPathCreateWithSVGString("M6.88,17.093c0,0,-0.241,0.322,-2.256,0.322 -0.822,0.054,-1.648,-0.035,-2.44,-0.264 -0.184,-8.193,-0.901,-17.158,-2.185,-17.079 1.229,-0.153,2.475,-0.058,3.667,0.279 0,0,2.014,9.751,3.213,16.743l0,0zM6.88,17.093")!

        let startPoint = CGPoint(x: 0.497, y: 0.922)
        let endPoint = CGPoint(x: 0.502, y: 0.196)
        let colors = [UIColor(red: 0.325, green: 0.651, blue: 0.431, alpha: 1).cgColor, UIColor(red: 0.369, green: 0.71, blue: 0.475, alpha: 1).cgColor, UIColor(red: 0.471, green: 0.843, blue: 0.58, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.36), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_21.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector22() {
        vector_22 = ShapeView(frame: CGRect(x: 0, y: 19.27, width: 45.87, height: 40.82))
        vector_22.backgroundColor = UIColor.clear
        vector_22.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_22.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_22.layer.borderColor = UIColor.clear.cgColor
        vector_22.layer.name = "vector_22"
        vector_22.layer.shadowColor = UIColor.clear.cgColor
        vector_22.layer.shadowOpacity = 1
        vector_22.layer.position = CGPoint(x: 0, y: 19.27)
        vector_22.layer.bounds = CGRect(x: 0, y: 0, width: 45.87, height: 40.82)
        vector_22.layer.masksToBounds = false
        vector_22.shapeLayer.name = "vector_22.shapeLayer"
        vector_22.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_22.shapeLayer.fillColor = nil
        vector_22.shapeLayer.miterLimit = 4
        vector_22.shapeLayer.lineDashPattern = []
        vector_22.shapeLayer.lineDashPhase = 0
        vector_22.shapeLayer.lineWidth = 1
        vector_22.shapeLayer.path = CGPathCreateWithSVGString("M0,40.806c0,0,12.362,-1.266,17.762,-17.071 6.629,-19.377,22.451,-20.671,27.872,-21.59 3.311,-0.566,-29.08,-8.182,-37.953,9.193 -5.314,10.388,-3.73,24.977,-7.68,29.482l0,-0.014 0,0zM0,40.806")!

        let startPoint = CGPoint(x: -0.017, y: 0.984)
        let endPoint = CGPoint(x: 0.796, y: -0.137)
        let colors = [UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor, UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_22.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector23() {
        vector_23 = ShapeView(frame: CGRect(x: 50.92, y: 0, width: 56.88, height: 47.25))
        vector_23.backgroundColor = UIColor.clear
        vector_23.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_23.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_23.layer.borderColor = UIColor.clear.cgColor
        vector_23.layer.name = "vector_23"
        vector_23.layer.shadowColor = UIColor.clear.cgColor
        vector_23.layer.shadowOpacity = 1
        vector_23.layer.position = CGPoint(x: 50.92, y: 0)
        vector_23.layer.bounds = CGRect(x: 0, y: 0, width: 56.88, height: 47.25)
        vector_23.layer.masksToBounds = false
        vector_23.shapeLayer.name = "vector_23.shapeLayer"
        vector_23.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_23.shapeLayer.fillColor = nil
        vector_23.shapeLayer.miterLimit = 4
        vector_23.shapeLayer.lineDashPattern = []
        vector_23.shapeLayer.lineDashPhase = 0
        vector_23.shapeLayer.lineWidth = 1
        vector_23.shapeLayer.path = CGPathCreateWithSVGString("M56.824,47.222c0,0,-4.356,-20.764,-25.109,-25.24 -21.002,-4.526,-30.577,-11.848,-31.703,-18.366 -0.606,-3.487,21.566,-7.578,39.481,4.269 12.333,8.141,18.022,26.207,17.331,39.365l0,-0.028 0,0zM56.824,47.222")!

        let startPoint = CGPoint(x: 128.443, y: 114.493)
        let endPoint = CGPoint(x: 216.95, y: 135.82)
        let colors = [UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor, UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_23.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVectorstroke1() {
        vectorstroke_1 = ShapeView(frame: CGRect(x: 31.19, y: 64.22, width: 3.21, height: 5.05))
        vectorstroke_1.backgroundColor = UIColor.clear
        vectorstroke_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke_1.layer.borderColor = UIColor.clear.cgColor
        vectorstroke_1.layer.name = "vectorstroke_1"
        vectorstroke_1.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke_1.layer.shadowOpacity = 1
        vectorstroke_1.layer.position = CGPoint(x: 31.19, y: 64.22)
        vectorstroke_1.layer.bounds = CGRect(x: 0, y: 0, width: 3.21, height: 5.05)
        vectorstroke_1.layer.masksToBounds = false
        vectorstroke_1.shapeLayer.name = "vectorstroke_1.shapeLayer"
        vectorstroke_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke_1.shapeLayer.fillColor = UIColor.white.cgColor
        vectorstroke_1.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vectorstroke_1.shapeLayer.lineDashPattern = []
        vectorstroke_1.shapeLayer.lineDashPhase = 0
        vectorstroke_1.shapeLayer.lineWidth = 2
        vectorstroke_1.shapeLayer.path = CGPathCreateWithSVGString("M0.167,0.327c0.269,-0.369,0.77,-0.436,1.118,-0.151 0.58,0.476,1.054,1.081,1.386,1.774 0.333,0.692,0.517,1.454,0.538,2.23 0.013,0.466,-0.333,0.855,-0.773,0.869 -0.44,0.014,-0.807,-0.353,-0.82,-0.819 -0.015,-0.527,-0.139,-1.044,-0.365,-1.514 -0.226,-0.47,-0.547,-0.881,-0.942,-1.205 -0.348,-0.285,-0.412,-0.816,-0.142,-1.184l0,0zM0.167,0.327")!


    }

    private func createVector24() {
        vector_24 = ShapeView(frame: CGRect(x: 0, y: 21.1, width: 45.87, height: 39.45))
        vector_24.backgroundColor = UIColor.clear
        vector_24.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_24.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_24.layer.borderColor = UIColor.clear.cgColor
        vector_24.layer.name = "vector_24"
        vector_24.layer.shadowColor = UIColor.clear.cgColor
        vector_24.layer.shadowOpacity = 1
        vector_24.layer.position = CGPoint(x: 0, y: 21.1)
        vector_24.layer.bounds = CGRect(x: 0, y: 0, width: 45.87, height: 39.45)
        vector_24.layer.masksToBounds = false
        vector_24.shapeLayer.name = "vector_24.shapeLayer"
        vector_24.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_24.shapeLayer.fillColor = nil
        vector_24.shapeLayer.miterLimit = 4
        vector_24.shapeLayer.lineDashPattern = []
        vector_24.shapeLayer.lineDashPhase = 0
        vector_24.shapeLayer.lineWidth = 1
        vector_24.shapeLayer.path = CGPathCreateWithSVGString("M0,39.2c0,0,22.495,2.838,30.35,-10.592 7.259,-12.401,4.667,-20.184,15.52,-28.286 0,-0.624,-22.14,-2.057,-28.923,15.225 -4.972,12.628,-6.229,18.048,-16.947,23.653l0,0 0,0zM0,39.2")!

        let startPoint = CGPoint(x: 0.12, y: 1.107)
        let endPoint = CGPoint(x: 0.933, y: -0.056)
        let colors = [UIColor(red: 0.957, green: 0.792, blue: 0.216, alpha: 0.2).cgColor, UIColor(red: 0.957, green: 0.792, blue: 0.216, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_24.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector25() {
        vector_25 = ShapeView(frame: CGRect(x: 50.92, y: 3.21, width: 56.88, height: 44.04))
        vector_25.backgroundColor = UIColor.clear
        vector_25.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_25.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_25.layer.borderColor = UIColor.clear.cgColor
        vector_25.layer.name = "vector_25"
        vector_25.layer.shadowColor = UIColor.clear.cgColor
        vector_25.layer.shadowOpacity = 1
        vector_25.layer.position = CGPoint(x: 50.92, y: 3.21)
        vector_25.layer.bounds = CGRect(x: 0, y: 0, width: 56.88, height: 44.04)
        vector_25.layer.masksToBounds = false
        vector_25.shapeLayer.name = "vector_25.shapeLayer"
        vector_25.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_25.shapeLayer.fillColor = nil
        vector_25.shapeLayer.miterLimit = 4
        vector_25.shapeLayer.lineDashPattern = []
        vector_25.shapeLayer.lineDashPhase = 0
        vector_25.shapeLayer.lineWidth = 1
        vector_25.shapeLayer.path = CGPathCreateWithSVGString("M0,1.295c0,0,1.149,24.871,24.48,31.059 21.813,5.783,30.176,3.789,32.389,11.68 0.135,0.475,-0.709,-26.311,-23.82,-33.805 -15.195,-4.967,-27.403,-1.994,-32.631,-10.225 0,0,0,-0.071,-0.17,0.39 -0.109,0.293,-0.192,0.594,-0.248,0.901l0,0 0,0zM0,1.295")!

        let startPoint = CGPoint(x: 0.973, y: 0.46)
        let endPoint = CGPoint(x: 0.026, y: 0.541)
        let colors = [UIColor(red: 1, green: 0.792, blue: 0, alpha: 0.6).cgColor, UIColor(red: 1, green: 0.792, blue: 0, alpha: 0.2).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_25.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVectorstroke2() {
        vectorstroke_2 = ShapeView(frame: CGRect(x: 43.58, y: 71.56, width: 12.84, height: 14.22))
        vectorstroke_2.backgroundColor = UIColor.clear
        vectorstroke_2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke_2.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke_2.layer.borderColor = UIColor.clear.cgColor
        vectorstroke_2.layer.name = "vectorstroke_2"
        vectorstroke_2.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke_2.layer.shadowOpacity = 1
        vectorstroke_2.layer.position = CGPoint(x: 43.58, y: 71.56)
        vectorstroke_2.layer.bounds = CGRect(x: 0, y: 0, width: 12.84, height: 14.22)
        vectorstroke_2.layer.masksToBounds = false
        vectorstroke_2.shapeLayer.name = "vectorstroke_2.shapeLayer"
        vectorstroke_2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke_2.shapeLayer.fillColor = nil
        vectorstroke_2.shapeLayer.lineDashPattern = []
        vectorstroke_2.shapeLayer.lineDashPhase = 0
        vectorstroke_2.shapeLayer.lineWidth = 4
        vectorstroke_2.shapeLayer.path = CGPathCreateWithSVGString("M6.42,3.404c-1.469,0,-3.028,1.442,-3.028,3.706 0,2.265,1.559,3.706,3.028,3.706 1.469,0,3.028,-1.442,3.028,-3.706 0,-2.265,-1.559,-3.706,-3.028,-3.706l0,0zM0,7.11c0,-3.709,2.671,-7.11,6.42,-7.11 3.749,0,6.42,3.401,6.42,7.11 0,3.709,-2.671,7.11,-6.42,7.11 -3.749,0,-6.42,-3.401,-6.42,-7.11l0,0zM0,7.11")!

        let startPoint = CGPoint(x: 107.861, y: 122.97)
        let endPoint = CGPoint(x: 114.724, y: 129.607)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vectorstroke_2.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVectorstroke3() {
        vectorstroke_3 = ShapeView(frame: CGRect(x: 48.16, y: 72.48, width: 5.96, height: 2.29))
        vectorstroke_3.backgroundColor = UIColor.clear
        vectorstroke_3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke_3.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke_3.layer.borderColor = UIColor.clear.cgColor
        vectorstroke_3.layer.name = "vectorstroke_3"
        vectorstroke_3.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke_3.layer.shadowOpacity = 1
        vectorstroke_3.layer.position = CGPoint(x: 48.16, y: 72.48)
        vectorstroke_3.layer.bounds = CGRect(x: 0, y: 0, width: 5.96, height: 2.29)
        vectorstroke_3.layer.masksToBounds = false
        vectorstroke_3.shapeLayer.name = "vectorstroke_3.shapeLayer"
        vectorstroke_3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke_3.shapeLayer.fillColor = UIColor.white.cgColor
        vectorstroke_3.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vectorstroke_3.shapeLayer.lineDashPattern = []
        vectorstroke_3.shapeLayer.lineDashPhase = 0
        vectorstroke_3.shapeLayer.lineWidth = 1
        vectorstroke_3.shapeLayer.path = CGPathCreateWithSVGString("M1.954,0l0,0c1.447,0.01,2.834,0.565,3.872,1.548 0.175,0.166,0.18,0.44,0.009,0.611 -0.17,0.171,-0.451,0.175,-0.626,0.009 -0.874,-0.827,-2.041,-1.295,-3.259,-1.304 -0.466,0.002,-0.93,0.072,-1.375,0.208 -0.233,0.071,-0.482,-0.056,-0.555,-0.283 -0.073,-0.228,0.057,-0.47,0.29,-0.541 0.53,-0.162,1.083,-0.245,1.638,-0.248l0.005,-0 0,0zM1.954,0")!


    }

    private func createGroup488() {
        group488 = UIView(frame: CGRect(x: 0, y: 0, width: 208, height: 420.88))
        group488.backgroundColor = UIColor.clear
        group488.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group488.layer.shadowOffset = CGSize(width: 0, height: 0)
        group488.layer.borderWidth = 1
        group488.layer.borderColor = UIColor.clear.cgColor
        group488.layer.name = "group488"
        group488.layer.shadowColor = UIColor.clear.cgColor
        group488.layer.shadowOpacity = 1
        group488.layer.position = CGPoint(x: 0, y: 0)
        group488.layer.bounds = CGRect(x: 0, y: 0, width: 208, height: 420.88)
        group488.layer.masksToBounds = false

    }

    private func createIphone12black() {
        iphone12black = UIView(frame: CGRect(x: 0, y: 0, width: 208, height: 420.88))
        iphone12black.backgroundColor = UIColor.clear
        iphone12black.layer.anchorPoint = CGPoint(x: 0, y: 0)
        iphone12black.layer.shadowOffset = CGSize(width: 0, height: 0)
        iphone12black.layer.borderWidth = 1
        iphone12black.layer.borderColor = UIColor.clear.cgColor
        iphone12black.layer.name = "iphone12black"
        iphone12black.layer.shadowColor = UIColor.clear.cgColor
        iphone12black.layer.shadowOpacity = 1
        iphone12black.layer.position = CGPoint(x: 0, y: 0)
        iphone12black.layer.bounds = CGRect(x: 0, y: 0, width: 208, height: 420.88)
        iphone12black.layer.masksToBounds = false

    }

    private func createBlack() {
        black = ShapeView(frame: CGRect(x: 0, y: 0, width: 208, height: 420.88))
        black.backgroundColor = UIColor.clear
        black.layer.anchorPoint = CGPoint(x: 0, y: 0)
        black.layer.shadowOffset = CGSize(width: 0, height: 0)
        black.layer.borderColor = UIColor.clear.cgColor
        black.layer.name = "black"
        black.layer.shadowColor = UIColor.clear.cgColor
        black.layer.shadowOpacity = 1
        black.layer.position = CGPoint(x: 0, y: 0)
        black.layer.bounds = CGRect(x: 0, y: 0, width: 208, height: 420.88)
        black.layer.masksToBounds = false
        black.shapeLayer.name = "black.shapeLayer"
        black.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        black.shapeLayer.fillColor = UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 1).cgColor
        black.shapeLayer.miterLimit = 4
        black.shapeLayer.lineDashPattern = []
        black.shapeLayer.lineDashPhase = 0
        black.shapeLayer.lineWidth = 1
        black.shapeLayer.path = CGPathCreateWithSVGString("M1.434,47.74c0,-16.711,0,-25.066,3.252,-31.448 2.861,-5.614,7.425,-10.179,13.039,-13.039 6.383,-3.252,14.738,-3.252,31.448,-3.252l109.652,0c16.71,0,25.065,0,31.448,3.252 5.614,2.861,10.179,7.425,13.039,13.039 3.252,6.383,3.252,14.738,3.252,31.448l0,60.421 0.861,0c0.317,0,0.574,0.257,0.574,0.574l0,48.772c0,0.317,-0.257,0.574,-0.574,0.574l-0.861,0 0,215.059c0,16.711,0,25.066,-3.252,31.448 -2.86,5.614,-7.425,10.179,-13.039,13.04 -6.383,3.252,-14.738,3.252,-31.448,3.252l-109.652,0c-16.71,0,-25.066,0,-31.448,-3.252 -5.614,-2.861,-10.179,-7.426,-13.039,-13.04 -3.252,-6.382,-3.252,-14.737,-3.252,-31.448l0,-205.018 -0.861,0c-0.317,0,-0.574,-0.257,-0.574,-0.574l0,-30.984c0,-0.317,0.257,-0.574,0.574,-0.574l0.861,0 0,-7.173 -0.861,0c-0.317,0,-0.574,-0.257,-0.574,-0.573l0,-30.985c0,-0.317,0.257,-0.574,0.574,-0.574l0.861,0 0,-13.484 -0.861,0c-0.317,0,-0.574,-0.257,-0.574,-0.574l0,-15.493c0,-0.317,0.257,-0.574,0.574,-0.574l0.861,0 0,-18.821 0,0zM1.434,47.74")!


    }

    private func createWhite() {
        white = ShapeView(frame: CGRect(x: 0, y: 0, width: 208, height: 420.88))
        white.backgroundColor = UIColor.clear
        white.layer.anchorPoint = CGPoint(x: 0, y: 0)
        white.alpha = 0
        white.layer.shadowOffset = CGSize(width: 0, height: 0)
        white.layer.borderColor = UIColor.clear.cgColor
        white.layer.name = "white"
        white.layer.shadowColor = UIColor.clear.cgColor
        white.layer.shadowOpacity = 1
        white.layer.position = CGPoint(x: 0, y: 0)
        white.layer.bounds = CGRect(x: 0, y: 0, width: 208, height: 420.88)
        white.layer.masksToBounds = false
        white.shapeLayer.name = "white.shapeLayer"
        white.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        white.shapeLayer.fillColor = UIColor(red: 0.929, green: 0.91, blue: 0.906, alpha: 1).cgColor
        white.shapeLayer.miterLimit = 4
        white.shapeLayer.lineDashPattern = []
        white.shapeLayer.lineDashPhase = 0
        white.shapeLayer.lineWidth = 1
        white.shapeLayer.path = CGPathCreateWithSVGString("M1.434,47.74c0,-16.711,0,-25.066,3.252,-31.448 2.861,-5.614,7.425,-10.179,13.039,-13.039 6.383,-3.252,14.738,-3.252,31.448,-3.252l109.652,0c16.71,0,25.065,0,31.448,3.252 5.614,2.861,10.179,7.425,13.039,13.039 3.252,6.383,3.252,14.738,3.252,31.448l0,60.421 0.861,0c0.317,0,0.574,0.257,0.574,0.574l0,48.772c0,0.317,-0.257,0.574,-0.574,0.574l-0.861,0 0,215.059c0,16.711,0,25.066,-3.252,31.448 -2.86,5.614,-7.425,10.179,-13.039,13.04 -6.383,3.252,-14.738,3.252,-31.448,3.252l-109.652,0c-16.71,0,-25.066,0,-31.448,-3.252 -5.614,-2.861,-10.179,-7.426,-13.039,-13.04 -3.252,-6.382,-3.252,-14.737,-3.252,-31.448l0,-205.018 -0.861,0c-0.317,0,-0.574,-0.257,-0.574,-0.574l0,-30.984c0,-0.317,0.257,-0.574,0.574,-0.574l0.861,0 0,-7.173 -0.861,0c-0.317,0,-0.574,-0.257,-0.574,-0.573l0,-30.985c0,-0.317,0.257,-0.574,0.574,-0.574l0.861,0 0,-13.484 -0.861,0c-0.317,0,-0.574,-0.257,-0.574,-0.574l0,-15.493c0,-0.317,0.257,-0.574,0.574,-0.574l0.861,0 0,-18.821 0,0zM1.434,47.74")!


    }

    private func createProductRed() {
        productRed = ShapeView(frame: CGRect(x: 0, y: 0, width: 208, height: 420.88))
        productRed.backgroundColor = UIColor.clear
        productRed.layer.anchorPoint = CGPoint(x: 0, y: 0)
        productRed.alpha = 0
        productRed.layer.shadowOffset = CGSize(width: 0, height: 0)
        productRed.layer.borderColor = UIColor.clear.cgColor
        productRed.layer.name = "productRed"
        productRed.layer.shadowColor = UIColor.clear.cgColor
        productRed.layer.shadowOpacity = 1
        productRed.layer.position = CGPoint(x: 0, y: 0)
        productRed.layer.bounds = CGRect(x: 0, y: 0, width: 208, height: 420.88)
        productRed.layer.masksToBounds = false
        productRed.shapeLayer.name = "productRed.shapeLayer"
        productRed.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        productRed.shapeLayer.fillColor = UIColor(red: 0.808, green: 0.067, blue: 0.072, alpha: 1).cgColor
        productRed.shapeLayer.miterLimit = 4
        productRed.shapeLayer.lineDashPattern = []
        productRed.shapeLayer.lineDashPhase = 0
        productRed.shapeLayer.lineWidth = 1
        productRed.shapeLayer.path = CGPathCreateWithSVGString("M1.434,47.74c0,-16.711,0,-25.066,3.252,-31.448 2.861,-5.614,7.425,-10.179,13.039,-13.039 6.383,-3.252,14.738,-3.252,31.448,-3.252l109.652,0c16.71,0,25.065,0,31.448,3.252 5.614,2.861,10.179,7.425,13.039,13.039 3.252,6.383,3.252,14.738,3.252,31.448l0,60.421 0.861,0c0.317,0,0.574,0.257,0.574,0.574l0,48.772c0,0.317,-0.257,0.574,-0.574,0.574l-0.861,0 0,215.059c0,16.711,0,25.066,-3.252,31.448 -2.86,5.614,-7.425,10.179,-13.039,13.04 -6.383,3.252,-14.738,3.252,-31.448,3.252l-109.652,0c-16.71,0,-25.066,0,-31.448,-3.252 -5.614,-2.861,-10.179,-7.426,-13.039,-13.04 -3.252,-6.382,-3.252,-14.737,-3.252,-31.448l0,-205.018 -0.861,0c-0.317,0,-0.574,-0.257,-0.574,-0.574l0,-30.984c0,-0.317,0.257,-0.574,0.574,-0.574l0.861,0 0,-7.173 -0.861,0c-0.317,0,-0.574,-0.257,-0.574,-0.573l0,-30.985c0,-0.317,0.257,-0.574,0.574,-0.574l0.861,0 0,-13.484 -0.861,0c-0.317,0,-0.574,-0.257,-0.574,-0.574l0,-15.493c0,-0.317,0.257,-0.574,0.574,-0.574l0.861,0 0,-18.821 0,0zM1.434,47.74")!


    }

    private func createGreen() {
        green = ShapeView(frame: CGRect(x: 0, y: 0, width: 208, height: 420.88))
        green.backgroundColor = UIColor.clear
        green.layer.anchorPoint = CGPoint(x: 0, y: 0)
        green.alpha = 0
        green.layer.shadowOffset = CGSize(width: 0, height: 0)
        green.layer.borderColor = UIColor.clear.cgColor
        green.layer.name = "green"
        green.layer.shadowColor = UIColor.clear.cgColor
        green.layer.shadowOpacity = 1
        green.layer.position = CGPoint(x: 0, y: 0)
        green.layer.bounds = CGRect(x: 0, y: 0, width: 208, height: 420.88)
        green.layer.masksToBounds = false
        green.shapeLayer.name = "green.shapeLayer"
        green.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        green.shapeLayer.fillColor = UIColor(red: 0.667, green: 0.816, blue: 0.631, alpha: 1).cgColor
        green.shapeLayer.miterLimit = 4
        green.shapeLayer.lineDashPattern = []
        green.shapeLayer.lineDashPhase = 0
        green.shapeLayer.lineWidth = 1
        green.shapeLayer.path = CGPathCreateWithSVGString("M1.434,47.74c0,-16.711,0,-25.066,3.252,-31.448 2.861,-5.614,7.425,-10.179,13.039,-13.039 6.383,-3.252,14.738,-3.252,31.448,-3.252l109.652,0c16.71,0,25.065,0,31.448,3.252 5.614,2.861,10.179,7.425,13.039,13.039 3.252,6.383,3.252,14.738,3.252,31.448l0,60.421 0.861,0c0.317,0,0.574,0.257,0.574,0.574l0,48.772c0,0.317,-0.257,0.574,-0.574,0.574l-0.861,0 0,215.059c0,16.711,0,25.066,-3.252,31.448 -2.86,5.614,-7.425,10.179,-13.039,13.04 -6.383,3.252,-14.738,3.252,-31.448,3.252l-109.652,0c-16.71,0,-25.066,0,-31.448,-3.252 -5.614,-2.861,-10.179,-7.426,-13.039,-13.04 -3.252,-6.382,-3.252,-14.737,-3.252,-31.448l0,-205.018 -0.861,0c-0.317,0,-0.574,-0.257,-0.574,-0.574l0,-30.984c0,-0.317,0.257,-0.574,0.574,-0.574l0.861,0 0,-7.173 -0.861,0c-0.317,0,-0.574,-0.257,-0.574,-0.573l0,-30.985c0,-0.317,0.257,-0.574,0.574,-0.574l0.861,0 0,-13.484 -0.861,0c-0.317,0,-0.574,-0.257,-0.574,-0.574l0,-15.493c0,-0.317,0.257,-0.574,0.574,-0.574l0.861,0 0,-18.821 0,0zM1.434,47.74")!


    }

    private func createBlue() {
        blue = ShapeView(frame: CGRect(x: 0, y: 0, width: 208, height: 420.88))
        blue.backgroundColor = UIColor.clear
        blue.layer.anchorPoint = CGPoint(x: 0, y: 0)
        blue.alpha = 0
        blue.layer.shadowOffset = CGSize(width: 0, height: 0)
        blue.layer.borderColor = UIColor.clear.cgColor
        blue.layer.name = "blue"
        blue.layer.shadowColor = UIColor.clear.cgColor
        blue.layer.shadowOpacity = 1
        blue.layer.position = CGPoint(x: 0, y: 0)
        blue.layer.bounds = CGRect(x: 0, y: 0, width: 208, height: 420.88)
        blue.layer.masksToBounds = false
        blue.shapeLayer.name = "blue.shapeLayer"
        blue.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        blue.shapeLayer.fillColor = UIColor(red: 0.079, green: 0.271, blue: 0.442, alpha: 1).cgColor
        blue.shapeLayer.miterLimit = 4
        blue.shapeLayer.lineDashPattern = []
        blue.shapeLayer.lineDashPhase = 0
        blue.shapeLayer.lineWidth = 1
        blue.shapeLayer.path = CGPathCreateWithSVGString("M1.434,47.74c0,-16.711,0,-25.066,3.252,-31.448 2.861,-5.614,7.425,-10.179,13.039,-13.039 6.383,-3.252,14.738,-3.252,31.448,-3.252l109.652,0c16.71,0,25.065,0,31.448,3.252 5.614,2.861,10.179,7.425,13.039,13.039 3.252,6.383,3.252,14.738,3.252,31.448l0,60.421 0.861,0c0.317,0,0.574,0.257,0.574,0.574l0,48.772c0,0.317,-0.257,0.574,-0.574,0.574l-0.861,0 0,215.059c0,16.711,0,25.066,-3.252,31.448 -2.86,5.614,-7.425,10.179,-13.039,13.04 -6.383,3.252,-14.738,3.252,-31.448,3.252l-109.652,0c-16.71,0,-25.066,0,-31.448,-3.252 -5.614,-2.861,-10.179,-7.426,-13.039,-13.04 -3.252,-6.382,-3.252,-14.737,-3.252,-31.448l0,-205.018 -0.861,0c-0.317,0,-0.574,-0.257,-0.574,-0.574l0,-30.984c0,-0.317,0.257,-0.574,0.574,-0.574l0.861,0 0,-7.173 -0.861,0c-0.317,0,-0.574,-0.257,-0.574,-0.573l0,-30.985c0,-0.317,0.257,-0.574,0.574,-0.574l0.861,0 0,-13.484 -0.861,0c-0.317,0,-0.574,-0.257,-0.574,-0.574l0,-15.493c0,-0.317,0.257,-0.574,0.574,-0.574l0.861,0 0,-18.821 0,0zM1.434,47.74")!


    }

    private func createShadows() {
        shadows = UIView(frame: CGRect(x: 0, y: 0, width: 208, height: 420.88))
        shadows.backgroundColor = UIColor.clear
        shadows.layer.anchorPoint = CGPoint(x: 0, y: 0)
        shadows.layer.shadowOffset = CGSize(width: 0, height: 0)
        shadows.layer.borderWidth = 1
        shadows.layer.borderColor = UIColor.clear.cgColor
        shadows.layer.name = "shadows"
        shadows.layer.shadowColor = UIColor.clear.cgColor
        shadows.layer.shadowOpacity = 1
        shadows.layer.position = CGPoint(x: 0, y: 0)
        shadows.layer.bounds = CGRect(x: 0, y: 0, width: 208, height: 420.88)
        shadows.layer.masksToBounds = false

    }

    private func createHighlights() {
        highlights = UIView(frame: CGRect(x: 0, y: 0, width: 208, height: 420.88))
        highlights.backgroundColor = UIColor.clear
        highlights.layer.anchorPoint = CGPoint(x: 0, y: 0)
        highlights.layer.shadowOffset = CGSize(width: 0, height: 0)
        highlights.layer.borderWidth = 1
        highlights.layer.borderColor = UIColor.clear.cgColor
        highlights.layer.name = "highlights"
        highlights.layer.shadowColor = UIColor.clear.cgColor
        highlights.layer.shadowOpacity = 1
        highlights.layer.position = CGPoint(x: 0, y: 0)
        highlights.layer.bounds = CGRect(x: 0, y: 0, width: 208, height: 420.88)
        highlights.layer.masksToBounds = false

    }

    private func createGroup11() {
        group11 = UIView(frame: CGRect(x: 11.48, y: 10.33, width: 185.05, height: 400.22))
        group11.backgroundColor = UIColor.clear
        group11.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group11.layer.shadowOffset = CGSize(width: 0, height: 0)
        group11.layer.borderWidth = 1
        group11.layer.borderColor = UIColor.clear.cgColor
        group11.layer.name = "group11"
        group11.layer.shadowColor = UIColor.clear.cgColor
        group11.layer.shadowOpacity = 1
        group11.layer.position = CGPoint(x: 11.48, y: 10.33)
        group11.layer.bounds = CGRect(x: 0, y: 0, width: 185.05, height: 400.22)
        group11.layer.masksToBounds = false

    }

    private func createGroup9() {
        group9 = UIView(frame: CGRect(x: 92.95, y: 11.76, width: 35, height: 8.03))
        group9.backgroundColor = UIColor.clear
        group9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group9.layer.shadowOffset = CGSize(width: 0, height: 0)
        group9.layer.borderWidth = 1
        group9.layer.borderColor = UIColor.clear.cgColor
        group9.layer.name = "group9"
        group9.layer.shadowColor = UIColor.clear.cgColor
        group9.layer.shadowOpacity = 1
        group9.layer.position = CGPoint(x: 92.95, y: 11.76)
        group9.layer.bounds = CGRect(x: 0, y: 0, width: 35, height: 8.03)
        group9.layer.masksToBounds = false

    }

    private func createRectangle17() {
        rectangle17 = ShapeView(frame: CGRect(x: 0, y: 2.01, width: 22.38, height: 4.02))
        rectangle17.backgroundColor = UIColor.clear
        rectangle17.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle17.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle17.layer.borderColor = UIColor.clear.cgColor
        rectangle17.layer.name = "rectangle17"
        rectangle17.layer.shadowColor = UIColor.clear.cgColor
        rectangle17.layer.shadowOpacity = 1
        rectangle17.layer.position = CGPoint(x: 0, y: 2.01)
        rectangle17.layer.bounds = CGRect(x: 0, y: 0, width: 22.38, height: 4.02)
        rectangle17.layer.masksToBounds = false
        rectangle17.shapeLayer.name = "rectangle17.shapeLayer"
        rectangle17.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle17.shapeLayer.fillColor = UIColor(red: 0.086, green: 0.086, blue: 0.086, alpha: 1).cgColor
        rectangle17.shapeLayer.miterLimit = 4
        rectangle17.shapeLayer.lineDashPattern = []
        rectangle17.shapeLayer.lineDashPhase = 0
        rectangle17.shapeLayer.lineWidth = 1
        rectangle17.shapeLayer.path = CGPathCreateWithSVGString("M0,2.01c0,-1.11,0.899,-2.01,2.008,-2.01l18.363,0c1.109,0,2.008,0.9,2.008,2.01 0,1.11,-0.899,2.01,-2.008,2.01l-18.363,0c-1.109,0,-2.008,-0.9,-2.008,-2.01l0,0zM0,2.01")!


    }

    private func createRectangle21() {
        rectangle21 = ShapeView(frame: CGRect(x: 0, y: 2.01, width: 22.38, height: 4.02))
        rectangle21.backgroundColor = UIColor.clear
        rectangle21.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle21.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle21.layer.borderColor = UIColor.clear.cgColor
        rectangle21.layer.name = "rectangle21"
        rectangle21.layer.shadowColor = UIColor.clear.cgColor
        rectangle21.layer.shadowOpacity = 1
        rectangle21.layer.position = CGPoint(x: 0, y: 2.01)
        rectangle21.layer.bounds = CGRect(x: 0, y: 0, width: 22.38, height: 4.02)
        rectangle21.layer.masksToBounds = false
        rectangle21.shapeLayer.name = "rectangle21.shapeLayer"
        rectangle21.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle21.shapeLayer.strokeColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.32).cgColor
        rectangle21.shapeLayer.fillColor = nil
        rectangle21.shapeLayer.miterLimit = 4
        rectangle21.shapeLayer.lineDashPattern = []
        rectangle21.shapeLayer.lineDashPhase = 0
        rectangle21.shapeLayer.lineWidth = 2
        rectangle21.shapeLayer.path = CGPathCreateWithSVGString("M0,2.01c0,-1.11,0.899,-2.01,2.008,-2.01l18.363,0c1.109,0,2.008,0.9,2.008,2.01 0,1.11,-0.899,2.01,-2.008,2.01l-18.363,0c-1.109,0,-2.008,-0.9,-2.008,-2.01l0,0zM0,2.01")!


    }

    private func createRectangle22() {
        rectangle22 = ShapeView(frame: CGRect(x: 0, y: 2.01, width: 22.38, height: 4.02))
        rectangle22.backgroundColor = UIColor.clear
        rectangle22.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle22.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle22.layer.borderColor = UIColor.clear.cgColor
        rectangle22.layer.name = "rectangle22"
        rectangle22.layer.shadowColor = UIColor.clear.cgColor
        rectangle22.layer.shadowOpacity = 1
        rectangle22.layer.position = CGPoint(x: 0, y: 2.01)
        rectangle22.layer.bounds = CGRect(x: 0, y: 0, width: 22.38, height: 4.02)
        rectangle22.layer.masksToBounds = false
        rectangle22.shapeLayer.name = "rectangle22.shapeLayer"
        rectangle22.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle22.shapeLayer.fillColor = nil
        rectangle22.shapeLayer.miterLimit = 4
        rectangle22.shapeLayer.lineDashPattern = []
        rectangle22.shapeLayer.lineDashPhase = 0
        rectangle22.shapeLayer.lineWidth = 1
        rectangle22.shapeLayer.path = CGPathCreateWithSVGString("M0,2.01c0,-1.11,0.899,-2.01,2.008,-2.01l18.363,0c1.109,0,2.008,0.9,2.008,2.01 0,1.11,-0.899,2.01,-2.008,2.01l-18.363,0c-1.109,0,-2.008,-0.9,-2.008,-2.01l0,0zM0,2.01")!


    }

    private func createRectangle18() {
        rectangle18 = ShapeView(frame: CGRect(x: 26.97, y: 0, width: 8.03, height: 8.03))
        rectangle18.backgroundColor = UIColor.clear
        rectangle18.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle18.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle18.layer.borderColor = UIColor.clear.cgColor
        rectangle18.layer.name = "rectangle18"
        rectangle18.layer.shadowColor = UIColor.clear.cgColor
        rectangle18.layer.shadowOpacity = 1
        rectangle18.layer.position = CGPoint(x: 26.97, y: 0)
        rectangle18.layer.bounds = CGRect(x: 0, y: 0, width: 8.03, height: 8.03)
        rectangle18.layer.masksToBounds = false
        rectangle18.shapeLayer.name = "rectangle18.shapeLayer"
        rectangle18.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle18.shapeLayer.fillColor = nil
        rectangle18.shapeLayer.miterLimit = 4
        rectangle18.shapeLayer.lineDashPattern = []
        rectangle18.shapeLayer.lineDashPhase = 0
        rectangle18.shapeLayer.lineWidth = 1
        rectangle18.shapeLayer.path = CGPathCreateWithSVGString("M0,4.015c0,-2.217,1.798,-4.015,4.015,-4.015 2.217,0,4.015,1.798,4.015,4.015 0,2.217,-1.798,4.015,-4.015,4.015 -2.217,0,-4.015,-1.798,-4.015,-4.015l0,0zM0,4.015")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1, y: 1)
        let colors = [UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor, UIColor.clear.cgColor]
        let locations = [NSNumber(value: 0.464), NSNumber(value: 0.646)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        rectangle18.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle19() {
        rectangle19 = ShapeView(frame: CGRect(x: 28.98, y: 2.01, width: 4.02, height: 4.02))
        rectangle19.backgroundColor = UIColor.clear
        rectangle19.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle19.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle19.layer.borderColor = UIColor.clear.cgColor
        rectangle19.layer.name = "rectangle19"
        rectangle19.layer.shadowColor = UIColor.clear.cgColor
        rectangle19.layer.shadowOpacity = 1
        rectangle19.layer.position = CGPoint(x: 28.98, y: 2.01)
        rectangle19.layer.bounds = CGRect(x: 0, y: 0, width: 4.02, height: 4.02)
        rectangle19.layer.masksToBounds = false
        rectangle19.shapeLayer.name = "rectangle19.shapeLayer"
        rectangle19.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle19.shapeLayer.fillColor = nil
        rectangle19.shapeLayer.miterLimit = 4
        rectangle19.shapeLayer.lineDashPattern = []
        rectangle19.shapeLayer.lineDashPhase = 0
        rectangle19.shapeLayer.lineWidth = 1
        rectangle19.shapeLayer.path = CGPathCreateWithSVGString("M4.02,2.01c0,-1.11,-0.9,-2.01,-2.01,-2.01 -1.11,0,-2.01,0.9,-2.01,2.01 0,1.11,0.9,2.01,2.01,2.01 1.11,0,2.01,-0.9,2.01,-2.01l0,0zM4.02,2.01")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1, y: 1)
        let colors = [UIColor.clear.cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0.85).cgColor]
        let locations = [NSNumber(value: 0.828), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        rectangle19.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createSubtract() {
        subtract = ShapeView(frame: CGRect(x: 0, y: 0, width: 185.05, height: 400.22))
        subtract.backgroundColor = UIColor.clear
        subtract.layer.anchorPoint = CGPoint(x: 0, y: 0)
        subtract.layer.shadowOffset = CGSize(width: 0, height: 0)
        subtract.layer.borderColor = UIColor.clear.cgColor
        subtract.layer.name = "subtract"
        subtract.layer.shadowColor = UIColor.clear.cgColor
        subtract.layer.shadowOpacity = 1
        subtract.layer.position = CGPoint(x: 0, y: 0)
        subtract.layer.bounds = CGRect(x: 0, y: 0, width: 185.05, height: 400.22)
        subtract.layer.masksToBounds = false
        let subtractMask = CAShapeLayer()
        subtractMask.name = "subtractMask"
        subtractMask.path = CGPathCreateWithSVGString("M2.126,10.652c-2.126,4.173,-2.126,9.636,-2.126,20.562l0,337.792c0,10.926,0,16.389,2.126,20.562 1.87,3.671,4.855,6.655,8.526,8.526 4.173,2.126,9.636,2.126,20.562,2.126l122.621,0c10.926,0,16.389,0,20.562,-2.126 3.671,-1.871,6.655,-4.855,8.526,-8.526 2.126,-4.173,2.126,-9.636,2.126,-20.562l0,-337.792c0,-10.926,0,-16.389,-2.126,-20.562 -1.871,-3.671,-4.855,-6.655,-8.526,-8.526 -4.173,-2.126,-9.636,-2.126,-20.562,-2.126l-9.589,0c-0.475,0,-0.712,0,-0.903,0.069 -0.318,0.116,-0.569,0.367,-0.685,0.686 -0.07,0.19,-0.07,0.428,-0.07,0.903 0,3.799,0,5.699,-0.553,7.22 -0.928,2.55,-2.937,4.559,-5.487,5.487 -1.522,0.554,-3.421,0.554,-7.221,0.554l-73.605,0c-3.799,0,-5.699,0,-7.22,-0.554 -2.55,-0.928,-4.559,-2.937,-5.487,-5.487 -0.554,-1.521,-0.554,-3.421,-0.554,-7.22 0,-0.475,0,-0.712,-0.069,-0.903 -0.116,-0.319,-0.367,-0.57,-0.686,-0.686 -0.19,-0.069,-0.428,-0.069,-0.903,-0.069l-9.589,0c-10.926,0,-16.389,0,-20.562,2.126 -3.671,1.87,-6.655,4.855,-8.526,8.526l0,0zM2.126,10.652")!
        subtract.layer.mask = subtractMask

    }

    private func createIphone12screen() {
        iphone12screen = UIView(frame: CGRect(x: 0, y: -0.29, width: 185.05, height: 400.51))
        iphone12screen.backgroundColor = UIColor.clear
        iphone12screen.layer.anchorPoint = CGPoint(x: 0, y: 0)
        iphone12screen.layer.shadowOffset = CGSize(width: 0, height: 0)
        iphone12screen.layer.borderWidth = 1
        iphone12screen.layer.borderColor = UIColor.clear.cgColor
        iphone12screen.layer.name = "iphone12screen"
        iphone12screen.layer.shadowColor = UIColor.clear.cgColor
        iphone12screen.layer.shadowOpacity = 1
        iphone12screen.layer.position = CGPoint(x: 0, y: -0.29)
        iphone12screen.layer.bounds = CGRect(x: 0, y: 0, width: 185.05, height: 400.51)
        iphone12screen.layer.masksToBounds = false

    }

    private func createSchedule3() {
        schedule3 = ShapeView(frame: CGRect(x: 0.01, y: 0.05, width: 185.04, height: 400.1))
        schedule3.backgroundColor = UIColor.clear
        schedule3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        schedule3.layer.shadowOffset = CGSize(width: 0, height: 0)
        schedule3.layer.borderColor = UIColor.clear.cgColor
        schedule3.layer.cornerRadius = 22
        schedule3.layer.name = "schedule3"
        schedule3.layer.shadowColor = UIColor.clear.cgColor
        schedule3.layer.shadowOpacity = 1
        schedule3.layer.position = CGPoint(x: 0.01, y: 0.05)
        schedule3.layer.bounds = CGRect(x: 0, y: 0, width: 185.04, height: 400.1)
        schedule3.layer.masksToBounds = true
        schedule3.shapeLayer.name = "schedule3.shapeLayer"
        schedule3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        let mask = CAShapeLayer()
        mask.path = CGPathCreateWithSVGString("M0,22c-0,-12.069,9.931,-22,22,-22l141.04,0c12.069,0,22,9.931,22,22l0,356.1c0,12.069,-9.931,22,-22,22l-141.04,0c-12.069,0,-22,-9.931,-22,-22l0,-356.1zM0,22")!
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
        schedule3.shapeLayer.path = CGPathCreateWithSVGString("M0,22c-0,-12.069,9.931,-22,22,-22l141.04,0c12.069,0,22,9.931,22,22l0,356.1c0,12.069,-9.931,22,-22,22l-141.04,0c-12.069,0,-22,-9.931,-22,-22l0,-356.1zM0,22")!


    }

    private func createSchedule31() {
        schedule3_1 = ShapeView(frame: CGRect(x: 0, y: -0.05, width: 185.05, height: 400.22))
        schedule3_1.backgroundColor = UIColor.clear
        schedule3_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        schedule3_1.alpha = 0
        schedule3_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        schedule3_1.layer.borderColor = UIColor.clear.cgColor
        schedule3_1.layer.cornerRadius = 79
        schedule3_1.layer.name = "schedule3_1"
        schedule3_1.layer.shadowColor = UIColor.clear.cgColor
        schedule3_1.layer.shadowOpacity = 1
        schedule3_1.layer.position = CGPoint(x: 0, y: -0.05)
        schedule3_1.layer.bounds = CGRect(x: 0, y: 0, width: 185.05, height: 400.22)
        schedule3_1.layer.masksToBounds = true
        schedule3_1.shapeLayer.name = "schedule3_1.shapeLayer"
        schedule3_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        let mask = CAShapeLayer()
        mask.path = CGPathCreateWithSVGString("M0,79c-0,-43.338,35.662,-79,79,-79l27.05,0c43.338,-0,79,35.662,79,79 0,0,0,0,0,0l0,242.22c0,43.338,-35.662,79,-79,79 0,0,-0,0,-0,0l-27.05,0c-43.338,0,-79,-35.662,-79,-79s0,0,0,0l0,-242.22zM0,79")!
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
        schedule3_1.shapeLayer.path = CGPathCreateWithSVGString("M0,79c-0,-43.338,35.662,-79,79,-79l27.05,0c43.338,-0,79,35.662,79,79 0,0,0,0,0,0l0,242.22c0,43.338,-35.662,79,-79,79 0,0,-0,0,-0,0l-27.05,0c-43.338,0,-79,-35.662,-79,-79s0,0,0,0l0,-242.22zM0,79")!


    }

    private func createBackground() {
        background = ShapeView(frame: CGRect(x: 0, y: 0, width: 185.05, height: 400.51))
        background.backgroundColor = UIColor.clear
        background.layer.anchorPoint = CGPoint(x: 0, y: 0)
        background.layer.shadowOffset = CGSize(width: 0, height: 0)
        background.layer.borderColor = UIColor.clear.cgColor
        background.layer.name = "background"
        background.layer.shadowColor = UIColor.clear.cgColor
        background.layer.shadowOpacity = 1
        background.layer.position = CGPoint(x: 0, y: 0)
        background.layer.bounds = CGRect(x: 0, y: 0, width: 185.05, height: 400.51)
        background.layer.masksToBounds = false
        background.shapeLayer.name = "background.shapeLayer"
        background.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        let mask = CAShapeLayer()
        mask.path = CGPathCreateWithSVGString("M0,0l185.05,0 0,400.51 -185.05,0 0,-400.51zM0,0")!
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
        background.shapeLayer.path = CGPathCreateWithSVGString("M0,0l185.05,0 0,400.51 -185.05,0 0,-400.51zM0,0")!


    }

    private func createGroup8() {
        group8 = UIView(frame: CGRect(x: 1.43, y: 0, width: 205.13, height: 420.88))
        group8.backgroundColor = UIColor.clear
        group8.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group8.layer.shadowOffset = CGSize(width: 0, height: 0)
        group8.layer.borderWidth = 1
        group8.layer.borderColor = UIColor.clear.cgColor
        group8.layer.name = "group8"
        group8.layer.shadowColor = UIColor.clear.cgColor
        group8.layer.shadowOpacity = 1
        group8.layer.position = CGPoint(x: 1.43, y: 0)
        group8.layer.bounds = CGRect(x: 0, y: 0, width: 205.13, height: 420.88)
        group8.layer.masksToBounds = false

    }

    private func createRectangle20() {
        rectangle20 = ShapeView(frame: CGRect(x: 3.73, y: 2.3, width: 200.54, height: 416.29))
        rectangle20.backgroundColor = UIColor.clear
        rectangle20.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle20.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle20.layer.borderColor = UIColor.clear.cgColor
        rectangle20.layer.name = "rectangle20"
        rectangle20.layer.shadowColor = UIColor.clear.cgColor
        rectangle20.layer.shadowOpacity = 1
        rectangle20.layer.position = CGPoint(x: 3.73, y: 2.3)
        rectangle20.layer.bounds = CGRect(x: 0, y: 0, width: 200.54, height: 416.29)
        rectangle20.layer.masksToBounds = false
        rectangle20.shapeLayer.name = "rectangle20.shapeLayer"
        rectangle20.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle20.shapeLayer.fillColor = UIColor.black.cgColor
        rectangle20.shapeLayer.miterLimit = 4
        rectangle20.shapeLayer.lineDashPattern = []
        rectangle20.shapeLayer.lineDashPhase = 0
        rectangle20.shapeLayer.lineWidth = 0.5
        rectangle20.shapeLayer.path = CGPathCreateWithSVGString("M0,44.527c0,-15.586,0,-23.379,3.033,-29.332 2.668,-5.236,6.925,-9.494,12.162,-12.162 5.953,-3.033,13.746,-3.033,29.331,-3.033l111.487,0c15.586,0,23.379,0,29.332,3.033 5.236,2.668,9.493,6.925,12.161,12.162 3.033,5.953,3.033,13.746,3.033,29.332l0,327.237c0,15.586,0,23.379,-3.033,29.331 -2.668,5.237,-6.925,9.494,-12.161,12.162 -5.953,3.033,-13.746,3.033,-29.332,3.033l-111.487,0c-15.586,0,-23.378,0,-29.331,-3.033 -5.236,-2.668,-9.494,-6.925,-12.162,-12.162 -3.033,-5.952,-3.033,-13.745,-3.033,-29.331l0,-327.237 0,0zM0,44.527")!


    }

    private func createSubtract1() {
        subtract_1 = ShapeView(frame: CGRect(x: 11.48, y: 10.33, width: 185.05, height: 400.22))
        subtract_1.backgroundColor = UIColor.clear
        subtract_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        subtract_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        subtract_1.layer.borderColor = UIColor.clear.cgColor
        subtract_1.layer.name = "subtract_1"
        subtract_1.layer.shadowColor = UIColor.clear.cgColor
        subtract_1.layer.shadowOpacity = 1
        subtract_1.layer.position = CGPoint(x: 11.48, y: 10.33)
        subtract_1.layer.bounds = CGRect(x: 0, y: 0, width: 185.05, height: 400.22)
        subtract_1.layer.masksToBounds = false
        subtract_1.shapeLayer.name = "subtract_1.shapeLayer"
        subtract_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        subtract_1.shapeLayer.fillColor = UIColor.black.cgColor
        subtract_1.shapeLayer.miterLimit = 4
        subtract_1.shapeLayer.lineDashPattern = []
        subtract_1.shapeLayer.lineDashPhase = 0
        subtract_1.shapeLayer.lineWidth = 1
        subtract_1.shapeLayer.path = CGPathCreateWithSVGString("M2.126,10.652c-2.126,4.173,-2.126,9.636,-2.126,20.562l0,337.792c0,10.926,0,16.389,2.126,20.562 1.87,3.671,4.855,6.655,8.526,8.526 4.173,2.126,9.636,2.126,20.562,2.126l122.621,0c10.926,0,16.389,0,20.562,-2.126 3.671,-1.871,6.655,-4.855,8.526,-8.526 2.126,-4.173,2.126,-9.636,2.126,-20.562l0,-337.792c0,-10.926,0,-16.389,-2.126,-20.562 -1.871,-3.671,-4.855,-6.655,-8.526,-8.526 -4.173,-2.126,-9.636,-2.126,-20.562,-2.126l-9.589,0c-0.475,0,-0.712,0,-0.903,0.069 -0.318,0.116,-0.569,0.367,-0.685,0.686 -0.07,0.19,-0.07,0.428,-0.07,0.903 0,3.799,0,5.699,-0.553,7.22 -0.928,2.55,-2.937,4.559,-5.487,5.487 -1.522,0.554,-3.421,0.554,-7.221,0.554l-73.605,0c-3.799,0,-5.699,0,-7.22,-0.554 -2.55,-0.928,-4.559,-2.937,-5.487,-5.487 -0.554,-1.521,-0.554,-3.421,-0.554,-7.22 0,-0.475,0,-0.712,-0.069,-0.903 -0.116,-0.319,-0.367,-0.57,-0.686,-0.686 -0.19,-0.069,-0.428,-0.069,-0.903,-0.069l-9.589,0c-10.926,0,-16.389,0,-20.562,2.126 -3.671,1.87,-6.655,4.855,-8.526,8.526l0,0zM2.126,10.652")!


    }

    private func createGroup10() {
        group10 = UIView(frame: CGRect(x: 0, y: 66.56, width: 208, height: 101.56))
        group10.backgroundColor = UIColor.clear
        group10.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group10.layer.shadowOffset = CGSize(width: 0, height: 0)
        group10.layer.borderWidth = 1
        group10.layer.borderColor = UIColor.clear.cgColor
        group10.layer.name = "group10"
        group10.layer.shadowColor = UIColor.clear.cgColor
        group10.layer.shadowOpacity = 1
        group10.layer.position = CGPoint(x: 0, y: 66.56)
        group10.layer.bounds = CGRect(x: 0, y: 0, width: 208, height: 101.56)
        group10.layer.masksToBounds = false

    }

    private func createRectangle13() {
        rectangle13 = ShapeView(frame: CGRect(x: 0, y: 0, width: 1.43, height: 16.64))
        rectangle13.backgroundColor = UIColor.clear
        rectangle13.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle13.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle13.layer.borderColor = UIColor.clear.cgColor
        rectangle13.layer.name = "rectangle13"
        rectangle13.layer.shadowColor = UIColor.clear.cgColor
        rectangle13.layer.shadowOpacity = 1
        rectangle13.layer.position = CGPoint(x: 0, y: 0)
        rectangle13.layer.bounds = CGRect(x: 0, y: 0, width: 1.43, height: 16.64)
        rectangle13.layer.masksToBounds = false
        rectangle13.shapeLayer.name = "rectangle13.shapeLayer"
        rectangle13.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle13.shapeLayer.fillColor = nil
        rectangle13.shapeLayer.miterLimit = 4
        rectangle13.shapeLayer.lineDashPattern = []
        rectangle13.shapeLayer.lineDashPhase = 0
        rectangle13.shapeLayer.lineWidth = 1
        rectangle13.shapeLayer.path = CGPathCreateWithSVGString("M0,0.574c0,-0.317,0.256,-0.574,0.572,-0.574l0.858,0 0,16.64 -0.858,0c-0.316,0,-0.572,-0.257,-0.572,-0.574l0,-15.492 0,0zM0,0.574")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0.08).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0.24).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.276), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle13.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle14() {
        rectangle14 = ShapeView(frame: CGRect(x: 0, y: 30.12, width: 1.43, height: 32.13))
        rectangle14.backgroundColor = UIColor.clear
        rectangle14.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle14.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle14.layer.borderColor = UIColor.clear.cgColor
        rectangle14.layer.name = "rectangle14"
        rectangle14.layer.shadowColor = UIColor.clear.cgColor
        rectangle14.layer.shadowOpacity = 1
        rectangle14.layer.position = CGPoint(x: 0, y: 30.12)
        rectangle14.layer.bounds = CGRect(x: 0, y: 0, width: 1.43, height: 32.13)
        rectangle14.layer.masksToBounds = false
        rectangle14.shapeLayer.name = "rectangle14.shapeLayer"
        rectangle14.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle14.shapeLayer.fillColor = nil
        rectangle14.shapeLayer.miterLimit = 4
        rectangle14.shapeLayer.lineDashPattern = []
        rectangle14.shapeLayer.lineDashPhase = 0
        rectangle14.shapeLayer.lineWidth = 1
        rectangle14.shapeLayer.path = CGPathCreateWithSVGString("M0,0.574c0,-0.317,0.256,-0.574,0.572,-0.574l0.858,0 0,32.13 -0.858,0c-0.316,0,-0.572,-0.257,-0.572,-0.574l0,-30.983 0,0zM0,0.574")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0.08).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0.24).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.276), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle14.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle16() {
        rectangle16 = ShapeView(frame: CGRect(x: 206.57, y: 41.6, width: 1.43, height: 49.92))
        rectangle16.backgroundColor = UIColor.clear
        rectangle16.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle16.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle16.layer.borderColor = UIColor.clear.cgColor
        rectangle16.layer.name = "rectangle16"
        rectangle16.layer.shadowColor = UIColor.clear.cgColor
        rectangle16.layer.shadowOpacity = 1
        rectangle16.layer.position = CGPoint(x: 206.57, y: 41.6)
        rectangle16.layer.bounds = CGRect(x: 0, y: 0, width: 1.43, height: 49.92)
        rectangle16.layer.masksToBounds = false
        rectangle16.shapeLayer.name = "rectangle16.shapeLayer"
        rectangle16.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle16.shapeLayer.fillColor = nil
        rectangle16.shapeLayer.miterLimit = 4
        rectangle16.shapeLayer.lineDashPattern = []
        rectangle16.shapeLayer.lineDashPhase = 0
        rectangle16.shapeLayer.lineWidth = 1
        rectangle16.shapeLayer.path = CGPathCreateWithSVGString("M0,0l0.858,0c0.316,0,0.572,0.257,0.572,0.574l0,48.772c0,0.317,-0.256,0.574,-0.572,0.574l-0.858,0 0,-49.92 0,0zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0.24).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0.08).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.63), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle16.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle15() {
        rectangle15 = ShapeView(frame: CGRect(x: 0, y: 69.43, width: 1.43, height: 32.13))
        rectangle15.backgroundColor = UIColor.clear
        rectangle15.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle15.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle15.layer.borderColor = UIColor.clear.cgColor
        rectangle15.layer.name = "rectangle15"
        rectangle15.layer.shadowColor = UIColor.clear.cgColor
        rectangle15.layer.shadowOpacity = 1
        rectangle15.layer.position = CGPoint(x: 0, y: 69.43)
        rectangle15.layer.bounds = CGRect(x: 0, y: 0, width: 1.43, height: 32.13)
        rectangle15.layer.masksToBounds = false
        rectangle15.shapeLayer.name = "rectangle15.shapeLayer"
        rectangle15.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle15.shapeLayer.fillColor = nil
        rectangle15.shapeLayer.miterLimit = 4
        rectangle15.shapeLayer.lineDashPattern = []
        rectangle15.shapeLayer.lineDashPhase = 0
        rectangle15.shapeLayer.lineWidth = 1
        rectangle15.shapeLayer.path = CGPathCreateWithSVGString("M0,0.574c0,-0.317,0.256,-0.574,0.572,-0.574l0.858,0 0,32.13 -0.858,0c-0.316,0,-0.572,-0.257,-0.572,-0.574l0,-30.983 0,0zM0,0.574")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0.08).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0.24).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.276), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle15.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle10() {
        rectangle10 = ShapeView(frame: CGRect(x: 0, y: 0, width: 205.13, height: 420.88))
        rectangle10.backgroundColor = UIColor.clear
        rectangle10.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle10.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle10.layer.borderColor = UIColor.clear.cgColor
        rectangle10.layer.name = "rectangle10"
        rectangle10.layer.shadowColor = UIColor.clear.cgColor
        rectangle10.layer.shadowOpacity = 1
        rectangle10.layer.position = CGPoint(x: 0, y: 0)
        rectangle10.layer.bounds = CGRect(x: 0, y: 0, width: 205.13, height: 420.88)
        rectangle10.layer.masksToBounds = false
        let rectangle10Mask = CAShapeLayer()
        rectangle10Mask.name = "rectangle10Mask"
        rectangle10Mask.path = CGPathCreateWithSVGString("M0,47.74c0,-16.711,0,-25.066,3.252,-31.448 2.861,-5.614,7.425,-10.179,13.039,-13.039 6.382,-3.252,14.738,-3.252,31.448,-3.252l109.651,0c16.711,0,25.066,0,31.448,3.252 5.615,2.861,10.179,7.425,13.04,13.039 3.252,6.383,3.252,14.738,3.252,31.448l0,325.4c0,16.711,0,25.066,-3.252,31.448 -2.861,5.614,-7.425,10.179,-13.04,13.04 -6.382,3.252,-14.737,3.252,-31.448,3.252l-109.651,0c-16.71,0,-25.066,0,-31.448,-3.252 -5.614,-2.861,-10.179,-7.426,-13.039,-13.04 -3.252,-6.382,-3.252,-14.737,-3.252,-31.448l0,-325.4 0,0zM0,47.74")!
        rectangle10.layer.mask = rectangle10Mask

    }

    private func createRectangle11() {
        rectangle11 = ShapeView(frame: CGRect(x: 0, y: 0, width: 205.13, height: 420.88))
        rectangle11.backgroundColor = UIColor.clear
        rectangle11.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle11.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle11.layer.borderColor = UIColor.clear.cgColor
        rectangle11.layer.name = "rectangle11"
        rectangle11.layer.shadowColor = UIColor.clear.cgColor
        rectangle11.layer.shadowOpacity = 1
        rectangle11.layer.position = CGPoint(x: 0, y: 0)
        rectangle11.layer.bounds = CGRect(x: 0, y: 0, width: 205.13, height: 420.88)
        rectangle11.layer.masksToBounds = false
        rectangle11.shapeLayer.name = "rectangle11.shapeLayer"
        rectangle11.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle11.shapeLayer.fillColor = UIColor(red: 0.02, green: 0.02, blue: 0.02, alpha: 1).cgColor
        rectangle11.shapeLayer.miterLimit = 4
        rectangle11.shapeLayer.lineDashPattern = []
        rectangle11.shapeLayer.lineDashPhase = 0
        rectangle11.shapeLayer.lineWidth = 2
        rectangle11.shapeLayer.path = CGPathCreateWithSVGString("M0,47.74c0,-16.711,0,-25.066,3.252,-31.448 2.861,-5.614,7.425,-10.179,13.039,-13.039 6.382,-3.252,14.738,-3.252,31.448,-3.252l109.651,0c16.711,0,25.066,0,31.448,3.252 5.615,2.861,10.179,7.425,13.04,13.039 3.252,6.383,3.252,14.738,3.252,31.448l0,325.4c0,16.711,0,25.066,-3.252,31.448 -2.861,5.614,-7.425,10.179,-13.04,13.04 -6.382,3.252,-14.737,3.252,-31.448,3.252l-109.651,0c-16.71,0,-25.066,0,-31.448,-3.252 -5.614,-2.861,-10.179,-7.426,-13.039,-13.04 -3.252,-6.382,-3.252,-14.737,-3.252,-31.448l0,-325.4 0,0zM0,47.74")!


    }

    private func createGroup4() {
        group4 = UIView(frame: CGRect(x: -1.15, y: -2.01, width: 207.43, height: 424.03))
        group4.backgroundColor = UIColor.clear
        group4.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group4.layer.shadowOffset = CGSize(width: 0, height: 0)
        group4.layer.borderWidth = 1
        group4.layer.borderColor = UIColor.clear.cgColor
        group4.layer.name = "group4"
        group4.layer.shadowColor = UIColor.clear.cgColor
        group4.layer.shadowOpacity = 1
        group4.layer.position = CGPoint(x: -1.15, y: -2.01)
        group4.layer.bounds = CGRect(x: 0, y: 0, width: 207.43, height: 424.03)
        group4.layer.masksToBounds = false

    }

    private func createRectangle23() {
        rectangle23 = ShapeView(frame: CGRect(x: 0, y: 37.87, width: 4.88, height: 4.02))
        rectangle23.backgroundColor = UIColor.clear
        rectangle23.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle23.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle23.layer.borderColor = UIColor.clear.cgColor
        rectangle23.layer.name = "rectangle23"
        rectangle23.layer.shadowColor = UIColor.clear.cgColor
        rectangle23.layer.shadowOpacity = 1
        rectangle23.layer.position = CGPoint(x: 0, y: 37.87)
        rectangle23.layer.bounds = CGRect(x: 0, y: 0, width: 4.88, height: 4.02)
        rectangle23.layer.masksToBounds = false
        rectangle23.shapeLayer.name = "rectangle23.shapeLayer"
        rectangle23.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle23.shapeLayer.fillColor = nil
        rectangle23.shapeLayer.miterLimit = 4
        rectangle23.shapeLayer.lineDashPattern = []
        rectangle23.shapeLayer.lineDashPhase = 0
        rectangle23.shapeLayer.lineWidth = 1
        rectangle23.shapeLayer.path = CGPathCreateWithSVGString("M0,0l4.88,0 0,4.02 -4.88,0 0,-4.02zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.56, green: 0.56, blue: 0.56, alpha: 1).cgColor, UIColor(red: 0.32, green: 0.32, blue: 0.32, alpha: 1).cgColor, UIColor(red: 0.08, green: 0.08, blue: 0.08, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.124), NSNumber(value: 0.366), NSNumber(value: 0.828)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle23.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle25() {
        rectangle25 = ShapeView(frame: CGRect(x: 0, y: 384.73, width: 4.88, height: 4.02))
        rectangle25.backgroundColor = UIColor.clear
        rectangle25.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle25.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle25.layer.borderColor = UIColor.clear.cgColor
        rectangle25.layer.name = "rectangle25"
        rectangle25.layer.shadowColor = UIColor.clear.cgColor
        rectangle25.layer.shadowOpacity = 1
        rectangle25.layer.position = CGPoint(x: 0, y: 384.73)
        rectangle25.layer.bounds = CGRect(x: 0, y: 0, width: 4.88, height: 4.02)
        rectangle25.layer.masksToBounds = false
        rectangle25.shapeLayer.name = "rectangle25.shapeLayer"
        rectangle25.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle25.shapeLayer.fillColor = nil
        rectangle25.shapeLayer.miterLimit = 4
        rectangle25.shapeLayer.lineDashPattern = []
        rectangle25.shapeLayer.lineDashPhase = 0
        rectangle25.shapeLayer.lineWidth = 1
        rectangle25.shapeLayer.path = CGPathCreateWithSVGString("M0,0l4.88,0 0,4.02 -4.88,0 0,-4.02zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.56, green: 0.56, blue: 0.56, alpha: 1).cgColor, UIColor(red: 0.32, green: 0.32, blue: 0.32, alpha: 1).cgColor, UIColor(red: 0.08, green: 0.08, blue: 0.08, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.124), NSNumber(value: 0.366), NSNumber(value: 0.828)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle25.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle24() {
        rectangle24 = ShapeView(frame: CGRect(x: 202.55, y: 37.87, width: 4.88, height: 4.02))
        rectangle24.backgroundColor = UIColor.clear
        rectangle24.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle24.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle24.layer.borderColor = UIColor.clear.cgColor
        rectangle24.layer.name = "rectangle24"
        rectangle24.layer.shadowColor = UIColor.clear.cgColor
        rectangle24.layer.shadowOpacity = 1
        rectangle24.layer.position = CGPoint(x: 202.55, y: 37.87)
        rectangle24.layer.bounds = CGRect(x: 0, y: 0, width: 4.88, height: 4.02)
        rectangle24.layer.masksToBounds = false
        rectangle24.shapeLayer.name = "rectangle24.shapeLayer"
        rectangle24.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle24.shapeLayer.fillColor = nil
        rectangle24.shapeLayer.miterLimit = 4
        rectangle24.shapeLayer.lineDashPattern = []
        rectangle24.shapeLayer.lineDashPhase = 0
        rectangle24.shapeLayer.lineWidth = 1
        rectangle24.shapeLayer.path = CGPathCreateWithSVGString("M0,0l4.88,0 0,4.02 -4.88,0 0,-4.02zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.08, green: 0.08, blue: 0.08, alpha: 1).cgColor, UIColor(red: 0.32, green: 0.32, blue: 0.32, alpha: 1).cgColor, UIColor(red: 0.56, green: 0.56, blue: 0.56, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.088), NSNumber(value: 0.536), NSNumber(value: 0.757)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle24.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle26() {
        rectangle26 = ShapeView(frame: CGRect(x: 202.55, y: 384.73, width: 4.88, height: 4.02))
        rectangle26.backgroundColor = UIColor.clear
        rectangle26.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle26.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle26.layer.borderColor = UIColor.clear.cgColor
        rectangle26.layer.name = "rectangle26"
        rectangle26.layer.shadowColor = UIColor.clear.cgColor
        rectangle26.layer.shadowOpacity = 1
        rectangle26.layer.position = CGPoint(x: 202.55, y: 384.73)
        rectangle26.layer.bounds = CGRect(x: 0, y: 0, width: 4.88, height: 4.02)
        rectangle26.layer.masksToBounds = false
        rectangle26.shapeLayer.name = "rectangle26.shapeLayer"
        rectangle26.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle26.shapeLayer.fillColor = nil
        rectangle26.shapeLayer.miterLimit = 4
        rectangle26.shapeLayer.lineDashPattern = []
        rectangle26.shapeLayer.lineDashPhase = 0
        rectangle26.shapeLayer.lineWidth = 1
        rectangle26.shapeLayer.path = CGPathCreateWithSVGString("M0,0l4.88,0 0,4.02 -4.88,0 0,-4.02zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.08, green: 0.08, blue: 0.08, alpha: 1).cgColor, UIColor(red: 0.32, green: 0.32, blue: 0.32, alpha: 1).cgColor, UIColor(red: 0.56, green: 0.56, blue: 0.56, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.088), NSNumber(value: 0.529), NSNumber(value: 0.771)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle26.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle27() {
        rectangle27 = ShapeView(frame: CGRect(x: 162.67, y: 0, width: 4.88, height: 4.02))
        rectangle27.backgroundColor = UIColor.clear
        rectangle27.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle27.transform = CGAffineTransform(rotationAngle: 0.5 * CGFloat.pi)
        rectangle27.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle27.layer.borderColor = UIColor.clear.cgColor
        rectangle27.layer.name = "rectangle27"
        rectangle27.layer.shadowColor = UIColor.clear.cgColor
        rectangle27.layer.shadowOpacity = 1
        rectangle27.layer.position = CGPoint(x: 162.67, y: 0)
        rectangle27.layer.bounds = CGRect(x: 0, y: 0, width: 4.88, height: 4.02)
        rectangle27.layer.masksToBounds = false
        rectangle27.shapeLayer.name = "rectangle27.shapeLayer"
        rectangle27.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle27.shapeLayer.fillColor = nil
        rectangle27.shapeLayer.miterLimit = 4
        rectangle27.shapeLayer.lineDashPattern = []
        rectangle27.shapeLayer.lineDashPhase = 0
        rectangle27.shapeLayer.lineWidth = 1
        rectangle27.shapeLayer.path = CGPathCreateWithSVGString("M0,0l4.88,0 0,4.02 -4.88,0 0,-4.02zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.56, green: 0.56, blue: 0.56, alpha: 1).cgColor, UIColor(red: 0.32, green: 0.32, blue: 0.32, alpha: 1).cgColor, UIColor(red: 0.08, green: 0.08, blue: 0.08, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.42), NSNumber(value: 0.61), NSNumber(value: 0.976)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle27.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle28() {
        rectangle28 = ShapeView(frame: CGRect(x: 41.89, y: 419.16, width: 4.88, height: 4.02))
        rectangle28.backgroundColor = UIColor.clear
        rectangle28.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle28.transform = CGAffineTransform(rotationAngle: 0.5 * CGFloat.pi)
        rectangle28.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle28.layer.borderColor = UIColor.clear.cgColor
        rectangle28.layer.name = "rectangle28"
        rectangle28.layer.shadowColor = UIColor.clear.cgColor
        rectangle28.layer.shadowOpacity = 1
        rectangle28.layer.position = CGPoint(x: 41.89, y: 419.16)
        rectangle28.layer.bounds = CGRect(x: 0, y: 0, width: 4.88, height: 4.02)
        rectangle28.layer.masksToBounds = false
        rectangle28.shapeLayer.name = "rectangle28.shapeLayer"
        rectangle28.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle28.shapeLayer.fillColor = nil
        rectangle28.shapeLayer.miterLimit = 4
        rectangle28.shapeLayer.lineDashPattern = []
        rectangle28.shapeLayer.lineDashPhase = 0
        rectangle28.shapeLayer.lineWidth = 1
        rectangle28.shapeLayer.path = CGPathCreateWithSVGString("M0,0l4.88,0 0,4.02 -4.88,0 0,-4.02zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor.black.cgColor, UIColor(red: 0.16, green: 0.16, blue: 0.16, alpha: 1).cgColor, UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.123), NSNumber(value: 0.585), NSNumber(value: 0.876)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle28.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createGroup81() {
        group8_1 = UIView(frame: CGRect(x: 1.43, y: 0, width: 205.13, height: 420.88))
        group8_1.backgroundColor = UIColor.clear
        group8_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group8_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        group8_1.layer.borderWidth = 1
        group8_1.layer.borderColor = UIColor.clear.cgColor
        group8_1.layer.name = "group8_1"
        group8_1.layer.shadowColor = UIColor.clear.cgColor
        group8_1.layer.shadowOpacity = 1
        group8_1.layer.position = CGPoint(x: 1.43, y: 0)
        group8_1.layer.bounds = CGRect(x: 0, y: 0, width: 205.13, height: 420.88)
        group8_1.layer.masksToBounds = false

    }

    private func createRectangle201() {
        rectangle20_1 = ShapeView(frame: CGRect(x: 3.73, y: 2.3, width: 200.54, height: 416.29))
        rectangle20_1.backgroundColor = UIColor.clear
        rectangle20_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle20_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle20_1.layer.borderColor = UIColor.clear.cgColor
        rectangle20_1.layer.name = "rectangle20_1"
        rectangle20_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle20_1.layer.shadowOpacity = 1
        rectangle20_1.layer.position = CGPoint(x: 3.73, y: 2.3)
        rectangle20_1.layer.bounds = CGRect(x: 0, y: 0, width: 200.54, height: 416.29)
        rectangle20_1.layer.masksToBounds = false
        rectangle20_1.shapeLayer.name = "rectangle20_1.shapeLayer"
        rectangle20_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle20_1.shapeLayer.fillColor = UIColor.black.cgColor
        rectangle20_1.shapeLayer.miterLimit = 4
        rectangle20_1.shapeLayer.lineDashPattern = []
        rectangle20_1.shapeLayer.lineDashPhase = 0
        rectangle20_1.shapeLayer.lineWidth = 0.5
        rectangle20_1.shapeLayer.path = CGPathCreateWithSVGString("M0,44.527c0,-15.586,0,-23.379,3.033,-29.332 2.668,-5.236,6.925,-9.494,12.162,-12.162 5.953,-3.033,13.746,-3.033,29.331,-3.033l111.487,0c15.586,0,23.379,0,29.332,3.033 5.236,2.668,9.493,6.925,12.161,12.162 3.033,5.953,3.033,13.746,3.033,29.332l0,327.237c0,15.586,0,23.379,-3.033,29.331 -2.668,5.237,-6.925,9.494,-12.161,12.162 -5.953,3.033,-13.746,3.033,-29.332,3.033l-111.487,0c-15.586,0,-23.378,0,-29.331,-3.033 -5.236,-2.668,-9.494,-6.925,-12.162,-12.162 -3.033,-5.952,-3.033,-13.745,-3.033,-29.331l0,-327.237 0,0zM0,44.527")!


    }

    private func createGroup101() {
        group10_1 = UIView(frame: CGRect(x: 0, y: 66.56, width: 208, height: 101.56))
        group10_1.backgroundColor = UIColor.clear
        group10_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group10_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        group10_1.layer.borderWidth = 1
        group10_1.layer.borderColor = UIColor.clear.cgColor
        group10_1.layer.name = "group10_1"
        group10_1.layer.shadowColor = UIColor.clear.cgColor
        group10_1.layer.shadowOpacity = 1
        group10_1.layer.position = CGPoint(x: 0, y: 66.56)
        group10_1.layer.bounds = CGRect(x: 0, y: 0, width: 208, height: 101.56)
        group10_1.layer.masksToBounds = false

    }

    private func createRectangle131() {
        rectangle13_1 = ShapeView(frame: CGRect(x: 0, y: 0, width: 1.43, height: 16.64))
        rectangle13_1.backgroundColor = UIColor.clear
        rectangle13_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle13_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle13_1.layer.borderColor = UIColor.clear.cgColor
        rectangle13_1.layer.name = "rectangle13_1"
        rectangle13_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle13_1.layer.shadowOpacity = 1
        rectangle13_1.layer.position = CGPoint(x: 0, y: 0)
        rectangle13_1.layer.bounds = CGRect(x: 0, y: 0, width: 1.43, height: 16.64)
        rectangle13_1.layer.masksToBounds = false
        rectangle13_1.shapeLayer.name = "rectangle13_1.shapeLayer"
        rectangle13_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle13_1.shapeLayer.fillColor = nil
        rectangle13_1.shapeLayer.miterLimit = 4
        rectangle13_1.shapeLayer.lineDashPattern = []
        rectangle13_1.shapeLayer.lineDashPhase = 0
        rectangle13_1.shapeLayer.lineWidth = 1
        rectangle13_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0.574c0,-0.317,0.256,-0.574,0.572,-0.574l0.858,0 0,16.64 -0.858,0c-0.316,0,-0.572,-0.257,-0.572,-0.574l0,-15.492 0,0zM0,0.574")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor.clear.cgColor, UIColor(red: 0.817, green: 0.817, blue: 0.817, alpha: 0.42).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0.24).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.333), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle13_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle141() {
        rectangle14_1 = ShapeView(frame: CGRect(x: 0, y: 30.12, width: 1.43, height: 32.13))
        rectangle14_1.backgroundColor = UIColor.clear
        rectangle14_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle14_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle14_1.layer.borderColor = UIColor.clear.cgColor
        rectangle14_1.layer.name = "rectangle14_1"
        rectangle14_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle14_1.layer.shadowOpacity = 1
        rectangle14_1.layer.position = CGPoint(x: 0, y: 30.12)
        rectangle14_1.layer.bounds = CGRect(x: 0, y: 0, width: 1.43, height: 32.13)
        rectangle14_1.layer.masksToBounds = false
        rectangle14_1.shapeLayer.name = "rectangle14_1.shapeLayer"
        rectangle14_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle14_1.shapeLayer.fillColor = nil
        rectangle14_1.shapeLayer.miterLimit = 4
        rectangle14_1.shapeLayer.lineDashPattern = []
        rectangle14_1.shapeLayer.lineDashPhase = 0
        rectangle14_1.shapeLayer.lineWidth = 1
        rectangle14_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0.574c0,-0.317,0.256,-0.574,0.572,-0.574l0.858,0 0,32.13 -0.858,0c-0.316,0,-0.572,-0.257,-0.572,-0.574l0,-30.983 0,0zM0,0.574")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor.clear.cgColor, UIColor(red: 0.817, green: 0.817, blue: 0.817, alpha: 0.42).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0.24).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.333), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle14_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle161() {
        rectangle16_1 = ShapeView(frame: CGRect(x: 206.57, y: 41.6, width: 1.43, height: 49.92))
        rectangle16_1.backgroundColor = UIColor.clear
        rectangle16_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle16_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle16_1.layer.borderColor = UIColor.clear.cgColor
        rectangle16_1.layer.name = "rectangle16_1"
        rectangle16_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle16_1.layer.shadowOpacity = 1
        rectangle16_1.layer.position = CGPoint(x: 206.57, y: 41.6)
        rectangle16_1.layer.bounds = CGRect(x: 0, y: 0, width: 1.43, height: 49.92)
        rectangle16_1.layer.masksToBounds = false
        rectangle16_1.shapeLayer.name = "rectangle16_1.shapeLayer"
        rectangle16_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle16_1.shapeLayer.fillColor = nil
        rectangle16_1.shapeLayer.miterLimit = 4
        rectangle16_1.shapeLayer.lineDashPattern = []
        rectangle16_1.shapeLayer.lineDashPhase = 0
        rectangle16_1.shapeLayer.lineWidth = 1
        rectangle16_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l0.858,0c0.316,0,0.572,0.257,0.572,0.574l0,48.772c0,0.317,-0.256,0.574,-0.572,0.574l-0.858,0 0,-49.92 0,0zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor(red: 0, green: 0, blue: 0, alpha: 0.24).cgColor, UIColor(red: 0.817, green: 0.817, blue: 0.817, alpha: 0.42).cgColor, UIColor.clear.cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.574), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle16_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle151() {
        rectangle15_1 = ShapeView(frame: CGRect(x: 0, y: 69.43, width: 1.43, height: 32.13))
        rectangle15_1.backgroundColor = UIColor.clear
        rectangle15_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle15_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle15_1.layer.borderColor = UIColor.clear.cgColor
        rectangle15_1.layer.name = "rectangle15_1"
        rectangle15_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle15_1.layer.shadowOpacity = 1
        rectangle15_1.layer.position = CGPoint(x: 0, y: 69.43)
        rectangle15_1.layer.bounds = CGRect(x: 0, y: 0, width: 1.43, height: 32.13)
        rectangle15_1.layer.masksToBounds = false
        rectangle15_1.shapeLayer.name = "rectangle15_1.shapeLayer"
        rectangle15_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle15_1.shapeLayer.fillColor = nil
        rectangle15_1.shapeLayer.miterLimit = 4
        rectangle15_1.shapeLayer.lineDashPattern = []
        rectangle15_1.shapeLayer.lineDashPhase = 0
        rectangle15_1.shapeLayer.lineWidth = 1
        rectangle15_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0.574c0,-0.317,0.256,-0.574,0.572,-0.574l0.858,0 0,32.13 -0.858,0c-0.316,0,-0.572,-0.257,-0.572,-0.574l0,-30.983 0,0zM0,0.574")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor.clear.cgColor, UIColor(red: 0.817, green: 0.817, blue: 0.817, alpha: 0.42).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0.24).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.333), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle15_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle101() {
        rectangle10_1 = ShapeView(frame: CGRect(x: 0, y: 0, width: 205.13, height: 420.88))
        rectangle10_1.backgroundColor = UIColor.clear
        rectangle10_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle10_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle10_1.layer.borderColor = UIColor.clear.cgColor
        rectangle10_1.layer.name = "rectangle10_1"
        rectangle10_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle10_1.layer.shadowOpacity = 1
        rectangle10_1.layer.position = CGPoint(x: 0, y: 0)
        rectangle10_1.layer.bounds = CGRect(x: 0, y: 0, width: 205.13, height: 420.88)
        rectangle10_1.layer.masksToBounds = false
        let rectangle10_1Mask = CAShapeLayer()
        rectangle10_1Mask.name = "rectangle10_1Mask"
        rectangle10_1Mask.path = CGPathCreateWithSVGString("M0,47.74c0,-16.711,0,-25.066,3.252,-31.448 2.861,-5.614,7.425,-10.179,13.039,-13.039 6.382,-3.252,14.738,-3.252,31.448,-3.252l109.651,0c16.711,0,25.066,0,31.448,3.252 5.615,2.861,10.179,7.425,13.04,13.039 3.252,6.383,3.252,14.738,3.252,31.448l0,325.4c0,16.711,0,25.066,-3.252,31.448 -2.861,5.614,-7.425,10.179,-13.04,13.04 -6.382,3.252,-14.737,3.252,-31.448,3.252l-109.651,0c-16.71,0,-25.066,0,-31.448,-3.252 -5.614,-2.861,-10.179,-7.426,-13.039,-13.04 -3.252,-6.382,-3.252,-14.737,-3.252,-31.448l0,-325.4 0,0zM0,47.74")!
        rectangle10_1.layer.mask = rectangle10_1Mask

    }

    private func createRectangle111() {
        rectangle11_1 = ShapeView(frame: CGRect(x: 0, y: 0, width: 205.13, height: 420.88))
        rectangle11_1.backgroundColor = UIColor.clear
        rectangle11_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle11_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle11_1.layer.borderColor = UIColor.clear.cgColor
        rectangle11_1.layer.name = "rectangle11_1"
        rectangle11_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle11_1.layer.shadowOpacity = 1
        rectangle11_1.layer.position = CGPoint(x: 0, y: 0)
        rectangle11_1.layer.bounds = CGRect(x: 0, y: 0, width: 205.13, height: 420.88)
        rectangle11_1.layer.masksToBounds = false
        rectangle11_1.shapeLayer.name = "rectangle11_1.shapeLayer"
        rectangle11_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle11_1.shapeLayer.fillColor = UIColor(red: 0.922, green: 0.922, blue: 0.922, alpha: 1).cgColor
        rectangle11_1.shapeLayer.miterLimit = 4
        rectangle11_1.shapeLayer.lineDashPattern = []
        rectangle11_1.shapeLayer.lineDashPhase = 0
        rectangle11_1.shapeLayer.lineWidth = 2
        rectangle11_1.shapeLayer.path = CGPathCreateWithSVGString("M0,47.74c0,-16.711,0,-25.066,3.252,-31.448 2.861,-5.614,7.425,-10.179,13.039,-13.039 6.382,-3.252,14.738,-3.252,31.448,-3.252l109.651,0c16.711,0,25.066,0,31.448,3.252 5.615,2.861,10.179,7.425,13.04,13.039 3.252,6.383,3.252,14.738,3.252,31.448l0,325.4c0,16.711,0,25.066,-3.252,31.448 -2.861,5.614,-7.425,10.179,-13.04,13.04 -6.382,3.252,-14.737,3.252,-31.448,3.252l-109.651,0c-16.71,0,-25.066,0,-31.448,-3.252 -5.614,-2.861,-10.179,-7.426,-13.039,-13.04 -3.252,-6.382,-3.252,-14.737,-3.252,-31.448l0,-325.4 0,0zM0,47.74")!


    }

    private func createGroup41() {
        group4_1 = UIView(frame: CGRect(x: -1.15, y: -2.01, width: 207.43, height: 424.03))
        group4_1.backgroundColor = UIColor.clear
        group4_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group4_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        group4_1.layer.borderWidth = 1
        group4_1.layer.borderColor = UIColor.clear.cgColor
        group4_1.layer.name = "group4_1"
        group4_1.layer.shadowColor = UIColor.clear.cgColor
        group4_1.layer.shadowOpacity = 1
        group4_1.layer.position = CGPoint(x: -1.15, y: -2.01)
        group4_1.layer.bounds = CGRect(x: 0, y: 0, width: 207.43, height: 424.03)
        group4_1.layer.masksToBounds = false

    }

    private func createRectangle231() {
        rectangle23_1 = ShapeView(frame: CGRect(x: 0, y: 37.87, width: 4.88, height: 4.02))
        rectangle23_1.backgroundColor = UIColor.clear
        rectangle23_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle23_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle23_1.layer.borderColor = UIColor.clear.cgColor
        rectangle23_1.layer.name = "rectangle23_1"
        rectangle23_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle23_1.layer.shadowOpacity = 1
        rectangle23_1.layer.position = CGPoint(x: 0, y: 37.87)
        rectangle23_1.layer.bounds = CGRect(x: 0, y: 0, width: 4.88, height: 4.02)
        rectangle23_1.layer.masksToBounds = false
        rectangle23_1.shapeLayer.name = "rectangle23_1.shapeLayer"
        rectangle23_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle23_1.shapeLayer.fillColor = nil
        rectangle23_1.shapeLayer.miterLimit = 4
        rectangle23_1.shapeLayer.lineDashPattern = []
        rectangle23_1.shapeLayer.lineDashPhase = 0
        rectangle23_1.shapeLayer.lineWidth = 1
        rectangle23_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l4.88,0 0,4.02 -4.88,0 0,-4.02zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.109), NSNumber(value: 0.318), NSNumber(value: 0.552), NSNumber(value: 0.807)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle23_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle251() {
        rectangle25_1 = ShapeView(frame: CGRect(x: 0, y: 384.73, width: 4.88, height: 4.02))
        rectangle25_1.backgroundColor = UIColor.clear
        rectangle25_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle25_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle25_1.layer.borderColor = UIColor.clear.cgColor
        rectangle25_1.layer.name = "rectangle25_1"
        rectangle25_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle25_1.layer.shadowOpacity = 1
        rectangle25_1.layer.position = CGPoint(x: 0, y: 384.73)
        rectangle25_1.layer.bounds = CGRect(x: 0, y: 0, width: 4.88, height: 4.02)
        rectangle25_1.layer.masksToBounds = false
        rectangle25_1.shapeLayer.name = "rectangle25_1.shapeLayer"
        rectangle25_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle25_1.shapeLayer.fillColor = nil
        rectangle25_1.shapeLayer.miterLimit = 4
        rectangle25_1.shapeLayer.lineDashPattern = []
        rectangle25_1.shapeLayer.lineDashPhase = 0
        rectangle25_1.shapeLayer.lineWidth = 1
        rectangle25_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l4.88,0 0,4.02 -4.88,0 0,-4.02zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.109), NSNumber(value: 0.318), NSNumber(value: 0.552), NSNumber(value: 0.807)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle25_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle241() {
        rectangle24_1 = ShapeView(frame: CGRect(x: 202.55, y: 37.87, width: 4.88, height: 4.02))
        rectangle24_1.backgroundColor = UIColor.clear
        rectangle24_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle24_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle24_1.layer.borderColor = UIColor.clear.cgColor
        rectangle24_1.layer.name = "rectangle24_1"
        rectangle24_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle24_1.layer.shadowOpacity = 1
        rectangle24_1.layer.position = CGPoint(x: 202.55, y: 37.87)
        rectangle24_1.layer.bounds = CGRect(x: 0, y: 0, width: 4.88, height: 4.02)
        rectangle24_1.layer.masksToBounds = false
        rectangle24_1.shapeLayer.name = "rectangle24_1.shapeLayer"
        rectangle24_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle24_1.shapeLayer.fillColor = nil
        rectangle24_1.shapeLayer.miterLimit = 4
        rectangle24_1.shapeLayer.lineDashPattern = []
        rectangle24_1.shapeLayer.lineDashPhase = 0
        rectangle24_1.shapeLayer.lineWidth = 1
        rectangle24_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l4.88,0 0,4.02 -4.88,0 0,-4.02zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.099), NSNumber(value: 0.369), NSNumber(value: 0.625), NSNumber(value: 0.799)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle24_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle261() {
        rectangle26_1 = ShapeView(frame: CGRect(x: 202.55, y: 384.73, width: 4.88, height: 4.02))
        rectangle26_1.backgroundColor = UIColor.clear
        rectangle26_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle26_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle26_1.layer.borderColor = UIColor.clear.cgColor
        rectangle26_1.layer.name = "rectangle26_1"
        rectangle26_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle26_1.layer.shadowOpacity = 1
        rectangle26_1.layer.position = CGPoint(x: 202.55, y: 384.73)
        rectangle26_1.layer.bounds = CGRect(x: 0, y: 0, width: 4.88, height: 4.02)
        rectangle26_1.layer.masksToBounds = false
        rectangle26_1.shapeLayer.name = "rectangle26_1.shapeLayer"
        rectangle26_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle26_1.shapeLayer.fillColor = nil
        rectangle26_1.shapeLayer.miterLimit = 4
        rectangle26_1.shapeLayer.lineDashPattern = []
        rectangle26_1.shapeLayer.lineDashPhase = 0
        rectangle26_1.shapeLayer.lineWidth = 1
        rectangle26_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l4.88,0 0,4.02 -4.88,0 0,-4.02zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.099), NSNumber(value: 0.369), NSNumber(value: 0.625), NSNumber(value: 0.799)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle26_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle271() {
        rectangle27_1 = ShapeView(frame: CGRect(x: 162.67, y: 0, width: 4.88, height: 4.02))
        rectangle27_1.backgroundColor = UIColor.clear
        rectangle27_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle27_1.transform = CGAffineTransform(rotationAngle: 0.5 * CGFloat.pi)
        rectangle27_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle27_1.layer.borderColor = UIColor.clear.cgColor
        rectangle27_1.layer.name = "rectangle27_1"
        rectangle27_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle27_1.layer.shadowOpacity = 1
        rectangle27_1.layer.position = CGPoint(x: 162.67, y: 0)
        rectangle27_1.layer.bounds = CGRect(x: 0, y: 0, width: 4.88, height: 4.02)
        rectangle27_1.layer.masksToBounds = false
        rectangle27_1.shapeLayer.name = "rectangle27_1.shapeLayer"
        rectangle27_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle27_1.shapeLayer.fillColor = nil
        rectangle27_1.shapeLayer.miterLimit = 4
        rectangle27_1.shapeLayer.lineDashPattern = []
        rectangle27_1.shapeLayer.lineDashPhase = 0
        rectangle27_1.shapeLayer.lineWidth = 1
        rectangle27_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l4.88,0 0,4.02 -4.88,0 0,-4.02zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.238), NSNumber(value: 0.417), NSNumber(value: 0.7), NSNumber(value: 0.926)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle27_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle281() {
        rectangle28_1 = ShapeView(frame: CGRect(x: 41.89, y: 419.16, width: 4.88, height: 4.02))
        rectangle28_1.backgroundColor = UIColor.clear
        rectangle28_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle28_1.transform = CGAffineTransform(rotationAngle: 0.5 * CGFloat.pi)
        rectangle28_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle28_1.layer.borderColor = UIColor.clear.cgColor
        rectangle28_1.layer.name = "rectangle28_1"
        rectangle28_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle28_1.layer.shadowOpacity = 1
        rectangle28_1.layer.position = CGPoint(x: 41.89, y: 419.16)
        rectangle28_1.layer.bounds = CGRect(x: 0, y: 0, width: 4.88, height: 4.02)
        rectangle28_1.layer.masksToBounds = false
        rectangle28_1.shapeLayer.name = "rectangle28_1.shapeLayer"
        rectangle28_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle28_1.shapeLayer.fillColor = nil
        rectangle28_1.shapeLayer.miterLimit = 4
        rectangle28_1.shapeLayer.lineDashPattern = []
        rectangle28_1.shapeLayer.lineDashPhase = 0
        rectangle28_1.shapeLayer.lineWidth = 1
        rectangle28_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l4.88,0 0,4.02 -4.88,0 0,-4.02zM0,0")!

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
        group674.addSubview(liLl)
        group674.addSubview(txt)
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
        addSubview(group674)
        addSubview(check)
        addSubview(execute)
    }
}
