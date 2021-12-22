// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

//@IBDesignable
public class IPhone84View: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 375, height: 667)
        public static let backgroundColor = UIColor.white
    }

    public var phone: UIView!
    public var liLl: UIView!
    public var txt: UIView!
    public var set: UIView!
    public var popupbigstepwater1: ShapeView!
    public var grad: ShapeView!
    public var rectangle467: ShapeView!
    public var rectangle467stroke: ShapeView!
    public var set_1: ShapeView!
    public var vector116stroke: ShapeView!
    public var setupCaresInGarden: ShapeView!
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
    public var cardplantexplore: ShapeView!
    public var mainscreenaboutsegment: ShapeView!
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
            createLiLl()
            createTxt()
            createSet()
            createPopupbigstepwater1()
            createGrad()
            createRectangle467()
            createRectangle467stroke()
            createSet1()
            createVector116stroke()
            createSetupCaresInGarden()
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
            createCardplantexplore()
            createMainscreenaboutsegment()
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
        phone = UIView(frame: CGRect(x: 66, y: 645, width: 243, height: 491.7))
        phone.backgroundColor = UIColor.clear
        phone.layer.anchorPoint = CGPoint(x: 0, y: 0)
        phone.layer.shadowOffset = CGSize(width: 0, height: 0)
        phone.layer.borderWidth = 1
        phone.layer.borderColor = UIColor.clear.cgColor
        phone.layer.name = "phone"
        phone.layer.shadowColor = UIColor.clear.cgColor
        phone.layer.shadowOpacity = 1
        phone.layer.position = CGPoint(x: 66, y: 645)
        phone.layer.bounds = CGRect(x: 0, y: 0, width: 243, height: 491.7)
        phone.layer.masksToBounds = false

    }

    private func createLiLl() {
        liLl = UIView(frame: CGRect(x: 27, y: 42, width: 324, height: 102.5))
        liLl.backgroundColor = UIColor.clear
        liLl.layer.anchorPoint = CGPoint(x: 0, y: 0)
        liLl.layer.shadowOffset = CGSize(width: 0, height: 0)
        liLl.layer.borderWidth = 1
        liLl.layer.borderColor = UIColor.clear.cgColor
        liLl.layer.name = "liLl"
        liLl.layer.shadowColor = UIColor.clear.cgColor
        liLl.layer.shadowOpacity = 1
        liLl.layer.position = CGPoint(x: 27, y: 42)
        liLl.layer.bounds = CGRect(x: 0, y: 0, width: 324, height: 102.5)
        liLl.layer.masksToBounds = false

    }

    private func createTxt() {
        txt = UIView(frame: CGRect(x: 152, y: 88, width: 175.29, height: 15.98))
        txt.backgroundColor = UIColor.clear
        txt.layer.anchorPoint = CGPoint(x: 0, y: 0)
        txt.layer.shadowOffset = CGSize(width: 0, height: 0)
        txt.layer.borderWidth = 1
        txt.layer.borderColor = UIColor.clear.cgColor
        txt.layer.name = "txt"
        txt.layer.shadowColor = UIColor.clear.cgColor
        txt.layer.shadowOpacity = 1
        txt.layer.position = CGPoint(x: 152, y: 88)
        txt.layer.bounds = CGRect(x: 0, y: 0, width: 175.29, height: 15.98)
        txt.layer.masksToBounds = false

    }

    private func createSet() {
        set = UIView(frame: CGRect(x: 393, y: 296, width: 80.83, height: 30))
        set.backgroundColor = UIColor.clear
        set.layer.anchorPoint = CGPoint(x: 0, y: 0)
        set.layer.shadowOffset = CGSize(width: 0, height: 0)
        set.layer.borderWidth = 1
        set.layer.borderColor = UIColor.clear.cgColor
        set.layer.name = "set"
        set.layer.shadowColor = UIColor.clear.cgColor
        set.layer.shadowOpacity = 1
        set.layer.position = CGPoint(x: 393, y: 296)
        set.layer.bounds = CGRect(x: 0, y: 0, width: 80.83, height: 30)
        set.layer.masksToBounds = false

    }

    private func createPopupbigstepwater1() {
        popupbigstepwater1 = ShapeView(frame: CGRect(x: 37, y: 651, width: 301, height: 135))
        popupbigstepwater1.backgroundColor = UIColor.clear
        popupbigstepwater1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        popupbigstepwater1.layer.shadowOffset = CGSize(width: 0, height: 0)
        popupbigstepwater1.layer.borderColor = UIColor.clear.cgColor
        popupbigstepwater1.layer.name = "popupbigstepwater1"
        popupbigstepwater1.layer.shadowColor = UIColor.clear.cgColor
        popupbigstepwater1.layer.shadowOpacity = 1
        popupbigstepwater1.layer.position = CGPoint(x: 37, y: 651)
        popupbigstepwater1.layer.bounds = CGRect(x: 0, y: 0, width: 301, height: 135)
        popupbigstepwater1.layer.masksToBounds = false
        popupbigstepwater1.shapeLayer.name = "popupbigstepwater1.shapeLayer"
        popupbigstepwater1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        let mask = CAShapeLayer()
        mask.path = CGPathCreateWithSVGString("M0,0l301,0 0,135 -301,0 0,-135zM0,0")!
        mask.fillColor = UIColor.black.cgColor
        popupbigstepwater1.shapeLayer.mask = mask
        let image = UIImage(named: "50768c7e39870d8fe5102da500e2b7dfd6e35156")!
        popupbigstepwater1.shapeLayer.contents = image.cgImage
        popupbigstepwater1.shapeLayer.fillColor = UIColor.clear.cgColor
        popupbigstepwater1.shapeLayer.contentsGravity = CALayerContentsGravity.resizeAspectFill
        popupbigstepwater1.shapeLayer.masksToBounds = true
        popupbigstepwater1.shapeLayer.miterLimit = 4
        popupbigstepwater1.shapeLayer.lineDashPattern = []
        popupbigstepwater1.shapeLayer.lineDashPhase = 0
        popupbigstepwater1.shapeLayer.lineWidth = 1
        popupbigstepwater1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l301,0 0,135 -301,0 0,-135zM0,0")!


    }

    private func createGrad() {
        grad = ShapeView(frame: CGRect(x: 0, y: 436, width: 375, height: 231))
        grad.backgroundColor = UIColor.clear
        grad.layer.anchorPoint = CGPoint(x: 0, y: 0)
        grad.layer.shadowOffset = CGSize(width: 0, height: 0)
        grad.layer.borderColor = UIColor.clear.cgColor
        grad.layer.name = "grad"
        grad.layer.shadowColor = UIColor.clear.cgColor
        grad.layer.shadowOpacity = 1
        grad.layer.position = CGPoint(x: 0, y: 436)
        grad.layer.bounds = CGRect(x: 0, y: 0, width: 375, height: 231)
        grad.layer.masksToBounds = false
        grad.shapeLayer.name = "grad.shapeLayer"
        grad.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        grad.shapeLayer.fillColor = nil
        grad.shapeLayer.miterLimit = 4
        grad.shapeLayer.lineDashPattern = []
        grad.shapeLayer.lineDashPhase = 0
        grad.shapeLayer.lineWidth = 1
        grad.shapeLayer.path = CGPathCreateWithSVGString("M0,0l375,0 0,231 -375,0 0,-231zM0,0")!

        let startPoint = CGPoint(x: 0.5, y: 0)
        let endPoint = CGPoint(x: 0.5, y: 0.613)
        let colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor, UIColor.white.cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        grad.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle467() {
        rectangle467 = ShapeView(frame: CGRect(x: 0, y: 0, width: 80.83, height: 30))
        rectangle467.backgroundColor = UIColor.clear
        rectangle467.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle467.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle467.layer.borderColor = UIColor.clear.cgColor
        rectangle467.layer.name = "rectangle467"
        rectangle467.layer.shadowColor = UIColor.clear.cgColor
        rectangle467.layer.shadowOpacity = 1
        rectangle467.layer.position = CGPoint(x: 0, y: 0)
        rectangle467.layer.bounds = CGRect(x: 0, y: 0, width: 80.83, height: 30)
        rectangle467.layer.masksToBounds = false
        rectangle467.shapeLayer.name = "rectangle467.shapeLayer"
        rectangle467.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle467.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle467.shapeLayer.miterLimit = 4
        rectangle467.shapeLayer.lineDashPattern = []
        rectangle467.shapeLayer.lineDashPhase = 0
        rectangle467.shapeLayer.lineWidth = 2
        rectangle467.shapeLayer.path = CGPathCreateWithSVGString("M0,15c0,-8.284,6.715,-15,14.999,-15l50.831,0c8.284,0,14.999,6.716,14.999,15l0,0c0,8.284,-6.715,15,-14.999,15l-50.831,0c-8.284,0,-14.999,-6.716,-14.999,-15l0,0 0,0zM0,15")!


    }

    private func createRectangle467stroke() {
        rectangle467stroke = ShapeView(frame: CGRect(x: 0, y: 0, width: 80.83, height: 30))
        rectangle467stroke.backgroundColor = UIColor.clear
        rectangle467stroke.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle467stroke.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle467stroke.layer.borderColor = UIColor.clear.cgColor
        rectangle467stroke.layer.name = "rectangle467stroke"
        rectangle467stroke.layer.shadowColor = UIColor.clear.cgColor
        rectangle467stroke.layer.shadowOpacity = 1
        rectangle467stroke.layer.position = CGPoint(x: 0, y: 0)
        rectangle467stroke.layer.bounds = CGRect(x: 0, y: 0, width: 80.83, height: 30)
        rectangle467stroke.layer.masksToBounds = false
        rectangle467stroke.shapeLayer.name = "rectangle467stroke.shapeLayer"
        rectangle467stroke.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle467stroke.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle467stroke.shapeLayer.miterLimit = 4
        rectangle467stroke.shapeLayer.lineDashPattern = []
        rectangle467stroke.shapeLayer.lineDashPhase = 0
        rectangle467stroke.shapeLayer.lineWidth = 2
        rectangle467stroke.shapeLayer.path = CGPathCreateWithSVGString("M65.831,1.667l-50.831,0c-7.363,0,-13.333,5.97,-13.333,13.333 0,7.364,5.969,13.333,13.333,13.333l50.831,0c7.363,0,13.333,-5.969,13.333,-13.333 0,-7.364,-5.969,-13.333,-13.333,-13.333l0,0zM14.999,0c-8.284,0,-14.999,6.716,-14.999,15 0,8.284,6.715,15,14.999,15l50.831,0c8.284,0,14.999,-6.716,14.999,-15 0,-8.284,-6.715,-15,-14.999,-15l-50.831,0 0,0zM14.999,0")!


    }

    private func createSet1() {
        set_1 = ShapeView(frame: CGRect(x: 37.32, y: 9.49, width: 21.99, height: 11.53))
        set_1.backgroundColor = UIColor.clear
        set_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        set_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        set_1.layer.borderColor = UIColor.clear.cgColor
        set_1.layer.name = "set_1"
        set_1.layer.shadowColor = UIColor.clear.cgColor
        set_1.layer.shadowOpacity = 1
        set_1.layer.position = CGPoint(x: 37.32, y: 9.49)
        set_1.layer.bounds = CGRect(x: 0, y: 0, width: 21.99, height: 11.53)
        set_1.layer.masksToBounds = false
        set_1.shapeLayer.name = "set_1.shapeLayer"
        set_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        set_1.shapeLayer.fillColor = UIColor.white.cgColor
        set_1.shapeLayer.miterLimit = 4
        set_1.shapeLayer.lineDashPattern = []
        set_1.shapeLayer.lineDashPhase = 0
        set_1.shapeLayer.lineWidth = 2
        set_1.shapeLayer.path = CGPathCreateWithSVGString("M4.307,11.53c2.644,0,4.253,-1.291,4.253,-3.325l0,-0.008c0,-1.724,-0.99,-2.66,-3.294,-3.147l-1.222,-0.255c-1.392,-0.302,-2.026,-0.812,-2.026,-1.647l0,-0.008c0,-0.974,0.881,-1.632,2.265,-1.639 1.322,0,2.219,0.626,2.374,1.663l0.008,0.108 1.686,0 -0.008,-0.131c-0.116,-1.871,-1.709,-3.14,-4.036,-3.14 -2.358,0,-4.036,1.307,-4.044,3.209l0,0.008c0,1.655,1.059,2.66,3.247,3.124l1.214,0.255c1.477,0.325,2.088,0.812,2.088,1.709l0,0.008c0,1.044,-0.943,1.717,-2.436,1.717 -1.492,0,-2.521,-0.642,-2.675,-1.67l-0.015,-0.101 -1.686,0 0.008,0.116c0.139,1.964,1.794,3.155,4.299,3.155l0,0zM13.392,11.507c1.972,0,3.224,-1.175,3.487,-2.467l0.016,-0.085 -1.585,0 -0.023,0.062c-0.209,0.611,-0.866,1.121,-1.856,1.121 -1.33,0,-2.173,-0.897,-2.204,-2.436l5.76,0 0,-0.565c0,-2.444,-1.4,-4.083,-3.68,-4.083 -2.281,0,-3.75,1.701,-3.75,4.245l0,0.008c0,2.567,1.446,4.199,3.835,4.199l0,0zM13.315,4.423c1.09,0,1.879,0.688,2.018,2.096l-4.083,0c0.147,-1.361,0.982,-2.096,2.064,-2.096l0,0zM21.139,11.507c0.34,0,0.657,-0.039,0.851,-0.07l0,-1.291c-0.124,0.016,-0.271,0.031,-0.448,0.031 -0.704,0,-1.075,-0.248,-1.075,-1.075l0,-4.563 1.523,0 0,-1.33 -1.523,0 0,-2.119 -1.709,0 0,2.119 -1.168,0 0,1.33 1.168,0 0,4.663c0,1.624,0.773,2.304,2.381,2.304l0,0zM21.139,11.507")!


    }

    private func createVector116stroke() {
        vector116stroke = ShapeView(frame: CGRect(x: 22.08, y: 22.08, width: 8.02, height: 12.5))
        vector116stroke.backgroundColor = UIColor.clear
        vector116stroke.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector116stroke.transform = CGAffineTransform(rotationAngle: -1 * CGFloat.pi)
        vector116stroke.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector116stroke.layer.borderColor = UIColor.clear.cgColor
        vector116stroke.layer.name = "vector116stroke"
        vector116stroke.layer.shadowColor = UIColor.clear.cgColor
        vector116stroke.layer.shadowOpacity = 1
        vector116stroke.layer.position = CGPoint(x: 22.08, y: 22.08)
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

    private func createSetupCaresInGarden() {
        setupCaresInGarden = ShapeView(frame: CGRect(x: 0, y: 0, width: 175.29, height: 15.98))
        setupCaresInGarden.backgroundColor = UIColor.clear
        setupCaresInGarden.layer.anchorPoint = CGPoint(x: 0, y: 0)
        setupCaresInGarden.layer.shadowOffset = CGSize(width: 0, height: 0)
        setupCaresInGarden.layer.borderColor = UIColor.clear.cgColor
        setupCaresInGarden.layer.name = "setupCaresInGarden"
        setupCaresInGarden.layer.shadowColor = UIColor.clear.cgColor
        setupCaresInGarden.layer.shadowOpacity = 1
        setupCaresInGarden.layer.position = CGPoint(x: 0, y: 0)
        setupCaresInGarden.layer.bounds = CGRect(x: 0, y: 0, width: 175.29, height: 15.98)
        setupCaresInGarden.layer.masksToBounds = false
        setupCaresInGarden.shapeLayer.name = "setupCaresInGarden.shapeLayer"
        setupCaresInGarden.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        setupCaresInGarden.shapeLayer.fillColor = UIColor.white.cgColor
        setupCaresInGarden.shapeLayer.miterLimit = 4
        setupCaresInGarden.shapeLayer.lineDashPattern = []
        setupCaresInGarden.shapeLayer.lineDashPhase = 0
        setupCaresInGarden.shapeLayer.lineWidth = 1
        setupCaresInGarden.shapeLayer.path = CGPathCreateWithSVGString("M4.896,13.115c3.006,0,4.834,-1.468,4.834,-3.78l0,-0.009c0,-1.96,-1.125,-3.024,-3.744,-3.577l-1.389,-0.29c-1.582,-0.343,-2.303,-0.923,-2.303,-1.872l0,-0.009c0,-1.108,1.002,-1.855,2.575,-1.863 1.503,0,2.522,0.712,2.698,1.89l0.009,0.123 1.916,0 -0.009,-0.149c-0.132,-2.127,-1.942,-3.569,-4.588,-3.569 -2.681,0,-4.588,1.485,-4.597,3.648l0,0.009c0,1.881,1.204,3.024,3.691,3.551l1.38,0.29c1.679,0.369,2.373,0.923,2.373,1.943l0,0.009c0,1.187,-1.072,1.951,-2.769,1.951 -1.696,0,-2.865,-0.73,-3.041,-1.899l-0.018,-0.114 -1.916,0 0.009,0.132c0.158,2.233,2.039,3.586,4.887,3.586l0,0zM15.223,13.088c2.241,0,3.665,-1.336,3.964,-2.804l0.018,-0.097 -1.802,0 -0.026,0.07c-0.237,0.694,-0.984,1.275,-2.109,1.275 -1.512,0,-2.47,-1.02,-2.505,-2.769l6.548,0 0,-0.642c0,-2.778,-1.591,-4.641,-4.184,-4.641 -2.593,0,-4.263,1.934,-4.263,4.826l0,0.009c0,2.918,1.644,4.773,4.359,4.773l0,0zM15.135,5.037c1.239,0,2.136,0.782,2.294,2.382l-4.641,0c0.167,-1.547,1.116,-2.382,2.347,-2.382l0,0zM24.029,13.088c0.387,0,0.747,-0.044,0.967,-0.079l0,-1.468c-0.141,0.018,-0.308,0.035,-0.51,0.035 -0.8,0,-1.222,-0.281,-1.222,-1.222l0,-5.186 1.732,0 0,-1.512 -1.732,0 0,-2.408 -1.942,0 0,2.408 -1.327,0 0,1.512 1.327,0 0,5.3c0,1.846,0.879,2.619,2.707,2.619l0,0zM29.716,13.088c1.406,0,2.347,-0.642,2.83,-1.573l0.044,0 0,1.389 1.907,0 0,-9.247 -1.907,0 0,5.397c0,1.442,-0.861,2.4,-2.197,2.4 -1.318,0,-1.969,-0.773,-1.969,-2.171l0,-5.626 -1.898,0 0,5.995c0,2.127,1.16,3.437,3.19,3.437l0,0zM36.378,15.98l1.898,0 0,-4.632 0.044,0c0.545,1.072,1.608,1.74,2.918,1.74 2.32,0,3.841,-1.855,3.841,-4.799l0,-0.009c0,-2.953,-1.512,-4.799,-3.867,-4.799 -1.318,0,-2.338,0.668,-2.892,1.767l-0.044,0 0,-1.591 -1.898,0 0,12.323 0,0zM40.72,11.453c-1.433,0,-2.452,-1.248,-2.452,-3.164l0,-0.009c0,-1.925,1.011,-3.173,2.452,-3.173 1.485,0,2.426,1.204,2.426,3.173l0,0.009c0,1.951,-0.932,3.164,-2.426,3.164l0,0zM55.864,13.115c2.804,0,4.904,-1.696,5.3,-4.219l0.009,-0.088 -1.951,0 -0.026,0.079c-0.475,1.609,-1.644,2.488,-3.331,2.488 -2.347,0,-3.867,-1.881,-3.867,-4.817l0,-0.009c0,-2.936,1.512,-4.799,3.867,-4.799 1.705,0,2.883,0.905,3.305,2.391l0.053,0.176 1.951,0 -0.018,-0.079c-0.396,-2.505,-2.496,-4.228,-5.291,-4.228 -3.595,0,-5.88,2.514,-5.88,6.54l0,0.009c0,4.026,2.285,6.557,5.88,6.557l0,0zM65.426,13.071c1.222,0,2.294,-0.633,2.83,-1.626l0.035,0 0,1.459 1.907,0 0,-6.373c0,-1.855,-1.433,-3.05,-3.691,-3.05 -2.276,0,-3.656,1.222,-3.788,2.813l-0.009,0.097 1.793,0 0.018,-0.079c0.158,-0.738,0.835,-1.257,1.934,-1.257 1.178,0,1.837,0.615,1.837,1.635l0,0.694 -2.514,0.149c-2.189,0.132,-3.437,1.116,-3.437,2.725l0,0.018c0,1.661,1.239,2.795,3.085,2.795l0,0zM64.257,10.231l0,-0.018c0,-0.782,0.633,-1.283,1.775,-1.354l2.259,-0.141 0,0.721c0,1.204,-1.011,2.11,-2.347,2.11 -1.02,0,-1.688,-0.51,-1.688,-1.318l0,0zM72.044,12.904l1.898,0 0,-5.511c0,-1.38,0.756,-2.18,1.978,-2.18 0.369,0,0.703,0.044,0.853,0.105l0,-1.767c-0.149,-0.026,-0.387,-0.07,-0.659,-0.07 -1.055,0,-1.828,0.677,-2.127,1.758l-0.044,0 0,-1.582 -1.898,0 0,9.247 0,0zM81.493,13.088c2.241,0,3.665,-1.336,3.964,-2.804l0.017,-0.097 -1.802,0 -0.026,0.07c-0.237,0.694,-0.984,1.275,-2.109,1.275 -1.512,0,-2.47,-1.02,-2.505,-2.769l6.548,0 0,-0.642c0,-2.778,-1.591,-4.641,-4.184,-4.641 -2.593,0,-4.263,1.934,-4.263,4.826l0,0.009c0,2.918,1.644,4.773,4.359,4.773l0,0zM81.405,5.037c1.239,0,2.136,0.782,2.294,2.382l-4.641,0c0.167,-1.547,1.116,-2.382,2.347,-2.382l0,0zM90.519,13.088c2.18,0,3.762,-1.16,3.762,-2.848l0,-0.009c0,-1.327,-0.721,-2.074,-2.61,-2.514l-1.503,-0.343c-0.993,-0.237,-1.371,-0.624,-1.371,-1.195l0,-0.009c0,-0.738,0.642,-1.222,1.661,-1.222 1.072,0,1.705,0.563,1.819,1.371l0.009,0.062 1.784,0 -0.009,-0.105c-0.097,-1.573,-1.415,-2.795,-3.604,-2.795 -2.127,0,-3.568,1.134,-3.568,2.786l0,0.009c0,1.345,0.87,2.189,2.628,2.593l1.512,0.343c0.993,0.237,1.327,0.58,1.327,1.178l0,0.009c0,0.747,-0.686,1.222,-1.828,1.222 -1.169,0,-1.802,-0.501,-1.978,-1.354l-0.018,-0.088 -1.881,0 0.009,0.079c0.193,1.688,1.547,2.83,3.858,2.83l0,0zM100.442,2.233c0.624,0,1.108,-0.492,1.108,-1.09 0,-0.607,-0.484,-1.099,-1.108,-1.099 -0.615,0,-1.107,0.492,-1.107,1.099 0,0.598,0.492,1.09,1.107,1.09l0,0zM99.493,12.904l1.899,0 0,-9.247 -1.899,0 0,9.247 0,0zM103.351,12.904l1.899,0 0,-5.388c0,-1.442,0.861,-2.408,2.197,-2.408 1.319,0,1.969,0.782,1.969,2.171l0,5.625 1.907,0 0,-5.986c0,-2.127,-1.169,-3.437,-3.199,-3.437 -1.398,0,-2.347,0.633,-2.83,1.573l-0.044,0 0,-1.398 -1.899,0 0,9.247 0,0zM122.643,13.123c3.534,0,5.625,-2.092,5.625,-5.546l0,-1.459 -5.484,0 0,1.978 2.9,0 -0.008,0.185c-0.071,1.565,-1.257,2.593,-2.989,2.593 -2.109,0,-3.445,-1.626,-3.445,-4.377l0,-0.009c0,-2.69,1.257,-4.237,3.349,-4.237 1.432,0,2.443,0.712,2.865,1.943l0.035,0.088 2.663,0 -0.026,-0.123c-0.422,-2.382,-2.496,-4.158,-5.546,-4.158 -3.718,0,-6.047,2.452,-6.047,6.513l0,0.009c0,4.131,2.32,6.601,6.108,6.601l0,0zM132.522,13.053c1.24,0,2.242,-0.589,2.778,-1.556l0.052,0 0,1.406 2.567,0 0,-6.461c0,-1.899,-1.573,-3.156,-4.008,-3.156 -2.487,0,-3.981,1.248,-4.122,2.989l-0.009,0.105 2.347,0 0.017,-0.079c0.123,-0.606,0.704,-1.055,1.662,-1.055 1.002,0,1.546,0.519,1.546,1.354l0,0.58 -2.329,0.141c-2.338,0.149,-3.665,1.151,-3.665,2.865l0,0.018c0,1.661,1.275,2.848,3.164,2.848l0,0zM131.898,10.073l0,-0.018c0,-0.668,0.519,-1.09,1.512,-1.151l1.942,-0.123 0,0.677c0,0.984,-0.843,1.723,-1.995,1.723 -0.887,0,-1.459,-0.413,-1.459,-1.108l0,0zM139.58,12.904l2.566,0 0,-5.274c0,-1.371,0.739,-2.127,2.004,-2.127 0.369,0,0.721,0.053,0.932,0.141l0,-2.259c-0.193,-0.053,-0.457,-0.097,-0.738,-0.097 -1.099,0,-1.864,0.677,-2.145,1.837l-0.053,0 0,-1.644 -2.566,0 0,9.423 0,0zM149.309,13.097c1.363,0,2.4,-0.686,2.901,-1.802l0.053,0 0,1.609 2.566,0 0,-12.684 -2.566,0 0,4.896 -0.053,0c-0.51,-1.143,-1.565,-1.828,-2.901,-1.828 -2.373,0,-3.832,1.828,-3.832,4.896l0,0.009c0,3.059,1.459,4.905,3.832,4.905l0,0zM150.171,10.97c-1.283,0,-2.083,-1.064,-2.083,-2.778l0,-0.009c0,-1.723,0.808,-2.769,2.083,-2.769 1.239,0,2.1,1.072,2.1,2.769l0,0.009c0,1.705,-0.852,2.778,-2.1,2.778l0,0zM160.832,13.097c2.689,0,3.99,-1.591,4.28,-2.98l0.027,-0.097 -2.356,0 -0.018,0.053c-0.184,0.527,-0.826,1.108,-1.88,1.108 -1.31,0,-2.127,-0.879,-2.154,-2.382l6.487,0 0,-0.791c0,-2.848,-1.732,-4.72,-4.492,-4.72 -2.759,0,-4.526,1.916,-4.526,4.914l0,0.009c0,3.015,1.749,4.887,4.632,4.887l0,0zM160.77,5.204c1.064,0,1.828,0.677,1.987,1.978l-3.999,0c0.167,-1.275,0.958,-1.978,2.012,-1.978l0,0zM166.545,12.904l2.566,0 0,-5.415c0,-1.231,0.73,-2.074,1.881,-2.074 1.151,0,1.731,0.703,1.731,1.934l0,5.555 2.567,0 0,-6.083c0,-2.206,-1.178,-3.534,-3.252,-3.534 -1.424,0,-2.391,0.659,-2.874,1.74l-0.053,0 0,-1.547 -2.566,0 0,9.423 0,0zM166.545,12.904")!


    }

    private func createLiLl1() {
        liLl_1 = UIView(frame: CGRect(x: 0, y: 0, width: 120.43, height: 102.5))
        liLl_1.backgroundColor = UIColor.clear
        liLl_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        liLl_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        liLl_1.layer.borderWidth = 1
        liLl_1.layer.borderColor = UIColor.clear.cgColor
        liLl_1.layer.name = "liLl_1"
        liLl_1.layer.shadowColor = UIColor.clear.cgColor
        liLl_1.layer.shadowOpacity = 1
        liLl_1.layer.position = CGPoint(x: 0, y: 0)
        liLl_1.layer.bounds = CGRect(x: 0, y: 0, width: 120.43, height: 102.5)
        liLl_1.layer.masksToBounds = false

    }

    private func createGroup661() {
        group661 = UIView(frame: CGRect(x: 84.32, y: 21.79, width: 239.68, height: 64.42))
        group661.backgroundColor = UIColor.clear
        group661.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group661.layer.shadowOffset = CGSize(width: 0, height: 6)
        group661.layer.shadowRadius = 12
        group661.layer.borderWidth = 1
        group661.layer.borderColor = UIColor.clear.cgColor
        group661.layer.name = "group661"
        group661.layer.shadowColor = UIColor(red: 0.976, green: 0.38, blue: 0.38, alpha: 0.4).cgColor
        group661.layer.shadowOpacity = 1
        group661.layer.position = CGPoint(x: 84.32, y: 21.79)
        group661.layer.bounds = CGRect(x: 0, y: 0, width: 239.68, height: 64.42)
        group661.layer.masksToBounds = false

    }

    private func createRectangle389() {
        rectangle389 = ShapeView(frame: CGRect(x: 239.68, y: 64.42, width: 219.79, height: 64.42))
        rectangle389.backgroundColor = UIColor.clear
        rectangle389.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle389.transform = CGAffineTransform(rotationAngle: 1 * CGFloat.pi)
        rectangle389.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle389.layer.borderColor = UIColor.clear.cgColor
        rectangle389.layer.cornerRadius = 24
        rectangle389.layer.name = "rectangle389"
        rectangle389.layer.shadowColor = UIColor.clear.cgColor
        rectangle389.layer.shadowOpacity = 1
        rectangle389.layer.position = CGPoint(x: 239.68, y: 64.42)
        rectangle389.layer.bounds = CGRect(x: 0, y: 0, width: 219.79, height: 64.42)
        rectangle389.layer.masksToBounds = true
        rectangle389.shapeLayer.name = "rectangle389.shapeLayer"
        rectangle389.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle389.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle389.shapeLayer.miterLimit = 4
        rectangle389.shapeLayer.lineDashPattern = []
        rectangle389.shapeLayer.lineDashPhase = 0
        rectangle389.shapeLayer.lineWidth = 1
        rectangle389.shapeLayer.path = CGPathCreateWithSVGString("M0,24c-0,-13.166,10.834,-24,24,-24l171.79,0c13.166,0,24,10.834,24,24l0,16.42c0,13.166,-10.834,24,-24,24l-171.79,0c-13.166,0,-24,-10.834,-24,-24l0,-16.42zM0,24")!


    }

    private func createVector99() {
        vector9 = ShapeView(frame: CGRect(x: 0, y: 38.84, width: 43.68, height: 25.58))
        vector9.backgroundColor = UIColor.clear
        vector9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector9.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector9.layer.borderColor = UIColor.clear.cgColor
        vector9.layer.name = "vector9"
        vector9.layer.shadowColor = UIColor.clear.cgColor
        vector9.layer.shadowOpacity = 1
        vector9.layer.position = CGPoint(x: 0, y: 38.84)
        vector9.layer.bounds = CGRect(x: 0, y: 0, width: 43.68, height: 25.58)
        vector9.layer.masksToBounds = false
        vector9.shapeLayer.name = "vector9.shapeLayer"
        vector9.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector9.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        vector9.shapeLayer.miterLimit = 4
        vector9.shapeLayer.lineDashPattern = []
        vector9.shapeLayer.lineDashPhase = 0
        vector9.shapeLayer.lineWidth = 1
        vector9.shapeLayer.path = CGPathCreateWithSVGString("M0,25.58l37.97,-25.58 5.71,25.58 -43.68,0 0,0zM0,25.58")!


    }

    private func createGroup554() {
        group554 = UIView(frame: CGRect(x: 0, y: 0, width: 120.43, height: 102.5))
        group554.backgroundColor = UIColor.clear
        group554.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group554.layer.shadowOffset = CGSize(width: 0, height: 0)
        group554.layer.borderWidth = 1
        group554.layer.borderColor = UIColor.clear.cgColor
        group554.layer.name = "group554"
        group554.layer.shadowColor = UIColor.clear.cgColor
        group554.layer.shadowOpacity = 1
        group554.layer.position = CGPoint(x: 0, y: 0)
        group554.layer.bounds = CGRect(x: 0, y: 0, width: 120.43, height: 102.5)
        group554.layer.masksToBounds = false

    }

    private func createGroup564() {
        group564 = UIView(frame: CGRect(x: 0, y: 0, width: 120.43, height: 102.5))
        group564.backgroundColor = UIColor.clear
        group564.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group564.layer.shadowOffset = CGSize(width: 0, height: 0)
        group564.layer.borderWidth = 1
        group564.layer.borderColor = UIColor.clear.cgColor
        group564.layer.name = "group564"
        group564.layer.shadowColor = UIColor.clear.cgColor
        group564.layer.shadowOpacity = 1
        group564.layer.position = CGPoint(x: 0, y: 0)
        group564.layer.bounds = CGRect(x: 0, y: 0, width: 120.43, height: 102.5)
        group564.layer.masksToBounds = false

    }

    private func createVector() {
        vector = ShapeView(frame: CGRect(x: 9.74, y: 46.12, width: 92.76, height: 56.37))
        vector.backgroundColor = UIColor.clear
        vector.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector.layer.borderColor = UIColor.clear.cgColor
        vector.layer.name = "vector"
        vector.layer.shadowColor = UIColor.clear.cgColor
        vector.layer.shadowOpacity = 1
        vector.layer.position = CGPoint(x: 9.74, y: 46.12)
        vector.layer.bounds = CGRect(x: 0, y: 0, width: 92.76, height: 56.37)
        vector.layer.masksToBounds = false
        vector.shapeLayer.name = "vector.shapeLayer"
        vector.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector.shapeLayer.fillColor = nil
        vector.shapeLayer.miterLimit = 4
        vector.shapeLayer.lineDashPattern = []
        vector.shapeLayer.lineDashPhase = 0
        vector.shapeLayer.lineWidth = 1
        vector.shapeLayer.path = CGPathCreateWithSVGString("M47.323,56.37c10.021,0,31.245,-0.578,35.526,-13.222 4.281,-12.644,8.856,-34.341,9.91,-43.148 -11.591,4.233,-20.764,5.697,-46.38,5.697 -25.616,0,-32.91,-1.171,-46.38,-5.697 1.514,11.363,5.423,29.53,9.91,42.729 4.487,13.198,27.384,13.641,37.413,13.641l0,0zM47.323,56.37")!

        let startPoint = CGPoint(x: 0.508, y: 0.498)
        let endPoint = CGPoint(x: 1.24699, y: 2.00308)
        let colors = [UIColor(red: 1, green: 0.725, blue: 0.561, alpha: 1).cgColor, UIColor(red: 0.996, green: 0.804, blue: 0.647, alpha: 1).cgColor, UIColor(red: 0.992, green: 0.867, blue: 0.714, alpha: 1).cgColor, UIColor(red: 0.988, green: 0.914, blue: 0.765, alpha: 1).cgColor, UIColor(red: 0.988, green: 0.937, blue: 0.792, alpha: 1).cgColor, UIColor(red: 0.988, green: 0.945, blue: 0.8, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.1), NSNumber(value: 0.21), NSNumber(value: 0.36), NSNumber(value: 0.55), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector1() {
        vector_1 = ShapeView(frame: CGRect(x: 10.76, y: 44.59, width: 90.2, height: 22.55))
        vector_1.backgroundColor = UIColor.clear
        vector_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_1.layer.borderColor = UIColor.clear.cgColor
        vector_1.layer.name = "vector_1"
        vector_1.layer.shadowColor = UIColor.clear.cgColor
        vector_1.layer.shadowOpacity = 1
        vector_1.layer.position = CGPoint(x: 10.76, y: 44.59)
        vector_1.layer.bounds = CGRect(x: 0, y: 0, width: 90.2, height: 22.55)
        vector_1.layer.masksToBounds = false
        vector_1.shapeLayer.name = "vector_1.shapeLayer"
        vector_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_1.shapeLayer.fillColor = nil
        vector_1.shapeLayer.miterLimit = 4
        vector_1.shapeLayer.lineDashPattern = []
        vector_1.shapeLayer.lineDashPhase = 0
        vector_1.shapeLayer.lineWidth = 1
        vector_1.shapeLayer.path = CGPathCreateWithSVGString("M42.643,22.531c-19.427,-0.088,-34.963,-2.825,-41.557,-6.705 0,0,-0.587,-3.065,-0.864,-4.649 -0.174,-0.984,-0.602,-2.208,0.571,-3.065 6.809,-4.993,26.45,-6.521,49.483,-6.401 1.086,0,26.426,-4.001,33.718,0.232 2.679,1.552,4.93,2.849,5.961,5.033 0.634,1.344,-0.159,4.417,-0.159,4.417l-1.038,5.273c-9.202,3.601,-25.99,5.977,-46.115,5.881l0,-0.016 0,0zM42.643,22.531")!

        let startPoint = CGPoint(x: 0.506, y: 0.528)
        let endPoint = CGPoint(x: 0.934498, y: 1.00946)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.77).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.5).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.28).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.13).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.03).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.18), NSNumber(value: 0.4), NSNumber(value: 0.6), NSNumber(value: 0.78), NSNumber(value: 0.92), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector2() {
        vector_2 = ShapeView(frame: CGRect(x: 7.17, y: 40.49, width: 96.86, height: 19.99))
        vector_2.backgroundColor = UIColor.clear
        vector_2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_2.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_2.layer.borderColor = UIColor.clear.cgColor
        vector_2.layer.name = "vector_2"
        vector_2.layer.shadowColor = UIColor.clear.cgColor
        vector_2.layer.shadowOpacity = 1
        vector_2.layer.position = CGPoint(x: 7.17, y: 40.49)
        vector_2.layer.bounds = CGRect(x: 0, y: 0, width: 96.86, height: 19.99)
        vector_2.layer.masksToBounds = false
        vector_2.shapeLayer.name = "vector_2.shapeLayer"
        vector_2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_2.shapeLayer.fillColor = UIColor(red: 0.988, green: 0.945, blue: 0.8, alpha: 1).cgColor
        vector_2.shapeLayer.miterLimit = 4
        vector_2.shapeLayer.lineDashPattern = []
        vector_2.shapeLayer.lineDashPhase = 0
        vector_2.shapeLayer.lineWidth = 1
        vector_2.shapeLayer.path = CGPathCreateWithSVGString("M0,0.081l1.837,13.567c0,0,11.839,6.342,48.446,6.342 32.949,0,44.987,-6.237,44.987,-6.237l1.59,-13.753c-15.828,3.187,-31.921,4.812,-48.056,4.854 -38.793,-0.259,-48.804,-4.773,-48.804,-4.773l0,0zM0,0.081")!


    }

    private func createVector3() {
        vector_3 = ShapeView(frame: CGRect(x: 7.17, y: 35.36, width: 96.86, height: 10.25))
        vector_3.backgroundColor = UIColor.clear
        vector_3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_3.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_3.layer.borderColor = UIColor.clear.cgColor
        vector_3.layer.name = "vector_3"
        vector_3.layer.shadowColor = UIColor.clear.cgColor
        vector_3.layer.shadowOpacity = 1
        vector_3.layer.position = CGPoint(x: 7.17, y: 35.36)
        vector_3.layer.bounds = CGRect(x: 0, y: 0, width: 96.86, height: 10.25)
        vector_3.layer.masksToBounds = false
        vector_3.shapeLayer.name = "vector_3.shapeLayer"
        vector_3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_3.shapeLayer.fillColor = UIColor(red: 1, green: 0.973, blue: 0.91, alpha: 1).cgColor
        vector_3.shapeLayer.miterLimit = 4
        vector_3.shapeLayer.lineDashPattern = []
        vector_3.shapeLayer.lineDashPhase = 0
        vector_3.shapeLayer.lineWidth = 1
        vector_3.shapeLayer.path = CGPathCreateWithSVGString("M48.43,10.25c26.747,0,48.43,-2.295,48.43,-5.125 0,-2.83,-21.683,-5.125,-48.43,-5.125 -26.747,0,-48.43,2.295,-48.43,5.125 0,2.83,21.683,5.125,48.43,5.125l0,0zM48.43,10.25")!


    }

    private func createVector4() {
        vector_4 = ShapeView(frame: CGRect(x: 7.17, y: 35.36, width: 96.86, height: 10.25))
        vector_4.backgroundColor = UIColor.clear
        vector_4.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_4.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_4.layer.borderColor = UIColor.clear.cgColor
        vector_4.layer.name = "vector_4"
        vector_4.layer.shadowColor = UIColor.clear.cgColor
        vector_4.layer.shadowOpacity = 1
        vector_4.layer.position = CGPoint(x: 7.17, y: 35.36)
        vector_4.layer.bounds = CGRect(x: 0, y: 0, width: 96.86, height: 10.25)
        vector_4.layer.masksToBounds = false
        vector_4.shapeLayer.name = "vector_4.shapeLayer"
        vector_4.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_4.shapeLayer.fillColor = nil
        vector_4.shapeLayer.miterLimit = 4
        vector_4.shapeLayer.lineDashPattern = []
        vector_4.shapeLayer.lineDashPhase = 0
        vector_4.shapeLayer.lineWidth = 1
        vector_4.shapeLayer.path = CGPathCreateWithSVGString("M48.43,10.25c26.747,0,48.43,-2.295,48.43,-5.125 0,-2.83,-21.683,-5.125,-48.43,-5.125 -26.747,0,-48.43,2.295,-48.43,5.125 0,2.83,21.683,5.125,48.43,5.125l0,0zM48.43,10.25")!

        let startPoint = CGPoint(x: 0.501, y: 0.502)
        let endPoint = CGPoint(x: 1.28818, y: 1.0066)
        let colors = [UIColor(red: 1, green: 0.655, blue: 0.541, alpha: 1).cgColor, UIColor(red: 1, green: 0.659, blue: 0.545, alpha: 0.98).cgColor, UIColor(red: 1, green: 0.675, blue: 0.557, alpha: 0.94).cgColor, UIColor(red: 1, green: 0.694, blue: 0.576, alpha: 0.86).cgColor, UIColor(red: 0.996, green: 0.725, blue: 0.608, alpha: 0.75).cgColor, UIColor(red: 0.996, green: 0.769, blue: 0.643, alpha: 0.61).cgColor, UIColor(red: 0.992, green: 0.816, blue: 0.686, alpha: 0.44).cgColor, UIColor(red: 0.992, green: 0.875, blue: 0.741, alpha: 0.24).cgColor, UIColor(red: 0.988, green: 0.941, blue: 0.8, alpha: 0.01).cgColor, UIColor(red: 0.988, green: 0.945, blue: 0.804, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.13), NSNumber(value: 0.25), NSNumber(value: 0.38), NSNumber(value: 0.5), NSNumber(value: 0.63), NSNumber(value: 0.75), NSNumber(value: 0.87), NSNumber(value: 0.99), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_4.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector5() {
        vector_5 = ShapeView(frame: CGRect(x: 14.86, y: 66.11, width: 36.9, height: 31.26))
        vector_5.backgroundColor = UIColor.clear
        vector_5.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_5.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_5.layer.borderColor = UIColor.clear.cgColor
        vector_5.layer.name = "vector_5"
        vector_5.layer.shadowColor = UIColor.clear.cgColor
        vector_5.layer.shadowOpacity = 1
        vector_5.layer.position = CGPoint(x: 14.86, y: 66.11)
        vector_5.layer.bounds = CGRect(x: 0, y: 0, width: 36.9, height: 31.26)
        vector_5.layer.masksToBounds = false
        vector_5.shapeLayer.name = "vector_5.shapeLayer"
        vector_5.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_5.shapeLayer.fillColor = nil
        vector_5.shapeLayer.miterLimit = 4
        vector_5.shapeLayer.lineDashPattern = []
        vector_5.shapeLayer.lineDashPhase = 0
        vector_5.shapeLayer.lineWidth = 1
        vector_5.shapeLayer.path = CGPathCreateWithSVGString("M36.638,18.761c-1.714,-8.467,-11.446,-16.719,-21.707,-18.436 -7.746,-1.294,-13.248,1.358,-14.931,6.438l2.787,10.384c1.181,2.303,2.774,4.372,4.702,6.103 9.612,8.563,16.46,7.988,16.46,7.988 8.691,0.399,14.25,-4.809,12.688,-12.477l0,0zM36.638,18.761")!

        let startPoint = CGPoint(x: 0.499, y: 0.498)
        let endPoint = CGPoint(x: 0.801602, y: 1.05941)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.76).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.53).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.34).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.19).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.09).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.02).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.16), NSNumber(value: 0.32), NSNumber(value: 0.49), NSNumber(value: 0.64), NSNumber(value: 0.78), NSNumber(value: 0.9), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_5.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector6() {
        vector_6 = ShapeView(frame: CGRect(x: 60.47, y: 66.11, width: 36.39, height: 31.26))
        vector_6.backgroundColor = UIColor.clear
        vector_6.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_6.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_6.layer.borderColor = UIColor.clear.cgColor
        vector_6.layer.name = "vector_6"
        vector_6.layer.shadowColor = UIColor.clear.cgColor
        vector_6.layer.shadowOpacity = 1
        vector_6.layer.position = CGPoint(x: 60.47, y: 66.11)
        vector_6.layer.bounds = CGRect(x: 0, y: 0, width: 36.39, height: 31.26)
        vector_6.layer.masksToBounds = false
        vector_6.shapeLayer.name = "vector_6.shapeLayer"
        vector_6.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_6.shapeLayer.fillColor = nil
        vector_6.shapeLayer.miterLimit = 4
        vector_6.shapeLayer.lineDashPattern = []
        vector_6.shapeLayer.lineDashPhase = 0
        vector_6.shapeLayer.lineWidth = 1
        vector_6.shapeLayer.path = CGPathCreateWithSVGString("M0.259,18.761c1.683,-8.467,11.28,-16.719,21.407,-18.436 7.639,-1.294,13.065,1.358,14.724,6.438l-2.749,10.384c-1.165,2.303,-2.736,4.372,-4.637,6.103 -9.479,8.563,-16.233,7.988,-16.233,7.988 -8.579,0.399,-14.053,-4.809,-12.512,-12.477l0,0zM0.259,18.761")!

        let startPoint = CGPoint(x: -262.749, y: 201.481)
        let endPoint = CGPoint(x: -250.91, y: 227.33)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.76).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.53).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.34).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.19).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.09).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.02).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.16), NSNumber(value: 0.32), NSNumber(value: 0.49), NSNumber(value: 0.64), NSNumber(value: 0.78), NSNumber(value: 0.9), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_6.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector7() {
        vector_7 = ShapeView(frame: CGRect(x: 25.11, y: 78.92, width: 14.35, height: 5.12))
        vector_7.backgroundColor = UIColor.clear
        vector_7.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_7.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_7.layer.borderColor = UIColor.clear.cgColor
        vector_7.layer.name = "vector_7"
        vector_7.layer.shadowColor = UIColor.clear.cgColor
        vector_7.layer.shadowOpacity = 1
        vector_7.layer.position = CGPoint(x: 25.11, y: 78.92)
        vector_7.layer.bounds = CGRect(x: 0, y: 0, width: 14.35, height: 5.12)
        vector_7.layer.masksToBounds = false
        vector_7.shapeLayer.name = "vector_7.shapeLayer"
        vector_7.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_7.shapeLayer.fillColor = nil
        vector_7.shapeLayer.miterLimit = 4
        vector_7.shapeLayer.lineDashPattern = []
        vector_7.shapeLayer.lineDashPhase = 0
        vector_7.shapeLayer.lineWidth = 1
        vector_7.shapeLayer.path = CGPathCreateWithSVGString("M7.938,0.558c3.94,0.883,6.789,2.502,6.371,3.604 -0.418,1.101,-3.964,1.28,-7.896,0.397 -3.933,-0.883,-6.797,-2.494,-6.371,-3.596 0.426,-1.101,3.956,-1.288,7.896,-0.405l0,0zM7.938,0.558")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1.59364, y: 0.873)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_7.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector8() {
        vector_8 = ShapeView(frame: CGRect(x: 67.14, y: 75.34, width: 25.11, height: 11.79))
        vector_8.backgroundColor = UIColor.clear
        vector_8.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_8.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_8.layer.borderColor = UIColor.clear.cgColor
        vector_8.layer.name = "vector_8"
        vector_8.layer.shadowColor = UIColor.clear.cgColor
        vector_8.layer.shadowOpacity = 1
        vector_8.layer.position = CGPoint(x: 67.14, y: 75.34)
        vector_8.layer.bounds = CGRect(x: 0, y: 0, width: 25.11, height: 11.79)
        vector_8.layer.masksToBounds = false
        vector_8.shapeLayer.name = "vector_8.shapeLayer"
        vector_8.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_8.shapeLayer.fillColor = nil
        vector_8.shapeLayer.miterLimit = 4
        vector_8.shapeLayer.lineDashPattern = []
        vector_8.shapeLayer.lineDashPhase = 0
        vector_8.shapeLayer.lineWidth = 1
        vector_8.shapeLayer.path = CGPathCreateWithSVGString("M11.216,1.294c-6.883,2.033,-11.881,5.742,-11.144,8.283 0.737,2.541,6.931,2.954,13.821,0.921 6.891,-2.033,11.881,-5.742,11.144,-8.283 -0.737,-2.541,-6.931,-2.962,-13.822,-0.921l0,0zM11.216,1.294")!

        let startPoint = CGPoint(x: 0.479, y: 0.477)
        let endPoint = CGPoint(x: 0.892476, y: 1.07624)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.78).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.5).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.29).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.13).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.04).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.17), NSNumber(value: 0.4), NSNumber(value: 0.6), NSNumber(value: 0.78), NSNumber(value: 0.92), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_8.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector9() {
        vector_9 = ShapeView(frame: CGRect(x: 19.99, y: 75.34, width: 25.11, height: 11.79))
        vector_9.backgroundColor = UIColor.clear
        vector_9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_9.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_9.layer.borderColor = UIColor.clear.cgColor
        vector_9.layer.name = "vector_9"
        vector_9.layer.shadowColor = UIColor.clear.cgColor
        vector_9.layer.shadowOpacity = 1
        vector_9.layer.position = CGPoint(x: 19.99, y: 75.34)
        vector_9.layer.bounds = CGRect(x: 0, y: 0, width: 25.11, height: 11.79)
        vector_9.layer.masksToBounds = false
        vector_9.shapeLayer.name = "vector_9.shapeLayer"
        vector_9.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_9.shapeLayer.fillColor = nil
        vector_9.shapeLayer.miterLimit = 4
        vector_9.shapeLayer.lineDashPattern = []
        vector_9.shapeLayer.lineDashPhase = 0
        vector_9.shapeLayer.lineWidth = 1
        vector_9.shapeLayer.path = CGPathCreateWithSVGString("M13.891,1.294c6.893,2.033,11.884,5.742,11.147,8.283 -0.737,2.541,-6.924,2.954,-13.825,0.921 -6.901,-2.033,-11.884,-5.742,-11.139,-8.283 0.745,-2.541,6.924,-2.962,13.817,-0.921l0,0zM13.891,1.294")!

        let startPoint = CGPoint(x: 0.522, y: 0.493)
        let endPoint = CGPoint(x: 0.935106, y: 1.09257)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.73).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.47).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.27).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.12).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.03).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.21), NSNumber(value: 0.42), NSNumber(value: 0.61), NSNumber(value: 0.78), NSNumber(value: 0.91), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_9.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector10() {
        vector_10 = ShapeView(frame: CGRect(x: 29.72, y: 70.72, width: 9.74, height: 11.79))
        vector_10.backgroundColor = UIColor.clear
        vector_10.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_10.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_10.layer.borderColor = UIColor.clear.cgColor
        vector_10.layer.name = "vector_10"
        vector_10.layer.shadowColor = UIColor.clear.cgColor
        vector_10.layer.shadowOpacity = 1
        vector_10.layer.position = CGPoint(x: 29.72, y: 70.72)
        vector_10.layer.bounds = CGRect(x: 0, y: 0, width: 9.74, height: 11.79)
        vector_10.layer.masksToBounds = false
        vector_10.shapeLayer.name = "vector_10.shapeLayer"
        vector_10.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_10.shapeLayer.fillColor = UIColor(red: 0, green: 0.149, blue: 0.247, alpha: 1).cgColor
        vector_10.shapeLayer.miterLimit = 4
        vector_10.shapeLayer.lineDashPattern = []
        vector_10.shapeLayer.lineDashPhase = 0
        vector_10.shapeLayer.lineWidth = 1
        vector_10.shapeLayer.path = CGPathCreateWithSVGString("M4.87,11.79c2.69,0,4.87,-2.639,4.87,-5.895 0,-3.256,-2.18,-5.895,-4.87,-5.895 -2.69,0,-4.87,2.639,-4.87,5.895 0,3.256,2.18,5.895,4.87,5.895l0,0zM4.87,11.79")!


    }

    private func createVector11() {
        vector_11 = ShapeView(frame: CGRect(x: 72.77, y: 70.72, width: 9.74, height: 11.79))
        vector_11.backgroundColor = UIColor.clear
        vector_11.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_11.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_11.layer.borderColor = UIColor.clear.cgColor
        vector_11.layer.name = "vector_11"
        vector_11.layer.shadowColor = UIColor.clear.cgColor
        vector_11.layer.shadowOpacity = 1
        vector_11.layer.position = CGPoint(x: 72.77, y: 70.72)
        vector_11.layer.bounds = CGRect(x: 0, y: 0, width: 9.74, height: 11.79)
        vector_11.layer.masksToBounds = false
        vector_11.shapeLayer.name = "vector_11.shapeLayer"
        vector_11.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_11.shapeLayer.fillColor = UIColor(red: 0, green: 0.149, blue: 0.247, alpha: 1).cgColor
        vector_11.shapeLayer.miterLimit = 4
        vector_11.shapeLayer.lineDashPattern = []
        vector_11.shapeLayer.lineDashPhase = 0
        vector_11.shapeLayer.lineWidth = 1
        vector_11.shapeLayer.path = CGPathCreateWithSVGString("M4.87,11.79c2.69,0,4.87,-2.639,4.87,-5.895 0,-3.256,-2.18,-5.895,-4.87,-5.895 -2.69,0,-4.87,2.639,-4.87,5.895 0,3.256,2.18,5.895,4.87,5.895l0,0zM4.87,11.79")!


    }

    private func createVector12() {
        vector_12 = ShapeView(frame: CGRect(x: 79.95, y: 77.9, width: 1.54, height: 1.54))
        vector_12.backgroundColor = UIColor.clear
        vector_12.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_12.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_12.layer.borderColor = UIColor.clear.cgColor
        vector_12.layer.name = "vector_12"
        vector_12.layer.shadowColor = UIColor.clear.cgColor
        vector_12.layer.shadowOpacity = 1
        vector_12.layer.position = CGPoint(x: 79.95, y: 77.9)
        vector_12.layer.bounds = CGRect(x: 0, y: 0, width: 1.54, height: 1.54)
        vector_12.layer.masksToBounds = false
        vector_12.shapeLayer.name = "vector_12.shapeLayer"
        vector_12.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_12.shapeLayer.fillColor = UIColor.white.cgColor
        vector_12.shapeLayer.miterLimit = 4
        vector_12.shapeLayer.lineDashPattern = []
        vector_12.shapeLayer.lineDashPhase = 0
        vector_12.shapeLayer.lineWidth = 1
        vector_12.shapeLayer.path = CGPathCreateWithSVGString("M1.059,0.056c0.186,0.075,0.336,0.221,0.416,0.405 0.081,0.184,0.086,0.393,0.015,0.581 -0.054,0.143,-0.15,0.267,-0.274,0.356 -0.125,0.089,-0.273,0.138,-0.426,0.142 -0.153,0.004,-0.304,-0.038,-0.433,-0.12 -0.129,-0.082,-0.231,-0.201,-0.292,-0.341 -0.061,-0.14,-0.08,-0.296,-0.052,-0.446 0.027,-0.151,0.099,-0.29,0.206,-0.399 0.107,-0.11,0.244,-0.185,0.394,-0.217 0.15,-0.031,0.306,-0.018,0.447,0.04l0,0zM1.059,0.056")!


    }

    private func createVectorstroke() {
        vectorstroke = ShapeView(frame: CGRect(x: 78.41, y: 71.75, width: 3.59, height: 5.64))
        vectorstroke.backgroundColor = UIColor.clear
        vectorstroke.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke.layer.borderColor = UIColor.clear.cgColor
        vectorstroke.layer.name = "vectorstroke"
        vectorstroke.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke.layer.shadowOpacity = 1
        vectorstroke.layer.position = CGPoint(x: 78.41, y: 71.75)
        vectorstroke.layer.bounds = CGRect(x: 0, y: 0, width: 3.59, height: 5.64)
        vectorstroke.layer.masksToBounds = false
        vectorstroke.shapeLayer.name = "vectorstroke.shapeLayer"
        vectorstroke.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke.shapeLayer.fillColor = UIColor.white.cgColor
        vectorstroke.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vectorstroke.shapeLayer.lineDashPattern = []
        vectorstroke.shapeLayer.lineDashPhase = 0
        vectorstroke.shapeLayer.lineWidth = 2
        vectorstroke.shapeLayer.path = CGPathCreateWithSVGString("M0.187,0.366c0.301,-0.412,0.861,-0.487,1.251,-0.168 0.649,0.531,1.178,1.208,1.55,1.981 0.372,0.773,0.578,1.624,0.602,2.491 0.015,0.52,-0.373,0.955,-0.865,0.97 -0.492,0.015,-0.903,-0.394,-0.917,-0.915 -0.016,-0.589,-0.156,-1.166,-0.409,-1.691 -0.253,-0.525,-0.612,-0.984,-1.053,-1.345 -0.389,-0.319,-0.461,-0.911,-0.159,-1.323l0,0zM0.187,0.366")!


    }

    private func createVector13() {
        vector_13 = ShapeView(frame: CGRect(x: 25.11, y: 78.92, width: 14.35, height: 5.12))
        vector_13.backgroundColor = UIColor.clear
        vector_13.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_13.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_13.layer.borderColor = UIColor.clear.cgColor
        vector_13.layer.name = "vector_13"
        vector_13.layer.shadowColor = UIColor.clear.cgColor
        vector_13.layer.shadowOpacity = 1
        vector_13.layer.position = CGPoint(x: 25.11, y: 78.92)
        vector_13.layer.bounds = CGRect(x: 0, y: 0, width: 14.35, height: 5.12)
        vector_13.layer.masksToBounds = false
        vector_13.shapeLayer.name = "vector_13.shapeLayer"
        vector_13.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_13.shapeLayer.fillColor = nil
        vector_13.shapeLayer.miterLimit = 4
        vector_13.shapeLayer.lineDashPattern = []
        vector_13.shapeLayer.lineDashPhase = 0
        vector_13.shapeLayer.lineWidth = 1
        vector_13.shapeLayer.path = CGPathCreateWithSVGString("M7.938,0.558c3.94,0.883,6.789,2.502,6.371,3.604 -0.418,1.101,-3.964,1.28,-7.896,0.397 -3.933,-0.883,-6.797,-2.494,-6.371,-3.596 0.426,-1.101,3.956,-1.288,7.896,-0.405l0,0zM7.938,0.558")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1.59364, y: 0.873)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_13.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector14() {
        vector_14 = ShapeView(frame: CGRect(x: 36.9, y: 77.9, width: 1.54, height: 1.54))
        vector_14.backgroundColor = UIColor.clear
        vector_14.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_14.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_14.layer.borderColor = UIColor.clear.cgColor
        vector_14.layer.name = "vector_14"
        vector_14.layer.shadowColor = UIColor.clear.cgColor
        vector_14.layer.shadowOpacity = 1
        vector_14.layer.position = CGPoint(x: 36.9, y: 77.9)
        vector_14.layer.bounds = CGRect(x: 0, y: 0, width: 1.54, height: 1.54)
        vector_14.layer.masksToBounds = false
        vector_14.shapeLayer.name = "vector_14.shapeLayer"
        vector_14.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_14.shapeLayer.fillColor = UIColor.white.cgColor
        vector_14.shapeLayer.miterLimit = 4
        vector_14.shapeLayer.lineDashPattern = []
        vector_14.shapeLayer.lineDashPhase = 0
        vector_14.shapeLayer.lineWidth = 1
        vector_14.shapeLayer.path = CGPathCreateWithSVGString("M1.033,0.046c0.144,0.052,0.269,0.146,0.36,0.27 0.09,0.124,0.142,0.272,0.147,0.425 0.006,0.153,-0.035,0.305,-0.115,0.435 -0.081,0.13,-0.199,0.233,-0.339,0.296 -0.14,0.063,-0.295,0.082,-0.446,0.056 -0.151,-0.026,-0.291,-0.097,-0.402,-0.203 -0.111,-0.106,-0.187,-0.243,-0.22,-0.393 -0.033,-0.15,-0.02,-0.306,0.037,-0.448 0.074,-0.186,0.218,-0.336,0.4,-0.418 0.183,-0.082,0.39,-0.09,0.578,-0.021l0,0zM1.033,0.046")!


    }

    private func createVector15() {
        vector_15 = ShapeView(frame: CGRect(x: 72.26, y: 78.92, width: 14.86, height: 5.12))
        vector_15.backgroundColor = UIColor.clear
        vector_15.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_15.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_15.layer.borderColor = UIColor.clear.cgColor
        vector_15.layer.name = "vector_15"
        vector_15.layer.shadowColor = UIColor.clear.cgColor
        vector_15.layer.shadowOpacity = 1
        vector_15.layer.position = CGPoint(x: 72.26, y: 78.92)
        vector_15.layer.bounds = CGRect(x: 0, y: 0, width: 14.86, height: 5.12)
        vector_15.layer.masksToBounds = false
        vector_15.shapeLayer.name = "vector_15.shapeLayer"
        vector_15.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_15.shapeLayer.fillColor = nil
        vector_15.shapeLayer.miterLimit = 4
        vector_15.shapeLayer.lineDashPattern = []
        vector_15.shapeLayer.lineDashPhase = 0
        vector_15.shapeLayer.lineWidth = 1
        vector_15.shapeLayer.path = CGPathCreateWithSVGString("M6.636,0.558c-4.074,0.883,-7.034,2.502,-6.592,3.604 0.441,1.101,4.098,1.28,8.18,0.397 4.082,-0.883,7.034,-2.494,6.592,-3.596 -0.441,-1.101,-4.098,-1.288,-8.18,-0.405l0,0zM6.636,0.558")!

        let startPoint = CGPoint(x: 176.2, y: 153.3)
        let endPoint = CGPoint(x: 183.12, y: 160.22)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_15.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector16() {
        vector_16 = ShapeView(frame: CGRect(x: 49.2, y: 88.15, width: 13.32, height: 9.74))
        vector_16.backgroundColor = UIColor.clear
        vector_16.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_16.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_16.layer.borderColor = UIColor.clear.cgColor
        vector_16.layer.name = "vector_16"
        vector_16.layer.shadowColor = UIColor.clear.cgColor
        vector_16.layer.shadowOpacity = 1
        vector_16.layer.position = CGPoint(x: 49.2, y: 88.15)
        vector_16.layer.bounds = CGRect(x: 0, y: 0, width: 13.32, height: 9.74)
        vector_16.layer.masksToBounds = false
        vector_16.shapeLayer.name = "vector_16.shapeLayer"
        vector_16.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_16.shapeLayer.fillColor = nil
        vector_16.shapeLayer.miterLimit = 4
        vector_16.shapeLayer.lineDashPattern = []
        vector_16.shapeLayer.lineDashPhase = 0
        vector_16.shapeLayer.lineWidth = 1
        vector_16.shapeLayer.path = CGPathCreateWithSVGString("M0.056,0l6.597,0c0,0,5.598,1.529,6.605,0 0.445,4.728,-1.491,9.74,-6.621,9.74 -4.357,0,-7.066,-3.94,-6.582,-9.456l0,-0.284 0,0zM0.056,0")!

        let startPoint = CGPoint(x: 0.51, y: 0.259)
        let endPoint = CGPoint(x: 1.20195, y: 0.806)
        let colors = [UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 1).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0.65).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0.19).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.33), NSNumber(value: 0.79), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_16.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector17() {
        vector_17 = ShapeView(frame: CGRect(x: 50.74, y: 83.54, width: 10.25, height: 10.25))
        vector_17.backgroundColor = UIColor.clear
        vector_17.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_17.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_17.layer.borderColor = UIColor.clear.cgColor
        vector_17.layer.name = "vector_17"
        vector_17.layer.shadowColor = UIColor.clear.cgColor
        vector_17.layer.shadowOpacity = 1
        vector_17.layer.position = CGPoint(x: 50.74, y: 83.54)
        vector_17.layer.bounds = CGRect(x: 0, y: 0, width: 10.25, height: 10.25)
        vector_17.layer.masksToBounds = false
        vector_17.shapeLayer.name = "vector_17.shapeLayer"
        vector_17.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_17.shapeLayer.fillColor = UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor
        vector_17.shapeLayer.miterLimit = 4
        vector_17.shapeLayer.lineDashPattern = []
        vector_17.shapeLayer.lineDashPhase = 0
        vector_17.shapeLayer.lineWidth = 1
        vector_17.shapeLayer.path = CGPathCreateWithSVGString("M0,0l10.25,0c0,0,-0.694,10.25,-5.117,10.25 -4.423,0,-5.133,-10.25,-5.133,-10.25l0,0zM0,0")!


    }

    private func createVector18() {
        vector_18 = ShapeView(frame: CGRect(x: 50.74, y: 83.54, width: 9.74, height: 9.22))
        vector_18.backgroundColor = UIColor.clear
        vector_18.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_18.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_18.layer.borderColor = UIColor.clear.cgColor
        vector_18.layer.name = "vector_18"
        vector_18.layer.shadowColor = UIColor.clear.cgColor
        vector_18.layer.shadowOpacity = 1
        vector_18.layer.position = CGPoint(x: 50.74, y: 83.54)
        vector_18.layer.bounds = CGRect(x: 0, y: 0, width: 9.74, height: 9.22)
        vector_18.layer.masksToBounds = false
        vector_18.shapeLayer.name = "vector_18.shapeLayer"
        vector_18.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_18.shapeLayer.fillColor = nil
        vector_18.shapeLayer.miterLimit = 4
        vector_18.shapeLayer.lineDashPattern = []
        vector_18.shapeLayer.lineDashPhase = 0
        vector_18.shapeLayer.lineWidth = 1
        vector_18.shapeLayer.path = CGPathCreateWithSVGString("M0,0.023l9.737,0.108c0,0,0.296,9.089,-4.748,9.089 -5.044,0,-4.989,-8.298,-4.989,-9.22l0,0.023 0,0zM0,0.023")!

        let startPoint = CGPoint(x: 0.5, y: 0.089)
        let endPoint = CGPoint(x: 0.501, y: 0.94)
        let colors = [UIColor(red: 0.91, green: 0.106, blue: 0, alpha: 1).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_18.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector19() {
        vector_19 = ShapeView(frame: CGRect(x: 49.71, y: 83.54, width: 12.3, height: 6.66))
        vector_19.backgroundColor = UIColor.clear
        vector_19.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_19.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_19.layer.borderColor = UIColor.clear.cgColor
        vector_19.layer.name = "vector_19"
        vector_19.layer.shadowColor = UIColor.clear.cgColor
        vector_19.layer.shadowOpacity = 1
        vector_19.layer.position = CGPoint(x: 49.71, y: 83.54)
        vector_19.layer.bounds = CGRect(x: 0, y: 0, width: 12.3, height: 6.66)
        vector_19.layer.masksToBounds = false
        vector_19.shapeLayer.name = "vector_19.shapeLayer"
        vector_19.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_19.shapeLayer.fillColor = nil
        vector_19.shapeLayer.miterLimit = 4
        vector_19.shapeLayer.lineDashPattern = []
        vector_19.shapeLayer.lineDashPhase = 0
        vector_19.shapeLayer.lineWidth = 1
        vector_19.shapeLayer.path = CGPathCreateWithSVGString("M2.009,6.238c0.782,-1.154,2.127,-3.228,3.996,-3.228 2.182,0,3.73,2.227,4.473,3.607 0.164,0.29,2.205,-0.952,1.759,-1.775 -1.196,-2.211,-3.292,-4.842,-6.255,-4.842 -2.51,0,-4.394,2.421,-5.599,4.196 -1.376,2.138,1.384,2.453,1.626,2.042l0,0zM2.009,6.238")!

        let startPoint = CGPoint(x: 0.505, y: 0.017)
        let endPoint = CGPoint(x: 0.504, y: 0.265)
        let colors = [UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 1).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.96).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.71).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.49).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.31).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.18).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.08).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.02).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.02), NSNumber(value: 0.13), NSNumber(value: 0.25), NSNumber(value: 0.36), NSNumber(value: 0.48), NSNumber(value: 0.59), NSNumber(value: 0.71), NSNumber(value: 0.83)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_19.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector20() {
        vector_20 = ShapeView(frame: CGRect(x: 54.84, y: 3.59, width: 7.17, height: 39.46))
        vector_20.backgroundColor = UIColor.clear
        vector_20.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_20.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_20.layer.borderColor = UIColor.clear.cgColor
        vector_20.layer.name = "vector_20"
        vector_20.layer.shadowColor = UIColor.clear.cgColor
        vector_20.layer.shadowOpacity = 1
        vector_20.layer.position = CGPoint(x: 54.84, y: 3.59)
        vector_20.layer.bounds = CGRect(x: 0, y: 0, width: 7.17, height: 39.46)
        vector_20.layer.masksToBounds = false
        vector_20.shapeLayer.name = "vector_20.shapeLayer"
        vector_20.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_20.shapeLayer.fillColor = nil
        vector_20.shapeLayer.miterLimit = 4
        vector_20.shapeLayer.lineDashPattern = []
        vector_20.shapeLayer.lineDashPhase = 0
        vector_20.shapeLayer.lineWidth = 1
        vector_20.shapeLayer.path = CGPathCreateWithSVGString("M0,38.744c0.333,-15.861,1.487,-31.848,2.075,-37.351 0.093,-0.489,0.263,-0.96,0.503,-1.393 0.952,0.582,1.734,2.857,2.679,2.188 -0.875,4.896,0.828,18.026,1.913,36.422 0,0,-1.154,0.984,-4.181,0.834 -2.47,-0.15,-2.989,-0.701,-2.989,-0.701l0,0zM0,38.744")!

        let startPoint = CGPoint(x: 0.5, y: 0.967)
        let endPoint = CGPoint(x: 0.582, y: 0.501)
        let colors = [UIColor(red: 0.325, green: 0.651, blue: 0.431, alpha: 1).cgColor, UIColor(red: 0.365, green: 0.702, blue: 0.471, alpha: 1).cgColor, UIColor(red: 0.467, green: 0.839, blue: 0.576, alpha: 1).cgColor, UIColor(red: 0.471, green: 0.843, blue: 0.58, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.31), NSNumber(value: 0.9), NSNumber(value: 0.92)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_20.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector21() {
        vector_21 = ShapeView(frame: CGRect(x: 47.15, y: 23.06, width: 7.69, height: 19.47))
        vector_21.backgroundColor = UIColor.clear
        vector_21.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_21.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_21.layer.borderColor = UIColor.clear.cgColor
        vector_21.layer.name = "vector_21"
        vector_21.layer.shadowColor = UIColor.clear.cgColor
        vector_21.layer.shadowOpacity = 1
        vector_21.layer.position = CGPoint(x: 47.15, y: 23.06)
        vector_21.layer.bounds = CGRect(x: 0, y: 0, width: 7.69, height: 19.47)
        vector_21.layer.masksToBounds = false
        vector_21.shapeLayer.name = "vector_21.shapeLayer"
        vector_21.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_21.shapeLayer.fillColor = nil
        vector_21.shapeLayer.miterLimit = 4
        vector_21.shapeLayer.lineDashPattern = []
        vector_21.shapeLayer.lineDashPhase = 0
        vector_21.shapeLayer.lineWidth = 1
        vector_21.shapeLayer.path = CGPathCreateWithSVGString("M7.69,19.094c0,0,-0.27,0.359,-2.521,0.359 -0.919,0.06,-1.842,-0.039,-2.727,-0.295 -0.206,-9.152,-1.007,-19.166,-2.442,-19.078 1.373,-0.17,2.766,-0.064,4.099,0.311 0,0,2.252,10.893,3.591,18.703l0,0zM7.69,19.094")!

        let startPoint = CGPoint(x: 0.497, y: 0.922)
        let endPoint = CGPoint(x: 0.502, y: 0.196)
        let colors = [UIColor(red: 0.325, green: 0.651, blue: 0.431, alpha: 1).cgColor, UIColor(red: 0.369, green: 0.71, blue: 0.475, alpha: 1).cgColor, UIColor(red: 0.471, green: 0.843, blue: 0.58, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.36), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_21.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector22() {
        vector_22 = ShapeView(frame: CGRect(x: 0, y: 21.52, width: 51.25, height: 45.61))
        vector_22.backgroundColor = UIColor.clear
        vector_22.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_22.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_22.layer.borderColor = UIColor.clear.cgColor
        vector_22.layer.name = "vector_22"
        vector_22.layer.shadowColor = UIColor.clear.cgColor
        vector_22.layer.shadowOpacity = 1
        vector_22.layer.position = CGPoint(x: 0, y: 21.52)
        vector_22.layer.bounds = CGRect(x: 0, y: 0, width: 51.25, height: 45.61)
        vector_22.layer.masksToBounds = false
        vector_22.shapeLayer.name = "vector_22.shapeLayer"
        vector_22.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_22.shapeLayer.fillColor = nil
        vector_22.shapeLayer.miterLimit = 4
        vector_22.shapeLayer.lineDashPattern = []
        vector_22.shapeLayer.lineDashPhase = 0
        vector_22.shapeLayer.lineWidth = 1
        vector_22.shapeLayer.path = CGPathCreateWithSVGString("M0,45.594c0,0,13.812,-1.414,19.845,-19.074 7.406,-21.65,25.084,-23.096,31.141,-24.124 3.699,-0.632,-32.49,-9.142,-42.405,10.272 -5.938,11.607,-4.167,27.908,-8.581,32.942l0,-0.016 0,0zM0,45.594")!

        let startPoint = CGPoint(x: -0.017, y: 0.984)
        let endPoint = CGPoint(x: 0.796, y: -0.137)
        let colors = [UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor, UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_22.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector23() {
        vector_23 = ShapeView(frame: CGRect(x: 56.89, y: 0, width: 63.55, height: 52.79))
        vector_23.backgroundColor = UIColor.clear
        vector_23.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_23.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_23.layer.borderColor = UIColor.clear.cgColor
        vector_23.layer.name = "vector_23"
        vector_23.layer.shadowColor = UIColor.clear.cgColor
        vector_23.layer.shadowOpacity = 1
        vector_23.layer.position = CGPoint(x: 56.89, y: 0)
        vector_23.layer.bounds = CGRect(x: 0, y: 0, width: 63.55, height: 52.79)
        vector_23.layer.masksToBounds = false
        vector_23.shapeLayer.name = "vector_23.shapeLayer"
        vector_23.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_23.shapeLayer.fillColor = nil
        vector_23.shapeLayer.miterLimit = 4
        vector_23.shapeLayer.lineDashPattern = []
        vector_23.shapeLayer.lineDashPhase = 0
        vector_23.shapeLayer.lineWidth = 1
        vector_23.shapeLayer.path = CGPathCreateWithSVGString("M63.487,52.758c0,0,-4.867,-23.198,-28.053,-28.199 -23.465,-5.056,-34.162,-13.237,-35.421,-20.519 -0.677,-3.896,24.094,-8.467,44.111,4.77 13.78,9.095,20.136,29.28,19.363,43.98l0,-0.032 0,0zM63.487,52.758")!

        let startPoint = CGPoint(x: 128.443, y: 114.493)
        let endPoint = CGPoint(x: 216.95, y: 135.82)
        let colors = [UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor, UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_23.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVectorstroke1() {
        vectorstroke_1 = ShapeView(frame: CGRect(x: 34.85, y: 71.75, width: 3.59, height: 5.64))
        vectorstroke_1.backgroundColor = UIColor.clear
        vectorstroke_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke_1.layer.borderColor = UIColor.clear.cgColor
        vectorstroke_1.layer.name = "vectorstroke_1"
        vectorstroke_1.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke_1.layer.shadowOpacity = 1
        vectorstroke_1.layer.position = CGPoint(x: 34.85, y: 71.75)
        vectorstroke_1.layer.bounds = CGRect(x: 0, y: 0, width: 3.59, height: 5.64)
        vectorstroke_1.layer.masksToBounds = false
        vectorstroke_1.shapeLayer.name = "vectorstroke_1.shapeLayer"
        vectorstroke_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke_1.shapeLayer.fillColor = UIColor.white.cgColor
        vectorstroke_1.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vectorstroke_1.shapeLayer.lineDashPattern = []
        vectorstroke_1.shapeLayer.lineDashPhase = 0
        vectorstroke_1.shapeLayer.lineWidth = 2
        vectorstroke_1.shapeLayer.path = CGPathCreateWithSVGString("M0.187,0.366c0.301,-0.412,0.861,-0.487,1.251,-0.168 0.649,0.531,1.178,1.208,1.55,1.981 0.372,0.773,0.578,1.624,0.602,2.491 0.015,0.521,-0.373,0.955,-0.865,0.97 -0.492,0.015,-0.903,-0.394,-0.917,-0.915 -0.016,-0.589,-0.156,-1.166,-0.409,-1.691 -0.253,-0.525,-0.612,-0.984,-1.053,-1.345 -0.389,-0.319,-0.461,-0.911,-0.159,-1.323l0,0zM0.187,0.366")!


    }

    private func createVector24() {
        vector_24 = ShapeView(frame: CGRect(x: 0, y: 23.57, width: 51.25, height: 44.07))
        vector_24.backgroundColor = UIColor.clear
        vector_24.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_24.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_24.layer.borderColor = UIColor.clear.cgColor
        vector_24.layer.name = "vector_24"
        vector_24.layer.shadowColor = UIColor.clear.cgColor
        vector_24.layer.shadowOpacity = 1
        vector_24.layer.position = CGPoint(x: 0, y: 23.57)
        vector_24.layer.bounds = CGRect(x: 0, y: 0, width: 51.25, height: 44.07)
        vector_24.layer.masksToBounds = false
        vector_24.shapeLayer.name = "vector_24.shapeLayer"
        vector_24.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_24.shapeLayer.fillColor = nil
        vector_24.shapeLayer.miterLimit = 4
        vector_24.shapeLayer.lineDashPattern = []
        vector_24.shapeLayer.lineDashPhase = 0
        vector_24.shapeLayer.lineWidth = 1
        vector_24.shapeLayer.path = CGPathCreateWithSVGString("M0,43.79c0,0,25.133,3.17,33.91,-11.832 8.111,-13.854,5.214,-22.548,17.34,-31.598 0,-0.697,-24.736,-2.298,-32.315,17.008 -5.555,14.107,-6.96,20.162,-18.935,26.423l0,0zM0,43.79")!

        let startPoint = CGPoint(x: 0.12, y: 1.107)
        let endPoint = CGPoint(x: 0.933, y: -0.056)
        let colors = [UIColor(red: 0.957, green: 0.792, blue: 0.216, alpha: 0.2).cgColor, UIColor(red: 0.957, green: 0.792, blue: 0.216, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_24.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector25() {
        vector_25 = ShapeView(frame: CGRect(x: 56.89, y: 3.59, width: 63.55, height: 49.2))
        vector_25.backgroundColor = UIColor.clear
        vector_25.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_25.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_25.layer.borderColor = UIColor.clear.cgColor
        vector_25.layer.name = "vector_25"
        vector_25.layer.shadowColor = UIColor.clear.cgColor
        vector_25.layer.shadowOpacity = 1
        vector_25.layer.position = CGPoint(x: 56.89, y: 3.59)
        vector_25.layer.bounds = CGRect(x: 0, y: 0, width: 63.55, height: 49.2)
        vector_25.layer.masksToBounds = false
        vector_25.shapeLayer.name = "vector_25.shapeLayer"
        vector_25.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_25.shapeLayer.fillColor = nil
        vector_25.shapeLayer.miterLimit = 4
        vector_25.shapeLayer.lineDashPattern = []
        vector_25.shapeLayer.lineDashPhase = 0
        vector_25.shapeLayer.lineWidth = 1
        vector_25.shapeLayer.path = CGPathCreateWithSVGString("M0,1.447c0,0,1.284,27.785,27.351,34.698 24.371,6.461,33.715,4.233,36.188,13.048 0.151,0.531,-0.793,-29.394,-26.614,-37.765 -16.976,-5.549,-30.616,-2.228,-36.457,-11.423 0,0,0,-0.079,-0.19,0.436 -0.122,0.327,-0.215,0.664,-0.277,1.007l0,0zM0,1.447")!

        let startPoint = CGPoint(x: 0.973, y: 0.46)
        let endPoint = CGPoint(x: 0.026, y: 0.541)
        let colors = [UIColor(red: 1, green: 0.792, blue: 0, alpha: 0.6).cgColor, UIColor(red: 1, green: 0.792, blue: 0, alpha: 0.2).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_25.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVectorstroke2() {
        vectorstroke_2 = ShapeView(frame: CGRect(x: 48.69, y: 79.95, width: 14.35, height: 15.89))
        vectorstroke_2.backgroundColor = UIColor.clear
        vectorstroke_2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke_2.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke_2.layer.borderColor = UIColor.clear.cgColor
        vectorstroke_2.layer.name = "vectorstroke_2"
        vectorstroke_2.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke_2.layer.shadowOpacity = 1
        vectorstroke_2.layer.position = CGPoint(x: 48.69, y: 79.95)
        vectorstroke_2.layer.bounds = CGRect(x: 0, y: 0, width: 14.35, height: 15.89)
        vectorstroke_2.layer.masksToBounds = false
        vectorstroke_2.shapeLayer.name = "vectorstroke_2.shapeLayer"
        vectorstroke_2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke_2.shapeLayer.fillColor = nil
        vectorstroke_2.shapeLayer.lineDashPattern = []
        vectorstroke_2.shapeLayer.lineDashPhase = 0
        vectorstroke_2.shapeLayer.lineWidth = 4
        vectorstroke_2.shapeLayer.path = CGPathCreateWithSVGString("M7.175,3.803c-1.642,0,-3.384,1.611,-3.384,4.142 0,2.531,1.742,4.142,3.384,4.142 1.642,0,3.384,-1.611,3.384,-4.142 0,-2.531,-1.742,-4.142,-3.384,-4.142l0,0zM0,7.945c0,-4.144,2.985,-7.945,7.175,-7.945 4.19,0,7.175,3.8,7.175,7.945 0,4.145,-2.985,7.945,-7.175,7.945 -4.19,0,-7.175,-3.8,-7.175,-7.945l0,0zM0,7.945")!

        let startPoint = CGPoint(x: 107.861, y: 122.97)
        let endPoint = CGPoint(x: 114.724, y: 129.607)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vectorstroke_2.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVectorstroke3() {
        vectorstroke_3 = ShapeView(frame: CGRect(x: 53.81, y: 80.97, width: 6.66, height: 2.56))
        vectorstroke_3.backgroundColor = UIColor.clear
        vectorstroke_3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke_3.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke_3.layer.borderColor = UIColor.clear.cgColor
        vectorstroke_3.layer.name = "vectorstroke_3"
        vectorstroke_3.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke_3.layer.shadowOpacity = 1
        vectorstroke_3.layer.position = CGPoint(x: 53.81, y: 80.97)
        vectorstroke_3.layer.bounds = CGRect(x: 0, y: 0, width: 6.66, height: 2.56)
        vectorstroke_3.layer.masksToBounds = false
        vectorstroke_3.shapeLayer.name = "vectorstroke_3.shapeLayer"
        vectorstroke_3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke_3.shapeLayer.fillColor = UIColor.white.cgColor
        vectorstroke_3.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vectorstroke_3.shapeLayer.lineDashPattern = []
        vectorstroke_3.shapeLayer.lineDashPhase = 0
        vectorstroke_3.shapeLayer.lineWidth = 1
        vectorstroke_3.shapeLayer.path = CGPathCreateWithSVGString("M2.184,0l0,0c1.617,0.012,3.167,0.632,4.326,1.731 0.196,0.186,0.201,0.491,0.01,0.683 -0.19,0.191,-0.503,0.196,-0.699,0.01 -0.976,-0.925,-2.281,-1.447,-3.642,-1.458 -0.521,0.002,-1.039,0.081,-1.537,0.233 -0.261,0.08,-0.538,-0.062,-0.62,-0.317 -0.082,-0.255,0.064,-0.525,0.324,-0.605 0.593,-0.181,1.21,-0.274,1.831,-0.277l0.006,-0 0,0zM2.184,0")!


    }

    private func createGroup488() {
        group488 = UIView(frame: CGRect(x: 0, y: 0, width: 243, height: 491.7))
        group488.backgroundColor = UIColor.clear
        group488.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group488.layer.shadowOffset = CGSize(width: 0, height: 0)
        group488.layer.borderWidth = 1
        group488.layer.borderColor = UIColor.clear.cgColor
        group488.layer.name = "group488"
        group488.layer.shadowColor = UIColor.clear.cgColor
        group488.layer.shadowOpacity = 1
        group488.layer.position = CGPoint(x: 0, y: 0)
        group488.layer.bounds = CGRect(x: 0, y: 0, width: 243, height: 491.7)
        group488.layer.masksToBounds = false

    }

    private func createIphone12black() {
        iphone12black = UIView(frame: CGRect(x: 0, y: 0, width: 243, height: 491.7))
        iphone12black.backgroundColor = UIColor.clear
        iphone12black.layer.anchorPoint = CGPoint(x: 0, y: 0)
        iphone12black.layer.shadowOffset = CGSize(width: 0, height: 0)
        iphone12black.layer.borderWidth = 1
        iphone12black.layer.borderColor = UIColor.clear.cgColor
        iphone12black.layer.name = "iphone12black"
        iphone12black.layer.shadowColor = UIColor.clear.cgColor
        iphone12black.layer.shadowOpacity = 1
        iphone12black.layer.position = CGPoint(x: 0, y: 0)
        iphone12black.layer.bounds = CGRect(x: 0, y: 0, width: 243, height: 491.7)
        iphone12black.layer.masksToBounds = false

    }

    private func createBlack() {
        black = ShapeView(frame: CGRect(x: 0, y: 0, width: 243, height: 491.7))
        black.backgroundColor = UIColor.clear
        black.layer.anchorPoint = CGPoint(x: 0, y: 0)
        black.layer.shadowOffset = CGSize(width: 0, height: 0)
        black.layer.borderColor = UIColor.clear.cgColor
        black.layer.name = "black"
        black.layer.shadowColor = UIColor.clear.cgColor
        black.layer.shadowOpacity = 1
        black.layer.position = CGPoint(x: 0, y: 0)
        black.layer.bounds = CGRect(x: 0, y: 0, width: 243, height: 491.7)
        black.layer.masksToBounds = false
        black.shapeLayer.name = "black.shapeLayer"
        black.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        black.shapeLayer.fillColor = UIColor(red: 0.078, green: 0.078, blue: 0.078, alpha: 1).cgColor
        black.shapeLayer.miterLimit = 4
        black.shapeLayer.lineDashPattern = []
        black.shapeLayer.lineDashPhase = 0
        black.shapeLayer.lineWidth = 1
        black.shapeLayer.path = CGPathCreateWithSVGString("M1.676,55.773c0,-19.522,0,-29.284,3.799,-36.74 3.342,-6.559,8.674,-11.892,15.234,-15.234 7.457,-3.799,17.218,-3.799,36.74,-3.799l128.103,0c19.522,0,29.283,0,36.74,3.799 6.559,3.342,11.891,8.675,15.233,15.234 3.799,7.457,3.799,17.218,3.799,36.74l0,70.588 1.006,0c0.37,0,0.67,0.3,0.67,0.67l0,56.979c0,0.37,-0.3,0.67,-0.67,0.67l-1.006,0 0,251.247c0,19.522,0,29.283,-3.799,36.74 -3.342,6.559,-8.674,11.891,-15.233,15.233 -7.457,3.799,-17.218,3.799,-36.74,3.799l-128.103,0c-19.522,0,-29.283,0,-36.74,-3.799 -6.559,-3.342,-11.892,-8.674,-15.234,-15.233 -3.799,-7.457,-3.799,-17.218,-3.799,-36.74l0,-239.516 -1.006,0c-0.37,0,-0.67,-0.3,-0.67,-0.67l0,-36.198c0,-0.371,0.3,-0.671,0.67,-0.671l1.006,0 0,-8.379 -1.006,0c-0.37,0,-0.67,-0.3,-0.67,-0.67l0,-36.199c0,-0.37,0.3,-0.67,0.67,-0.67l1.006,0 0,-15.753 -1.006,0c-0.37,0,-0.67,-0.3,-0.67,-0.67l0,-18.099c0,-0.37,0.3,-0.67,0.67,-0.67l1.006,0 0,-21.987 0,0zM1.676,55.773")!


    }

    private func createWhite() {
        white = ShapeView(frame: CGRect(x: 0, y: 0, width: 243, height: 491.7))
        white.backgroundColor = UIColor.clear
        white.layer.anchorPoint = CGPoint(x: 0, y: 0)
        white.alpha = 0
        white.layer.shadowOffset = CGSize(width: 0, height: 0)
        white.layer.borderColor = UIColor.clear.cgColor
        white.layer.name = "white"
        white.layer.shadowColor = UIColor.clear.cgColor
        white.layer.shadowOpacity = 1
        white.layer.position = CGPoint(x: 0, y: 0)
        white.layer.bounds = CGRect(x: 0, y: 0, width: 243, height: 491.7)
        white.layer.masksToBounds = false
        white.shapeLayer.name = "white.shapeLayer"
        white.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        white.shapeLayer.fillColor = UIColor(red: 0.929, green: 0.91, blue: 0.906, alpha: 1).cgColor
        white.shapeLayer.miterLimit = 4
        white.shapeLayer.lineDashPattern = []
        white.shapeLayer.lineDashPhase = 0
        white.shapeLayer.lineWidth = 1
        white.shapeLayer.path = CGPathCreateWithSVGString("M1.676,55.773c0,-19.522,0,-29.284,3.799,-36.74 3.342,-6.559,8.674,-11.892,15.234,-15.234 7.457,-3.799,17.218,-3.799,36.74,-3.799l128.103,0c19.522,0,29.283,0,36.74,3.799 6.559,3.342,11.891,8.675,15.233,15.234 3.799,7.457,3.799,17.218,3.799,36.74l0,70.588 1.006,0c0.37,0,0.67,0.3,0.67,0.67l0,56.979c0,0.37,-0.3,0.67,-0.67,0.67l-1.006,0 0,251.247c0,19.522,0,29.283,-3.799,36.74 -3.342,6.559,-8.674,11.891,-15.233,15.233 -7.457,3.799,-17.218,3.799,-36.74,3.799l-128.103,0c-19.522,0,-29.283,0,-36.74,-3.799 -6.559,-3.342,-11.892,-8.674,-15.234,-15.233 -3.799,-7.457,-3.799,-17.218,-3.799,-36.74l0,-239.516 -1.006,0c-0.37,0,-0.67,-0.3,-0.67,-0.67l0,-36.198c0,-0.371,0.3,-0.671,0.67,-0.671l1.006,0 0,-8.379 -1.006,0c-0.37,0,-0.67,-0.3,-0.67,-0.67l0,-36.199c0,-0.37,0.3,-0.67,0.67,-0.67l1.006,0 0,-15.753 -1.006,0c-0.37,0,-0.67,-0.3,-0.67,-0.67l0,-18.099c0,-0.37,0.3,-0.67,0.67,-0.67l1.006,0 0,-21.987 0,0zM1.676,55.773")!


    }

    private func createProductRed() {
        productRed = ShapeView(frame: CGRect(x: 0, y: 0, width: 243, height: 491.7))
        productRed.backgroundColor = UIColor.clear
        productRed.layer.anchorPoint = CGPoint(x: 0, y: 0)
        productRed.alpha = 0
        productRed.layer.shadowOffset = CGSize(width: 0, height: 0)
        productRed.layer.borderColor = UIColor.clear.cgColor
        productRed.layer.name = "productRed"
        productRed.layer.shadowColor = UIColor.clear.cgColor
        productRed.layer.shadowOpacity = 1
        productRed.layer.position = CGPoint(x: 0, y: 0)
        productRed.layer.bounds = CGRect(x: 0, y: 0, width: 243, height: 491.7)
        productRed.layer.masksToBounds = false
        productRed.shapeLayer.name = "productRed.shapeLayer"
        productRed.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        productRed.shapeLayer.fillColor = UIColor(red: 0.808, green: 0.067, blue: 0.072, alpha: 1).cgColor
        productRed.shapeLayer.miterLimit = 4
        productRed.shapeLayer.lineDashPattern = []
        productRed.shapeLayer.lineDashPhase = 0
        productRed.shapeLayer.lineWidth = 1
        productRed.shapeLayer.path = CGPathCreateWithSVGString("M1.676,55.773c0,-19.522,0,-29.284,3.799,-36.74 3.342,-6.559,8.674,-11.892,15.234,-15.234 7.457,-3.799,17.218,-3.799,36.74,-3.799l128.103,0c19.522,0,29.283,0,36.74,3.799 6.559,3.342,11.891,8.675,15.233,15.234 3.799,7.457,3.799,17.218,3.799,36.74l0,70.588 1.006,0c0.37,0,0.67,0.3,0.67,0.67l0,56.979c0,0.37,-0.3,0.67,-0.67,0.67l-1.006,0 0,251.247c0,19.522,0,29.283,-3.799,36.74 -3.342,6.559,-8.674,11.891,-15.233,15.233 -7.457,3.799,-17.218,3.799,-36.74,3.799l-128.103,0c-19.522,0,-29.283,0,-36.74,-3.799 -6.559,-3.342,-11.892,-8.674,-15.234,-15.233 -3.799,-7.457,-3.799,-17.218,-3.799,-36.74l0,-239.516 -1.006,0c-0.37,0,-0.67,-0.3,-0.67,-0.67l0,-36.198c0,-0.371,0.3,-0.671,0.67,-0.671l1.006,0 0,-8.379 -1.006,0c-0.37,0,-0.67,-0.3,-0.67,-0.67l0,-36.199c0,-0.37,0.3,-0.67,0.67,-0.67l1.006,0 0,-15.753 -1.006,0c-0.37,0,-0.67,-0.3,-0.67,-0.67l0,-18.099c0,-0.37,0.3,-0.67,0.67,-0.67l1.006,0 0,-21.987 0,0zM1.676,55.773")!


    }

    private func createGreen() {
        green = ShapeView(frame: CGRect(x: 0, y: 0, width: 243, height: 491.7))
        green.backgroundColor = UIColor.clear
        green.layer.anchorPoint = CGPoint(x: 0, y: 0)
        green.alpha = 0
        green.layer.shadowOffset = CGSize(width: 0, height: 0)
        green.layer.borderColor = UIColor.clear.cgColor
        green.layer.name = "green"
        green.layer.shadowColor = UIColor.clear.cgColor
        green.layer.shadowOpacity = 1
        green.layer.position = CGPoint(x: 0, y: 0)
        green.layer.bounds = CGRect(x: 0, y: 0, width: 243, height: 491.7)
        green.layer.masksToBounds = false
        green.shapeLayer.name = "green.shapeLayer"
        green.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        green.shapeLayer.fillColor = UIColor(red: 0.667, green: 0.816, blue: 0.631, alpha: 1).cgColor
        green.shapeLayer.miterLimit = 4
        green.shapeLayer.lineDashPattern = []
        green.shapeLayer.lineDashPhase = 0
        green.shapeLayer.lineWidth = 1
        green.shapeLayer.path = CGPathCreateWithSVGString("M1.676,55.773c0,-19.522,0,-29.284,3.799,-36.74 3.342,-6.559,8.674,-11.892,15.234,-15.234 7.457,-3.799,17.218,-3.799,36.74,-3.799l128.103,0c19.522,0,29.283,0,36.74,3.799 6.559,3.342,11.891,8.675,15.233,15.234 3.799,7.457,3.799,17.218,3.799,36.74l0,70.588 1.006,0c0.37,0,0.67,0.3,0.67,0.67l0,56.979c0,0.37,-0.3,0.67,-0.67,0.67l-1.006,0 0,251.247c0,19.522,0,29.283,-3.799,36.74 -3.342,6.559,-8.674,11.891,-15.233,15.233 -7.457,3.799,-17.218,3.799,-36.74,3.799l-128.103,0c-19.522,0,-29.283,0,-36.74,-3.799 -6.559,-3.342,-11.892,-8.674,-15.234,-15.233 -3.799,-7.457,-3.799,-17.218,-3.799,-36.74l0,-239.516 -1.006,0c-0.37,0,-0.67,-0.3,-0.67,-0.67l0,-36.198c0,-0.371,0.3,-0.671,0.67,-0.671l1.006,0 0,-8.379 -1.006,0c-0.37,0,-0.67,-0.3,-0.67,-0.67l0,-36.199c0,-0.37,0.3,-0.67,0.67,-0.67l1.006,0 0,-15.753 -1.006,0c-0.37,0,-0.67,-0.3,-0.67,-0.67l0,-18.099c0,-0.37,0.3,-0.67,0.67,-0.67l1.006,0 0,-21.987 0,0zM1.676,55.773")!


    }

    private func createBlue() {
        blue = ShapeView(frame: CGRect(x: 0, y: 0, width: 243, height: 491.7))
        blue.backgroundColor = UIColor.clear
        blue.layer.anchorPoint = CGPoint(x: 0, y: 0)
        blue.alpha = 0
        blue.layer.shadowOffset = CGSize(width: 0, height: 0)
        blue.layer.borderColor = UIColor.clear.cgColor
        blue.layer.name = "blue"
        blue.layer.shadowColor = UIColor.clear.cgColor
        blue.layer.shadowOpacity = 1
        blue.layer.position = CGPoint(x: 0, y: 0)
        blue.layer.bounds = CGRect(x: 0, y: 0, width: 243, height: 491.7)
        blue.layer.masksToBounds = false
        blue.shapeLayer.name = "blue.shapeLayer"
        blue.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        blue.shapeLayer.fillColor = UIColor(red: 0.079, green: 0.271, blue: 0.442, alpha: 1).cgColor
        blue.shapeLayer.miterLimit = 4
        blue.shapeLayer.lineDashPattern = []
        blue.shapeLayer.lineDashPhase = 0
        blue.shapeLayer.lineWidth = 1
        blue.shapeLayer.path = CGPathCreateWithSVGString("M1.676,55.773c0,-19.522,0,-29.284,3.799,-36.74 3.342,-6.559,8.674,-11.892,15.234,-15.234 7.457,-3.799,17.218,-3.799,36.74,-3.799l128.103,0c19.522,0,29.283,0,36.74,3.799 6.559,3.342,11.891,8.675,15.233,15.234 3.799,7.457,3.799,17.218,3.799,36.74l0,70.588 1.006,0c0.37,0,0.67,0.3,0.67,0.67l0,56.979c0,0.37,-0.3,0.67,-0.67,0.67l-1.006,0 0,251.247c0,19.522,0,29.283,-3.799,36.74 -3.342,6.559,-8.674,11.891,-15.233,15.233 -7.457,3.799,-17.218,3.799,-36.74,3.799l-128.103,0c-19.522,0,-29.283,0,-36.74,-3.799 -6.559,-3.342,-11.892,-8.674,-15.234,-15.233 -3.799,-7.457,-3.799,-17.218,-3.799,-36.74l0,-239.516 -1.006,0c-0.37,0,-0.67,-0.3,-0.67,-0.67l0,-36.198c0,-0.371,0.3,-0.671,0.67,-0.671l1.006,0 0,-8.379 -1.006,0c-0.37,0,-0.67,-0.3,-0.67,-0.67l0,-36.199c0,-0.37,0.3,-0.67,0.67,-0.67l1.006,0 0,-15.753 -1.006,0c-0.37,0,-0.67,-0.3,-0.67,-0.67l0,-18.099c0,-0.37,0.3,-0.67,0.67,-0.67l1.006,0 0,-21.987 0,0zM1.676,55.773")!


    }

    private func createShadows() {
        shadows = UIView(frame: CGRect(x: 0, y: 0, width: 243, height: 491.7))
        shadows.backgroundColor = UIColor.clear
        shadows.layer.anchorPoint = CGPoint(x: 0, y: 0)
        shadows.layer.shadowOffset = CGSize(width: 0, height: 0)
        shadows.layer.borderWidth = 1
        shadows.layer.borderColor = UIColor.clear.cgColor
        shadows.layer.name = "shadows"
        shadows.layer.shadowColor = UIColor.clear.cgColor
        shadows.layer.shadowOpacity = 1
        shadows.layer.position = CGPoint(x: 0, y: 0)
        shadows.layer.bounds = CGRect(x: 0, y: 0, width: 243, height: 491.7)
        shadows.layer.masksToBounds = false

    }

    private func createHighlights() {
        highlights = UIView(frame: CGRect(x: 0, y: 0, width: 243, height: 491.7))
        highlights.backgroundColor = UIColor.clear
        highlights.layer.anchorPoint = CGPoint(x: 0, y: 0)
        highlights.layer.shadowOffset = CGSize(width: 0, height: 0)
        highlights.layer.borderWidth = 1
        highlights.layer.borderColor = UIColor.clear.cgColor
        highlights.layer.name = "highlights"
        highlights.layer.shadowColor = UIColor.clear.cgColor
        highlights.layer.shadowOpacity = 1
        highlights.layer.position = CGPoint(x: 0, y: 0)
        highlights.layer.bounds = CGRect(x: 0, y: 0, width: 243, height: 491.7)
        highlights.layer.masksToBounds = false

    }

    private func createGroup11() {
        group11 = UIView(frame: CGRect(x: 13.41, y: 12.07, width: 216.19, height: 467.56))
        group11.backgroundColor = UIColor.clear
        group11.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group11.layer.shadowOffset = CGSize(width: 0, height: 0)
        group11.layer.borderWidth = 1
        group11.layer.borderColor = UIColor.clear.cgColor
        group11.layer.name = "group11"
        group11.layer.shadowColor = UIColor.clear.cgColor
        group11.layer.shadowOpacity = 1
        group11.layer.position = CGPoint(x: 13.41, y: 12.07)
        group11.layer.bounds = CGRect(x: 0, y: 0, width: 216.19, height: 467.56)
        group11.layer.masksToBounds = false

    }

    private func createGroup9() {
        group9 = UIView(frame: CGRect(x: 108.6, y: 13.74, width: 40.89, height: 9.38))
        group9.backgroundColor = UIColor.clear
        group9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group9.layer.shadowOffset = CGSize(width: 0, height: 0)
        group9.layer.borderWidth = 1
        group9.layer.borderColor = UIColor.clear.cgColor
        group9.layer.name = "group9"
        group9.layer.shadowColor = UIColor.clear.cgColor
        group9.layer.shadowOpacity = 1
        group9.layer.position = CGPoint(x: 108.6, y: 13.74)
        group9.layer.bounds = CGRect(x: 0, y: 0, width: 40.89, height: 9.38)
        group9.layer.masksToBounds = false

    }

    private func createRectangle17() {
        rectangle17 = ShapeView(frame: CGRect(x: 0, y: 2.35, width: 26.14, height: 4.69))
        rectangle17.backgroundColor = UIColor.clear
        rectangle17.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle17.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle17.layer.borderColor = UIColor.clear.cgColor
        rectangle17.layer.name = "rectangle17"
        rectangle17.layer.shadowColor = UIColor.clear.cgColor
        rectangle17.layer.shadowOpacity = 1
        rectangle17.layer.position = CGPoint(x: 0, y: 2.35)
        rectangle17.layer.bounds = CGRect(x: 0, y: 0, width: 26.14, height: 4.69)
        rectangle17.layer.masksToBounds = false
        rectangle17.shapeLayer.name = "rectangle17.shapeLayer"
        rectangle17.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle17.shapeLayer.fillColor = UIColor(red: 0.086, green: 0.086, blue: 0.086, alpha: 1).cgColor
        rectangle17.shapeLayer.miterLimit = 4
        rectangle17.shapeLayer.lineDashPattern = []
        rectangle17.shapeLayer.lineDashPhase = 0
        rectangle17.shapeLayer.lineWidth = 1
        rectangle17.shapeLayer.path = CGPathCreateWithSVGString("M0,2.345c0,-1.295,1.05,-2.345,2.346,-2.345l21.448,0c1.296,0,2.346,1.05,2.346,2.345 0,1.295,-1.05,2.345,-2.346,2.345l-21.448,0c-1.296,0,-2.346,-1.05,-2.346,-2.345l0,0zM0,2.345")!


    }

    private func createRectangle21() {
        rectangle21 = ShapeView(frame: CGRect(x: 0, y: 2.35, width: 26.14, height: 4.69))
        rectangle21.backgroundColor = UIColor.clear
        rectangle21.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle21.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle21.layer.borderColor = UIColor.clear.cgColor
        rectangle21.layer.name = "rectangle21"
        rectangle21.layer.shadowColor = UIColor.clear.cgColor
        rectangle21.layer.shadowOpacity = 1
        rectangle21.layer.position = CGPoint(x: 0, y: 2.35)
        rectangle21.layer.bounds = CGRect(x: 0, y: 0, width: 26.14, height: 4.69)
        rectangle21.layer.masksToBounds = false
        rectangle21.shapeLayer.name = "rectangle21.shapeLayer"
        rectangle21.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle21.shapeLayer.strokeColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.32).cgColor
        rectangle21.shapeLayer.fillColor = nil
        rectangle21.shapeLayer.miterLimit = 4
        rectangle21.shapeLayer.lineDashPattern = []
        rectangle21.shapeLayer.lineDashPhase = 0
        rectangle21.shapeLayer.lineWidth = 2
        rectangle21.shapeLayer.path = CGPathCreateWithSVGString("M0,2.345c0,-1.295,1.05,-2.345,2.346,-2.345l21.448,0c1.296,0,2.346,1.05,2.346,2.345 0,1.295,-1.05,2.345,-2.346,2.345l-21.448,0c-1.296,0,-2.346,-1.05,-2.346,-2.345l0,0zM0,2.345")!


    }

    private func createRectangle22() {
        rectangle22 = ShapeView(frame: CGRect(x: 0, y: 2.35, width: 26.14, height: 4.69))
        rectangle22.backgroundColor = UIColor.clear
        rectangle22.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle22.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle22.layer.borderColor = UIColor.clear.cgColor
        rectangle22.layer.name = "rectangle22"
        rectangle22.layer.shadowColor = UIColor.clear.cgColor
        rectangle22.layer.shadowOpacity = 1
        rectangle22.layer.position = CGPoint(x: 0, y: 2.35)
        rectangle22.layer.bounds = CGRect(x: 0, y: 0, width: 26.14, height: 4.69)
        rectangle22.layer.masksToBounds = false
        rectangle22.shapeLayer.name = "rectangle22.shapeLayer"
        rectangle22.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle22.shapeLayer.fillColor = nil
        rectangle22.shapeLayer.miterLimit = 4
        rectangle22.shapeLayer.lineDashPattern = []
        rectangle22.shapeLayer.lineDashPhase = 0
        rectangle22.shapeLayer.lineWidth = 1
        rectangle22.shapeLayer.path = CGPathCreateWithSVGString("M0,2.345c0,-1.295,1.05,-2.345,2.346,-2.345l21.448,0c1.296,0,2.346,1.05,2.346,2.345 0,1.295,-1.05,2.345,-2.346,2.345l-21.448,0c-1.296,0,-2.346,-1.05,-2.346,-2.345l0,0zM0,2.345")!


    }

    private func createRectangle18() {
        rectangle18 = ShapeView(frame: CGRect(x: 31.51, y: 0, width: 9.38, height: 9.38))
        rectangle18.backgroundColor = UIColor.clear
        rectangle18.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle18.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle18.layer.borderColor = UIColor.clear.cgColor
        rectangle18.layer.name = "rectangle18"
        rectangle18.layer.shadowColor = UIColor.clear.cgColor
        rectangle18.layer.shadowOpacity = 1
        rectangle18.layer.position = CGPoint(x: 31.51, y: 0)
        rectangle18.layer.bounds = CGRect(x: 0, y: 0, width: 9.38, height: 9.38)
        rectangle18.layer.masksToBounds = false
        rectangle18.shapeLayer.name = "rectangle18.shapeLayer"
        rectangle18.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle18.shapeLayer.fillColor = nil
        rectangle18.shapeLayer.miterLimit = 4
        rectangle18.shapeLayer.lineDashPattern = []
        rectangle18.shapeLayer.lineDashPhase = 0
        rectangle18.shapeLayer.lineWidth = 1
        rectangle18.shapeLayer.path = CGPathCreateWithSVGString("M0,4.69c0,-2.59,2.1,-4.69,4.69,-4.69 2.59,0,4.69,2.1,4.69,4.69 0,2.59,-2.1,4.69,-4.69,4.69 -2.59,0,-4.69,-2.1,-4.69,-4.69l0,0zM0,4.69")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1, y: 1)
        let colors = [UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor, UIColor.clear.cgColor]
        let locations = [NSNumber(value: 0.464), NSNumber(value: 0.646)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        rectangle18.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle19() {
        rectangle19 = ShapeView(frame: CGRect(x: 33.85, y: 2.35, width: 4.69, height: 4.69))
        rectangle19.backgroundColor = UIColor.clear
        rectangle19.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle19.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle19.layer.borderColor = UIColor.clear.cgColor
        rectangle19.layer.name = "rectangle19"
        rectangle19.layer.shadowColor = UIColor.clear.cgColor
        rectangle19.layer.shadowOpacity = 1
        rectangle19.layer.position = CGPoint(x: 33.85, y: 2.35)
        rectangle19.layer.bounds = CGRect(x: 0, y: 0, width: 4.69, height: 4.69)
        rectangle19.layer.masksToBounds = false
        rectangle19.shapeLayer.name = "rectangle19.shapeLayer"
        rectangle19.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle19.shapeLayer.fillColor = nil
        rectangle19.shapeLayer.miterLimit = 4
        rectangle19.shapeLayer.lineDashPattern = []
        rectangle19.shapeLayer.lineDashPhase = 0
        rectangle19.shapeLayer.lineWidth = 1
        rectangle19.shapeLayer.path = CGPathCreateWithSVGString("M4.69,2.345c0,-1.295,-1.05,-2.345,-2.345,-2.345 -1.295,0,-2.345,1.05,-2.345,2.345 0,1.295,1.05,2.345,2.345,2.345 1.295,0,2.345,-1.05,2.345,-2.345l0,0zM4.69,2.345")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1, y: 1)
        let colors = [UIColor.clear.cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0.85).cgColor]
        let locations = [NSNumber(value: 0.828), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        rectangle19.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createSubtract() {
        subtract = ShapeView(frame: CGRect(x: 0, y: 0, width: 216.19, height: 467.56))
        subtract.backgroundColor = UIColor.clear
        subtract.layer.anchorPoint = CGPoint(x: 0, y: 0)
        subtract.layer.shadowOffset = CGSize(width: 0, height: 0)
        subtract.layer.borderColor = UIColor.clear.cgColor
        subtract.layer.name = "subtract"
        subtract.layer.shadowColor = UIColor.clear.cgColor
        subtract.layer.shadowOpacity = 1
        subtract.layer.position = CGPoint(x: 0, y: 0)
        subtract.layer.bounds = CGRect(x: 0, y: 0, width: 216.19, height: 467.56)
        subtract.layer.masksToBounds = false
        let subtractMask = CAShapeLayer()
        subtractMask.name = "subtractMask"
        subtractMask.path = CGPathCreateWithSVGString("M2.484,12.444c-2.484,4.875,-2.484,11.258,-2.484,24.022l0,394.627c0,12.765,0,19.147,2.484,24.023 2.185,4.288,5.672,7.775,9.961,9.96 4.875,2.484,11.258,2.484,24.023,2.484l143.255,0c12.764,0,19.147,0,24.022,-2.484 4.289,-2.185,7.775,-5.672,9.96,-9.96 2.485,-4.876,2.485,-11.258,2.485,-24.023l0,-394.627c0,-12.764,0,-19.147,-2.485,-24.022 -2.185,-4.289,-5.671,-7.775,-9.96,-9.96 -4.875,-2.484,-11.258,-2.484,-24.022,-2.484l-11.202,0c-0.555,0,-0.833,0,-1.055,0.081 -0.372,0.136,-0.665,0.429,-0.801,0.801 -0.081,0.222,-0.081,0.5,-0.081,1.054 0,4.439,0,6.658,-0.647,8.435 -1.084,2.979,-3.431,5.326,-6.41,6.41 -1.777,0.647,-3.996,0.647,-8.435,0.647l-85.992,0c-4.439,0,-6.658,0,-8.435,-0.647 -2.979,-1.084,-5.326,-3.431,-6.41,-6.41 -0.647,-1.777,-0.647,-3.997,-0.647,-8.435 0,-0.555,0,-0.832,-0.081,-1.054 -0.136,-0.372,-0.429,-0.666,-0.801,-0.801 -0.222,-0.081,-0.5,-0.081,-1.054,-0.081l-11.202,0c-12.765,0,-19.147,0,-24.023,2.484 -4.289,2.185,-7.775,5.672,-9.961,9.96l0,0zM2.484,12.444")!
        subtract.layer.mask = subtractMask

    }

    private func createCardplantexplore() {
        cardplantexplore = ShapeView(frame: CGRect(x: -0.16, y: 0.16, width: 216.65, height: 1109.03))
        cardplantexplore.backgroundColor = UIColor.clear
        cardplantexplore.layer.anchorPoint = CGPoint(x: 0, y: 0)
        cardplantexplore.layer.shadowOffset = CGSize(width: 0, height: 0)
        cardplantexplore.layer.borderColor = UIColor.clear.cgColor
        cardplantexplore.layer.name = "cardplantexplore"
        cardplantexplore.layer.shadowColor = UIColor.clear.cgColor
        cardplantexplore.layer.shadowOpacity = 1
        cardplantexplore.layer.position = CGPoint(x: -0.16, y: 0.16)
        cardplantexplore.layer.bounds = CGRect(x: 0, y: 0, width: 216.65, height: 1109.03)
        cardplantexplore.layer.masksToBounds = false
        cardplantexplore.shapeLayer.name = "cardplantexplore.shapeLayer"
        cardplantexplore.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        let mask = CAShapeLayer()
        mask.path = CGPathCreateWithSVGString("M0,0l216.65,0 0,1109.03 -216.65,0 0,-1109.03zM0,0")!
        mask.fillColor = UIColor.black.cgColor
        cardplantexplore.shapeLayer.mask = mask
        let image = UIImage(named: "cc8298febbedc12dff2ee0b97425b6d01714d96c")!
         
        cardplantexplore.shapeLayer.contents = image.cgImage
        cardplantexplore.shapeLayer.fillColor = UIColor.clear.cgColor
        cardplantexplore.shapeLayer.masksToBounds = true
        cardplantexplore.shapeLayer.miterLimit = 4
        cardplantexplore.shapeLayer.lineDashPattern = []
        cardplantexplore.shapeLayer.lineDashPhase = 0
        cardplantexplore.shapeLayer.lineWidth = 1
        cardplantexplore.shapeLayer.path = CGPathCreateWithSVGString("M0,0l216.65,0 0,1109.03 -216.65,0 0,-1109.03zM0,0")!


    }

    private func createMainscreenaboutsegment() {
        mainscreenaboutsegment = ShapeView(frame: CGRect(x: 0.09, y: 0.01, width: 216.01, height: 1153.21))
        mainscreenaboutsegment.backgroundColor = UIColor.clear
        mainscreenaboutsegment.layer.anchorPoint = CGPoint(x: 0, y: 0)
        mainscreenaboutsegment.layer.shadowOffset = CGSize(width: 0, height: 0)
        mainscreenaboutsegment.layer.borderColor = UIColor.clear.cgColor
        mainscreenaboutsegment.layer.name = "mainscreenaboutsegment"
        mainscreenaboutsegment.layer.shadowColor = UIColor.clear.cgColor
        mainscreenaboutsegment.layer.shadowOpacity = 1
        mainscreenaboutsegment.layer.position = CGPoint(x: 0.09, y: 0.01)
        mainscreenaboutsegment.layer.bounds = CGRect(x: 0, y: 0, width: 216.01, height: 1153.21)
        mainscreenaboutsegment.layer.masksToBounds = false
        mainscreenaboutsegment.shapeLayer.name = "mainscreenaboutsegment.shapeLayer"
        mainscreenaboutsegment.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        let mask = CAShapeLayer()
        mask.path = CGPathCreateWithSVGString("M0,0l216.01,0 0,1153.21 -216.01,0 0,-1153.21zM0,0")!
        mask.fillColor = UIColor.black.cgColor
        mainscreenaboutsegment.shapeLayer.mask = mask
        let image = UIImage(named: "3c0ee1011123205f7b1af28adb3bdb92ca5bc8e6")!
         
        mainscreenaboutsegment.shapeLayer.contents = image.cgImage
        mainscreenaboutsegment.shapeLayer.fillColor = UIColor.clear.cgColor
        mainscreenaboutsegment.shapeLayer.masksToBounds = true
        mainscreenaboutsegment.shapeLayer.miterLimit = 4
        mainscreenaboutsegment.shapeLayer.lineDashPattern = []
        mainscreenaboutsegment.shapeLayer.lineDashPhase = 0
        mainscreenaboutsegment.shapeLayer.lineWidth = 1
        mainscreenaboutsegment.shapeLayer.path = CGPathCreateWithSVGString("M0,0l216.01,0 0,1153.21 -216.01,0 0,-1153.21zM0,0")!


    }

    private func createGroup8() {
        group8 = UIView(frame: CGRect(x: 1.68, y: 0, width: 239.65, height: 491.7))
        group8.backgroundColor = UIColor.clear
        group8.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group8.layer.shadowOffset = CGSize(width: 0, height: 0)
        group8.layer.borderWidth = 1
        group8.layer.borderColor = UIColor.clear.cgColor
        group8.layer.name = "group8"
        group8.layer.shadowColor = UIColor.clear.cgColor
        group8.layer.shadowOpacity = 1
        group8.layer.position = CGPoint(x: 1.68, y: 0)
        group8.layer.bounds = CGRect(x: 0, y: 0, width: 239.65, height: 491.7)
        group8.layer.masksToBounds = false

    }

    private func createRectangle20() {
        rectangle20 = ShapeView(frame: CGRect(x: 4.36, y: 2.68, width: 234.28, height: 486.33))
        rectangle20.backgroundColor = UIColor.clear
        rectangle20.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle20.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle20.layer.borderColor = UIColor.clear.cgColor
        rectangle20.layer.name = "rectangle20"
        rectangle20.layer.shadowColor = UIColor.clear.cgColor
        rectangle20.layer.shadowOpacity = 1
        rectangle20.layer.position = CGPoint(x: 4.36, y: 2.68)
        rectangle20.layer.bounds = CGRect(x: 0, y: 0, width: 234.28, height: 486.33)
        rectangle20.layer.masksToBounds = false
        rectangle20.shapeLayer.name = "rectangle20.shapeLayer"
        rectangle20.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle20.shapeLayer.fillColor = UIColor.black.cgColor
        rectangle20.shapeLayer.miterLimit = 4
        rectangle20.shapeLayer.lineDashPattern = []
        rectangle20.shapeLayer.lineDashPhase = 0
        rectangle20.shapeLayer.lineWidth = 0.5
        rectangle20.shapeLayer.path = CGPathCreateWithSVGString("M0,52.018c0,-18.208,0,-27.312,3.543,-34.267 3.117,-6.117,8.09,-11.091,14.208,-14.208 6.954,-3.544,16.058,-3.544,34.266,-3.544l130.245,0c18.208,0,27.312,0,34.266,3.544 6.118,3.117,11.091,8.091,14.208,14.208 3.544,6.955,3.544,16.059,3.544,34.267l0,382.294c0,18.208,0,27.312,-3.544,34.267 -3.117,6.117,-8.09,11.091,-14.208,14.208 -6.954,3.544,-16.059,3.544,-34.266,3.544l-130.245,0c-18.208,0,-27.312,0,-34.266,-3.544 -6.117,-3.117,-11.091,-8.091,-14.208,-14.208 -3.543,-6.955,-3.543,-16.059,-3.543,-34.267l0,-382.294 0,0zM0,52.018")!


    }

    private func createSubtract1() {
        subtract_1 = ShapeView(frame: CGRect(x: 13.41, y: 12.07, width: 216.19, height: 467.56))
        subtract_1.backgroundColor = UIColor.clear
        subtract_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        subtract_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        subtract_1.layer.borderColor = UIColor.clear.cgColor
        subtract_1.layer.name = "subtract_1"
        subtract_1.layer.shadowColor = UIColor.clear.cgColor
        subtract_1.layer.shadowOpacity = 1
        subtract_1.layer.position = CGPoint(x: 13.41, y: 12.07)
        subtract_1.layer.bounds = CGRect(x: 0, y: 0, width: 216.19, height: 467.56)
        subtract_1.layer.masksToBounds = false
        subtract_1.shapeLayer.name = "subtract_1.shapeLayer"
        subtract_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        subtract_1.shapeLayer.fillColor = UIColor.black.cgColor
        subtract_1.shapeLayer.miterLimit = 4
        subtract_1.shapeLayer.lineDashPattern = []
        subtract_1.shapeLayer.lineDashPhase = 0
        subtract_1.shapeLayer.lineWidth = 1
        subtract_1.shapeLayer.path = CGPathCreateWithSVGString("M2.484,12.444c-2.484,4.875,-2.484,11.258,-2.484,24.022l0,394.627c0,12.765,0,19.147,2.484,24.023 2.185,4.288,5.672,7.775,9.961,9.96 4.875,2.484,11.258,2.484,24.023,2.484l143.255,0c12.764,0,19.147,0,24.022,-2.484 4.289,-2.185,7.775,-5.672,9.96,-9.96 2.485,-4.876,2.485,-11.258,2.485,-24.023l0,-394.627c0,-12.764,0,-19.147,-2.485,-24.022 -2.185,-4.289,-5.671,-7.775,-9.96,-9.96 -4.875,-2.484,-11.258,-2.484,-24.022,-2.484l-11.202,0c-0.555,0,-0.833,0,-1.055,0.081 -0.372,0.136,-0.665,0.429,-0.801,0.801 -0.081,0.222,-0.081,0.5,-0.081,1.054 0,4.439,0,6.658,-0.647,8.435 -1.084,2.979,-3.431,5.326,-6.41,6.41 -1.777,0.647,-3.996,0.647,-8.435,0.647l-85.992,0c-4.439,0,-6.658,0,-8.435,-0.647 -2.979,-1.084,-5.326,-3.431,-6.41,-6.41 -0.647,-1.777,-0.647,-3.997,-0.647,-8.435 0,-0.555,0,-0.832,-0.081,-1.054 -0.136,-0.372,-0.429,-0.666,-0.801,-0.801 -0.222,-0.081,-0.5,-0.081,-1.054,-0.081l-11.202,0c-12.765,0,-19.147,0,-24.023,2.484 -4.289,2.185,-7.775,5.672,-9.961,9.96l0,0zM2.484,12.444")!


    }

    private func createGroup10() {
        group10 = UIView(frame: CGRect(x: 0, y: 77.76, width: 243, height: 118.65))
        group10.backgroundColor = UIColor.clear
        group10.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group10.layer.shadowOffset = CGSize(width: 0, height: 0)
        group10.layer.borderWidth = 1
        group10.layer.borderColor = UIColor.clear.cgColor
        group10.layer.name = "group10"
        group10.layer.shadowColor = UIColor.clear.cgColor
        group10.layer.shadowOpacity = 1
        group10.layer.position = CGPoint(x: 0, y: 77.76)
        group10.layer.bounds = CGRect(x: 0, y: 0, width: 243, height: 118.65)
        group10.layer.masksToBounds = false

    }

    private func createRectangle13() {
        rectangle13 = ShapeView(frame: CGRect(x: 0, y: 0, width: 1.68, height: 19.44))
        rectangle13.backgroundColor = UIColor.clear
        rectangle13.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle13.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle13.layer.borderColor = UIColor.clear.cgColor
        rectangle13.layer.name = "rectangle13"
        rectangle13.layer.shadowColor = UIColor.clear.cgColor
        rectangle13.layer.shadowOpacity = 1
        rectangle13.layer.position = CGPoint(x: 0, y: 0)
        rectangle13.layer.bounds = CGRect(x: 0, y: 0, width: 1.68, height: 19.44)
        rectangle13.layer.masksToBounds = false
        rectangle13.shapeLayer.name = "rectangle13.shapeLayer"
        rectangle13.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle13.shapeLayer.fillColor = nil
        rectangle13.shapeLayer.miterLimit = 4
        rectangle13.shapeLayer.lineDashPattern = []
        rectangle13.shapeLayer.lineDashPhase = 0
        rectangle13.shapeLayer.lineWidth = 1
        rectangle13.shapeLayer.path = CGPathCreateWithSVGString("M0,0.67c0,-0.37,0.301,-0.67,0.672,-0.67l1.008,0 0,19.44 -1.008,0c-0.371,0,-0.672,-0.3,-0.672,-0.67l0,-18.099 0,0zM0,0.67")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0.08).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0.24).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.276), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle13.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle14() {
        rectangle14 = ShapeView(frame: CGRect(x: 0, y: 35.19, width: 1.68, height: 37.54))
        rectangle14.backgroundColor = UIColor.clear
        rectangle14.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle14.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle14.layer.borderColor = UIColor.clear.cgColor
        rectangle14.layer.name = "rectangle14"
        rectangle14.layer.shadowColor = UIColor.clear.cgColor
        rectangle14.layer.shadowOpacity = 1
        rectangle14.layer.position = CGPoint(x: 0, y: 35.19)
        rectangle14.layer.bounds = CGRect(x: 0, y: 0, width: 1.68, height: 37.54)
        rectangle14.layer.masksToBounds = false
        rectangle14.shapeLayer.name = "rectangle14.shapeLayer"
        rectangle14.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle14.shapeLayer.fillColor = nil
        rectangle14.shapeLayer.miterLimit = 4
        rectangle14.shapeLayer.lineDashPattern = []
        rectangle14.shapeLayer.lineDashPhase = 0
        rectangle14.shapeLayer.lineWidth = 1
        rectangle14.shapeLayer.path = CGPathCreateWithSVGString("M0,0.67c0,-0.37,0.301,-0.67,0.672,-0.67l1.008,0 0,37.54 -1.008,0c-0.371,0,-0.672,-0.3,-0.672,-0.67l0,-36.199 0,0zM0,0.67")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0.08).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0.24).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.276), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle14.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle16() {
        rectangle16 = ShapeView(frame: CGRect(x: 241.32, y: 48.6, width: 1.68, height: 58.32))
        rectangle16.backgroundColor = UIColor.clear
        rectangle16.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle16.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle16.layer.borderColor = UIColor.clear.cgColor
        rectangle16.layer.name = "rectangle16"
        rectangle16.layer.shadowColor = UIColor.clear.cgColor
        rectangle16.layer.shadowOpacity = 1
        rectangle16.layer.position = CGPoint(x: 241.32, y: 48.6)
        rectangle16.layer.bounds = CGRect(x: 0, y: 0, width: 1.68, height: 58.32)
        rectangle16.layer.masksToBounds = false
        rectangle16.shapeLayer.name = "rectangle16.shapeLayer"
        rectangle16.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle16.shapeLayer.fillColor = nil
        rectangle16.shapeLayer.miterLimit = 4
        rectangle16.shapeLayer.lineDashPattern = []
        rectangle16.shapeLayer.lineDashPhase = 0
        rectangle16.shapeLayer.lineWidth = 1
        rectangle16.shapeLayer.path = CGPathCreateWithSVGString("M0,0l1.008,0c0.371,0,0.672,0.3,0.672,0.67l0,56.979c0,0.37,-0.301,0.67,-0.672,0.67l-1.008,0 0,-58.32 0,0zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0.24).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0.08).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.63), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle16.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle15() {
        rectangle15 = ShapeView(frame: CGRect(x: 0, y: 81.11, width: 1.68, height: 37.54))
        rectangle15.backgroundColor = UIColor.clear
        rectangle15.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle15.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle15.layer.borderColor = UIColor.clear.cgColor
        rectangle15.layer.name = "rectangle15"
        rectangle15.layer.shadowColor = UIColor.clear.cgColor
        rectangle15.layer.shadowOpacity = 1
        rectangle15.layer.position = CGPoint(x: 0, y: 81.11)
        rectangle15.layer.bounds = CGRect(x: 0, y: 0, width: 1.68, height: 37.54)
        rectangle15.layer.masksToBounds = false
        rectangle15.shapeLayer.name = "rectangle15.shapeLayer"
        rectangle15.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle15.shapeLayer.fillColor = nil
        rectangle15.shapeLayer.miterLimit = 4
        rectangle15.shapeLayer.lineDashPattern = []
        rectangle15.shapeLayer.lineDashPhase = 0
        rectangle15.shapeLayer.lineWidth = 1
        rectangle15.shapeLayer.path = CGPathCreateWithSVGString("M0,0.67c0,-0.37,0.301,-0.67,0.672,-0.67l1.008,0 0,37.54 -1.008,0c-0.371,0,-0.672,-0.3,-0.672,-0.67l0,-36.199 0,0zM0,0.67")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor(red: 1, green: 1, blue: 1, alpha: 0.08).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0.24).cgColor, UIColor(red: 1, green: 1, blue: 1, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.276), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle15.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle10() {
        rectangle10 = ShapeView(frame: CGRect(x: 0, y: 0, width: 239.65, height: 491.7))
        rectangle10.backgroundColor = UIColor.clear
        rectangle10.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle10.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle10.layer.borderColor = UIColor.clear.cgColor
        rectangle10.layer.name = "rectangle10"
        rectangle10.layer.shadowColor = UIColor.clear.cgColor
        rectangle10.layer.shadowOpacity = 1
        rectangle10.layer.position = CGPoint(x: 0, y: 0)
        rectangle10.layer.bounds = CGRect(x: 0, y: 0, width: 239.65, height: 491.7)
        rectangle10.layer.masksToBounds = false
        let rectangle10Mask = CAShapeLayer()
        rectangle10Mask.name = "rectangle10Mask"
        rectangle10Mask.path = CGPathCreateWithSVGString("M0,55.773c0,-19.522,0,-29.284,3.799,-36.74 3.342,-6.559,8.675,-11.892,15.234,-15.234 7.457,-3.799,17.218,-3.799,36.74,-3.799l128.104,0c19.522,0,29.283,0,36.74,3.799 6.559,3.342,11.891,8.675,15.233,15.234 3.799,7.457,3.799,17.218,3.799,36.74l0,380.154c0,19.522,0,29.283,-3.799,36.74 -3.342,6.559,-8.674,11.891,-15.233,15.233 -7.457,3.799,-17.218,3.799,-36.74,3.799l-128.104,0c-19.522,0,-29.284,0,-36.74,-3.799 -6.559,-3.342,-11.892,-8.674,-15.234,-15.233 -3.799,-7.457,-3.799,-17.218,-3.799,-36.74l0,-380.154 0,0zM0,55.773")!
        rectangle10.layer.mask = rectangle10Mask

    }

    private func createRectangle11() {
        rectangle11 = ShapeView(frame: CGRect(x: 0, y: 0, width: 239.65, height: 491.7))
        rectangle11.backgroundColor = UIColor.clear
        rectangle11.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle11.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle11.layer.borderColor = UIColor.clear.cgColor
        rectangle11.layer.name = "rectangle11"
        rectangle11.layer.shadowColor = UIColor.clear.cgColor
        rectangle11.layer.shadowOpacity = 1
        rectangle11.layer.position = CGPoint(x: 0, y: 0)
        rectangle11.layer.bounds = CGRect(x: 0, y: 0, width: 239.65, height: 491.7)
        rectangle11.layer.masksToBounds = false
        rectangle11.shapeLayer.name = "rectangle11.shapeLayer"
        rectangle11.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle11.shapeLayer.fillColor = UIColor(red: 0.02, green: 0.02, blue: 0.02, alpha: 1).cgColor
        rectangle11.shapeLayer.miterLimit = 4
        rectangle11.shapeLayer.lineDashPattern = []
        rectangle11.shapeLayer.lineDashPhase = 0
        rectangle11.shapeLayer.lineWidth = 2
        rectangle11.shapeLayer.path = CGPathCreateWithSVGString("M0,55.773c0,-19.522,0,-29.284,3.799,-36.74 3.342,-6.559,8.675,-11.892,15.234,-15.234 7.457,-3.799,17.218,-3.799,36.74,-3.799l128.104,0c19.522,0,29.283,0,36.74,3.799 6.559,3.342,11.891,8.675,15.233,15.234 3.799,7.457,3.799,17.218,3.799,36.74l0,380.154c0,19.522,0,29.283,-3.799,36.74 -3.342,6.559,-8.674,11.891,-15.233,15.233 -7.457,3.799,-17.218,3.799,-36.74,3.799l-128.104,0c-19.522,0,-29.284,0,-36.74,-3.799 -6.559,-3.342,-11.892,-8.674,-15.234,-15.233 -3.799,-7.457,-3.799,-17.218,-3.799,-36.74l0,-380.154 0,0zM0,55.773")!


    }

    private func createGroup4() {
        group4 = UIView(frame: CGRect(x: -1.34, y: -2.35, width: 242.33, height: 495.38))
        group4.backgroundColor = UIColor.clear
        group4.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group4.layer.shadowOffset = CGSize(width: 0, height: 0)
        group4.layer.borderWidth = 1
        group4.layer.borderColor = UIColor.clear.cgColor
        group4.layer.name = "group4"
        group4.layer.shadowColor = UIColor.clear.cgColor
        group4.layer.shadowOpacity = 1
        group4.layer.position = CGPoint(x: -1.34, y: -2.35)
        group4.layer.bounds = CGRect(x: 0, y: 0, width: 242.33, height: 495.38)
        group4.layer.masksToBounds = false

    }

    private func createRectangle23() {
        rectangle23 = ShapeView(frame: CGRect(x: 0, y: 44.24, width: 5.7, height: 4.69))
        rectangle23.backgroundColor = UIColor.clear
        rectangle23.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle23.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle23.layer.borderColor = UIColor.clear.cgColor
        rectangle23.layer.name = "rectangle23"
        rectangle23.layer.shadowColor = UIColor.clear.cgColor
        rectangle23.layer.shadowOpacity = 1
        rectangle23.layer.position = CGPoint(x: 0, y: 44.24)
        rectangle23.layer.bounds = CGRect(x: 0, y: 0, width: 5.7, height: 4.69)
        rectangle23.layer.masksToBounds = false
        rectangle23.shapeLayer.name = "rectangle23.shapeLayer"
        rectangle23.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle23.shapeLayer.fillColor = nil
        rectangle23.shapeLayer.miterLimit = 4
        rectangle23.shapeLayer.lineDashPattern = []
        rectangle23.shapeLayer.lineDashPhase = 0
        rectangle23.shapeLayer.lineWidth = 1
        rectangle23.shapeLayer.path = CGPathCreateWithSVGString("M0,0l5.7,0 0,4.69 -5.7,0 0,-4.69zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.56, green: 0.56, blue: 0.56, alpha: 1).cgColor, UIColor(red: 0.32, green: 0.32, blue: 0.32, alpha: 1).cgColor, UIColor(red: 0.08, green: 0.08, blue: 0.08, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.124), NSNumber(value: 0.366), NSNumber(value: 0.828)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle23.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle25() {
        rectangle25 = ShapeView(frame: CGRect(x: 0, y: 449.47, width: 5.7, height: 4.69))
        rectangle25.backgroundColor = UIColor.clear
        rectangle25.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle25.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle25.layer.borderColor = UIColor.clear.cgColor
        rectangle25.layer.name = "rectangle25"
        rectangle25.layer.shadowColor = UIColor.clear.cgColor
        rectangle25.layer.shadowOpacity = 1
        rectangle25.layer.position = CGPoint(x: 0, y: 449.47)
        rectangle25.layer.bounds = CGRect(x: 0, y: 0, width: 5.7, height: 4.69)
        rectangle25.layer.masksToBounds = false
        rectangle25.shapeLayer.name = "rectangle25.shapeLayer"
        rectangle25.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle25.shapeLayer.fillColor = nil
        rectangle25.shapeLayer.miterLimit = 4
        rectangle25.shapeLayer.lineDashPattern = []
        rectangle25.shapeLayer.lineDashPhase = 0
        rectangle25.shapeLayer.lineWidth = 1
        rectangle25.shapeLayer.path = CGPathCreateWithSVGString("M0,0l5.7,0 0,4.69 -5.7,0 0,-4.69zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.56, green: 0.56, blue: 0.56, alpha: 1).cgColor, UIColor(red: 0.32, green: 0.32, blue: 0.32, alpha: 1).cgColor, UIColor(red: 0.08, green: 0.08, blue: 0.08, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.124), NSNumber(value: 0.366), NSNumber(value: 0.828)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle25.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle24() {
        rectangle24 = ShapeView(frame: CGRect(x: 236.63, y: 44.24, width: 5.7, height: 4.69))
        rectangle24.backgroundColor = UIColor.clear
        rectangle24.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle24.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle24.layer.borderColor = UIColor.clear.cgColor
        rectangle24.layer.name = "rectangle24"
        rectangle24.layer.shadowColor = UIColor.clear.cgColor
        rectangle24.layer.shadowOpacity = 1
        rectangle24.layer.position = CGPoint(x: 236.63, y: 44.24)
        rectangle24.layer.bounds = CGRect(x: 0, y: 0, width: 5.7, height: 4.69)
        rectangle24.layer.masksToBounds = false
        rectangle24.shapeLayer.name = "rectangle24.shapeLayer"
        rectangle24.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle24.shapeLayer.fillColor = nil
        rectangle24.shapeLayer.miterLimit = 4
        rectangle24.shapeLayer.lineDashPattern = []
        rectangle24.shapeLayer.lineDashPhase = 0
        rectangle24.shapeLayer.lineWidth = 1
        rectangle24.shapeLayer.path = CGPathCreateWithSVGString("M0,0l5.7,0 0,4.69 -5.7,0 0,-4.69zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.08, green: 0.08, blue: 0.08, alpha: 1).cgColor, UIColor(red: 0.32, green: 0.32, blue: 0.32, alpha: 1).cgColor, UIColor(red: 0.56, green: 0.56, blue: 0.56, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.088), NSNumber(value: 0.536), NSNumber(value: 0.757)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle24.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle26() {
        rectangle26 = ShapeView(frame: CGRect(x: 236.63, y: 449.47, width: 5.7, height: 4.69))
        rectangle26.backgroundColor = UIColor.clear
        rectangle26.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle26.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle26.layer.borderColor = UIColor.clear.cgColor
        rectangle26.layer.name = "rectangle26"
        rectangle26.layer.shadowColor = UIColor.clear.cgColor
        rectangle26.layer.shadowOpacity = 1
        rectangle26.layer.position = CGPoint(x: 236.63, y: 449.47)
        rectangle26.layer.bounds = CGRect(x: 0, y: 0, width: 5.7, height: 4.69)
        rectangle26.layer.masksToBounds = false
        rectangle26.shapeLayer.name = "rectangle26.shapeLayer"
        rectangle26.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle26.shapeLayer.fillColor = nil
        rectangle26.shapeLayer.miterLimit = 4
        rectangle26.shapeLayer.lineDashPattern = []
        rectangle26.shapeLayer.lineDashPhase = 0
        rectangle26.shapeLayer.lineWidth = 1
        rectangle26.shapeLayer.path = CGPathCreateWithSVGString("M0,0l5.7,0 0,4.69 -5.7,0 0,-4.69zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.08, green: 0.08, blue: 0.08, alpha: 1).cgColor, UIColor(red: 0.32, green: 0.32, blue: 0.32, alpha: 1).cgColor, UIColor(red: 0.56, green: 0.56, blue: 0.56, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.088), NSNumber(value: 0.529), NSNumber(value: 0.771)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle26.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle27() {
        rectangle27 = ShapeView(frame: CGRect(x: 190.04, y: 0, width: 5.7, height: 4.69))
        rectangle27.backgroundColor = UIColor.clear
        rectangle27.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle27.transform = CGAffineTransform(rotationAngle: 0.5 * CGFloat.pi)
        rectangle27.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle27.layer.borderColor = UIColor.clear.cgColor
        rectangle27.layer.name = "rectangle27"
        rectangle27.layer.shadowColor = UIColor.clear.cgColor
        rectangle27.layer.shadowOpacity = 1
        rectangle27.layer.position = CGPoint(x: 190.04, y: 0)
        rectangle27.layer.bounds = CGRect(x: 0, y: 0, width: 5.7, height: 4.69)
        rectangle27.layer.masksToBounds = false
        rectangle27.shapeLayer.name = "rectangle27.shapeLayer"
        rectangle27.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle27.shapeLayer.fillColor = nil
        rectangle27.shapeLayer.miterLimit = 4
        rectangle27.shapeLayer.lineDashPattern = []
        rectangle27.shapeLayer.lineDashPhase = 0
        rectangle27.shapeLayer.lineWidth = 1
        rectangle27.shapeLayer.path = CGPathCreateWithSVGString("M0,0l5.7,0 0,4.69 -5.7,0 0,-4.69zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.56, green: 0.56, blue: 0.56, alpha: 1).cgColor, UIColor(red: 0.32, green: 0.32, blue: 0.32, alpha: 1).cgColor, UIColor(red: 0.08, green: 0.08, blue: 0.08, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.42), NSNumber(value: 0.61), NSNumber(value: 0.976)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle27.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle28() {
        rectangle28 = ShapeView(frame: CGRect(x: 48.94, y: 489.68, width: 5.7, height: 4.69))
        rectangle28.backgroundColor = UIColor.clear
        rectangle28.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle28.transform = CGAffineTransform(rotationAngle: 0.5 * CGFloat.pi)
        rectangle28.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle28.layer.borderColor = UIColor.clear.cgColor
        rectangle28.layer.name = "rectangle28"
        rectangle28.layer.shadowColor = UIColor.clear.cgColor
        rectangle28.layer.shadowOpacity = 1
        rectangle28.layer.position = CGPoint(x: 48.94, y: 489.68)
        rectangle28.layer.bounds = CGRect(x: 0, y: 0, width: 5.7, height: 4.69)
        rectangle28.layer.masksToBounds = false
        rectangle28.shapeLayer.name = "rectangle28.shapeLayer"
        rectangle28.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle28.shapeLayer.fillColor = nil
        rectangle28.shapeLayer.miterLimit = 4
        rectangle28.shapeLayer.lineDashPattern = []
        rectangle28.shapeLayer.lineDashPhase = 0
        rectangle28.shapeLayer.lineWidth = 1
        rectangle28.shapeLayer.path = CGPathCreateWithSVGString("M0,0l5.7,0 0,4.69 -5.7,0 0,-4.69zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor.black.cgColor, UIColor(red: 0.16, green: 0.16, blue: 0.16, alpha: 1).cgColor, UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.123), NSNumber(value: 0.585), NSNumber(value: 0.876)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle28.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createGroup81() {
        group8_1 = UIView(frame: CGRect(x: 1.68, y: 0, width: 239.65, height: 491.7))
        group8_1.backgroundColor = UIColor.clear
        group8_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group8_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        group8_1.layer.borderWidth = 1
        group8_1.layer.borderColor = UIColor.clear.cgColor
        group8_1.layer.name = "group8_1"
        group8_1.layer.shadowColor = UIColor.clear.cgColor
        group8_1.layer.shadowOpacity = 1
        group8_1.layer.position = CGPoint(x: 1.68, y: 0)
        group8_1.layer.bounds = CGRect(x: 0, y: 0, width: 239.65, height: 491.7)
        group8_1.layer.masksToBounds = false

    }

    private func createRectangle201() {
        rectangle20_1 = ShapeView(frame: CGRect(x: 4.36, y: 2.68, width: 234.28, height: 486.33))
        rectangle20_1.backgroundColor = UIColor.clear
        rectangle20_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle20_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle20_1.layer.borderColor = UIColor.clear.cgColor
        rectangle20_1.layer.name = "rectangle20_1"
        rectangle20_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle20_1.layer.shadowOpacity = 1
        rectangle20_1.layer.position = CGPoint(x: 4.36, y: 2.68)
        rectangle20_1.layer.bounds = CGRect(x: 0, y: 0, width: 234.28, height: 486.33)
        rectangle20_1.layer.masksToBounds = false
        rectangle20_1.shapeLayer.name = "rectangle20_1.shapeLayer"
        rectangle20_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle20_1.shapeLayer.fillColor = UIColor.black.cgColor
        rectangle20_1.shapeLayer.miterLimit = 4
        rectangle20_1.shapeLayer.lineDashPattern = []
        rectangle20_1.shapeLayer.lineDashPhase = 0
        rectangle20_1.shapeLayer.lineWidth = 0.5
        rectangle20_1.shapeLayer.path = CGPathCreateWithSVGString("M0,52.018c0,-18.208,0,-27.312,3.543,-34.267 3.117,-6.117,8.09,-11.091,14.208,-14.208 6.954,-3.544,16.058,-3.544,34.266,-3.544l130.245,0c18.208,0,27.312,0,34.266,3.544 6.118,3.117,11.091,8.091,14.208,14.208 3.544,6.955,3.544,16.059,3.544,34.267l0,382.294c0,18.208,0,27.312,-3.544,34.267 -3.117,6.117,-8.09,11.091,-14.208,14.208 -6.954,3.544,-16.059,3.544,-34.266,3.544l-130.245,0c-18.208,0,-27.312,0,-34.266,-3.544 -6.117,-3.117,-11.091,-8.091,-14.208,-14.208 -3.543,-6.955,-3.543,-16.059,-3.543,-34.267l0,-382.294 0,0zM0,52.018")!


    }

    private func createGroup101() {
        group10_1 = UIView(frame: CGRect(x: 0, y: 77.76, width: 243, height: 118.65))
        group10_1.backgroundColor = UIColor.clear
        group10_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group10_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        group10_1.layer.borderWidth = 1
        group10_1.layer.borderColor = UIColor.clear.cgColor
        group10_1.layer.name = "group10_1"
        group10_1.layer.shadowColor = UIColor.clear.cgColor
        group10_1.layer.shadowOpacity = 1
        group10_1.layer.position = CGPoint(x: 0, y: 77.76)
        group10_1.layer.bounds = CGRect(x: 0, y: 0, width: 243, height: 118.65)
        group10_1.layer.masksToBounds = false

    }

    private func createRectangle131() {
        rectangle13_1 = ShapeView(frame: CGRect(x: 0, y: 0, width: 1.68, height: 19.44))
        rectangle13_1.backgroundColor = UIColor.clear
        rectangle13_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle13_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle13_1.layer.borderColor = UIColor.clear.cgColor
        rectangle13_1.layer.name = "rectangle13_1"
        rectangle13_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle13_1.layer.shadowOpacity = 1
        rectangle13_1.layer.position = CGPoint(x: 0, y: 0)
        rectangle13_1.layer.bounds = CGRect(x: 0, y: 0, width: 1.68, height: 19.44)
        rectangle13_1.layer.masksToBounds = false
        rectangle13_1.shapeLayer.name = "rectangle13_1.shapeLayer"
        rectangle13_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle13_1.shapeLayer.fillColor = nil
        rectangle13_1.shapeLayer.miterLimit = 4
        rectangle13_1.shapeLayer.lineDashPattern = []
        rectangle13_1.shapeLayer.lineDashPhase = 0
        rectangle13_1.shapeLayer.lineWidth = 1
        rectangle13_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0.67c0,-0.37,0.301,-0.67,0.672,-0.67l1.008,0 0,19.44 -1.008,0c-0.371,0,-0.672,-0.3,-0.672,-0.67l0,-18.099 0,0zM0,0.67")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor.clear.cgColor, UIColor(red: 0.817, green: 0.817, blue: 0.817, alpha: 0.42).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0.24).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.333), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle13_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle141() {
        rectangle14_1 = ShapeView(frame: CGRect(x: 0, y: 35.19, width: 1.68, height: 37.54))
        rectangle14_1.backgroundColor = UIColor.clear
        rectangle14_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle14_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle14_1.layer.borderColor = UIColor.clear.cgColor
        rectangle14_1.layer.name = "rectangle14_1"
        rectangle14_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle14_1.layer.shadowOpacity = 1
        rectangle14_1.layer.position = CGPoint(x: 0, y: 35.19)
        rectangle14_1.layer.bounds = CGRect(x: 0, y: 0, width: 1.68, height: 37.54)
        rectangle14_1.layer.masksToBounds = false
        rectangle14_1.shapeLayer.name = "rectangle14_1.shapeLayer"
        rectangle14_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle14_1.shapeLayer.fillColor = nil
        rectangle14_1.shapeLayer.miterLimit = 4
        rectangle14_1.shapeLayer.lineDashPattern = []
        rectangle14_1.shapeLayer.lineDashPhase = 0
        rectangle14_1.shapeLayer.lineWidth = 1
        rectangle14_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0.67c0,-0.37,0.301,-0.67,0.672,-0.67l1.008,0 0,37.54 -1.008,0c-0.371,0,-0.672,-0.3,-0.672,-0.67l0,-36.199 0,0zM0,0.67")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor.clear.cgColor, UIColor(red: 0.817, green: 0.817, blue: 0.817, alpha: 0.42).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0.24).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.333), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle14_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle161() {
        rectangle16_1 = ShapeView(frame: CGRect(x: 241.32, y: 48.6, width: 1.68, height: 58.32))
        rectangle16_1.backgroundColor = UIColor.clear
        rectangle16_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle16_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle16_1.layer.borderColor = UIColor.clear.cgColor
        rectangle16_1.layer.name = "rectangle16_1"
        rectangle16_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle16_1.layer.shadowOpacity = 1
        rectangle16_1.layer.position = CGPoint(x: 241.32, y: 48.6)
        rectangle16_1.layer.bounds = CGRect(x: 0, y: 0, width: 1.68, height: 58.32)
        rectangle16_1.layer.masksToBounds = false
        rectangle16_1.shapeLayer.name = "rectangle16_1.shapeLayer"
        rectangle16_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle16_1.shapeLayer.fillColor = nil
        rectangle16_1.shapeLayer.miterLimit = 4
        rectangle16_1.shapeLayer.lineDashPattern = []
        rectangle16_1.shapeLayer.lineDashPhase = 0
        rectangle16_1.shapeLayer.lineWidth = 1
        rectangle16_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l1.008,0c0.371,0,0.672,0.3,0.672,0.67l0,56.979c0,0.37,-0.301,0.67,-0.672,0.67l-1.008,0 0,-58.32 0,0zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor(red: 0, green: 0, blue: 0, alpha: 0.24).cgColor, UIColor(red: 0.817, green: 0.817, blue: 0.817, alpha: 0.42).cgColor, UIColor.clear.cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.574), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle16_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle151() {
        rectangle15_1 = ShapeView(frame: CGRect(x: 0, y: 81.11, width: 1.68, height: 37.54))
        rectangle15_1.backgroundColor = UIColor.clear
        rectangle15_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle15_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle15_1.layer.borderColor = UIColor.clear.cgColor
        rectangle15_1.layer.name = "rectangle15_1"
        rectangle15_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle15_1.layer.shadowOpacity = 1
        rectangle15_1.layer.position = CGPoint(x: 0, y: 81.11)
        rectangle15_1.layer.bounds = CGRect(x: 0, y: 0, width: 1.68, height: 37.54)
        rectangle15_1.layer.masksToBounds = false
        rectangle15_1.shapeLayer.name = "rectangle15_1.shapeLayer"
        rectangle15_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle15_1.shapeLayer.fillColor = nil
        rectangle15_1.shapeLayer.miterLimit = 4
        rectangle15_1.shapeLayer.lineDashPattern = []
        rectangle15_1.shapeLayer.lineDashPhase = 0
        rectangle15_1.shapeLayer.lineWidth = 1
        rectangle15_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0.67c0,-0.37,0.301,-0.67,0.672,-0.67l1.008,0 0,37.54 -1.008,0c-0.371,0,-0.672,-0.3,-0.672,-0.67l0,-36.199 0,0zM0,0.67")!

        let startPoint = CGPoint(x: 0, y: 0.491)
        let endPoint = CGPoint(x: 1, y: 0.491)
        let colors = [UIColor.clear.cgColor, UIColor(red: 0.817, green: 0.817, blue: 0.817, alpha: 0.42).cgColor, UIColor(red: 0, green: 0, blue: 0, alpha: 0.24).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.333), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle15_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle101() {
        rectangle10_1 = ShapeView(frame: CGRect(x: 0, y: 0, width: 239.65, height: 491.7))
        rectangle10_1.backgroundColor = UIColor.clear
        rectangle10_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle10_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle10_1.layer.borderColor = UIColor.clear.cgColor
        rectangle10_1.layer.name = "rectangle10_1"
        rectangle10_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle10_1.layer.shadowOpacity = 1
        rectangle10_1.layer.position = CGPoint(x: 0, y: 0)
        rectangle10_1.layer.bounds = CGRect(x: 0, y: 0, width: 239.65, height: 491.7)
        rectangle10_1.layer.masksToBounds = false
        let rectangle10_1Mask = CAShapeLayer()
        rectangle10_1Mask.name = "rectangle10_1Mask"
        rectangle10_1Mask.path = CGPathCreateWithSVGString("M0,55.773c0,-19.522,0,-29.284,3.799,-36.74 3.342,-6.559,8.675,-11.892,15.234,-15.234 7.457,-3.799,17.218,-3.799,36.74,-3.799l128.104,0c19.522,0,29.283,0,36.74,3.799 6.559,3.342,11.891,8.675,15.233,15.234 3.799,7.457,3.799,17.218,3.799,36.74l0,380.154c0,19.522,0,29.283,-3.799,36.74 -3.342,6.559,-8.674,11.891,-15.233,15.233 -7.457,3.799,-17.218,3.799,-36.74,3.799l-128.104,0c-19.522,0,-29.284,0,-36.74,-3.799 -6.559,-3.342,-11.892,-8.674,-15.234,-15.233 -3.799,-7.457,-3.799,-17.218,-3.799,-36.74l0,-380.154 0,0zM0,55.773")!
        rectangle10_1.layer.mask = rectangle10_1Mask

    }

    private func createRectangle111() {
        rectangle11_1 = ShapeView(frame: CGRect(x: 0, y: 0, width: 239.65, height: 491.7))
        rectangle11_1.backgroundColor = UIColor.clear
        rectangle11_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle11_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle11_1.layer.borderColor = UIColor.clear.cgColor
        rectangle11_1.layer.name = "rectangle11_1"
        rectangle11_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle11_1.layer.shadowOpacity = 1
        rectangle11_1.layer.position = CGPoint(x: 0, y: 0)
        rectangle11_1.layer.bounds = CGRect(x: 0, y: 0, width: 239.65, height: 491.7)
        rectangle11_1.layer.masksToBounds = false
        rectangle11_1.shapeLayer.name = "rectangle11_1.shapeLayer"
        rectangle11_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle11_1.shapeLayer.fillColor = UIColor(red: 0.922, green: 0.922, blue: 0.922, alpha: 1).cgColor
        rectangle11_1.shapeLayer.miterLimit = 4
        rectangle11_1.shapeLayer.lineDashPattern = []
        rectangle11_1.shapeLayer.lineDashPhase = 0
        rectangle11_1.shapeLayer.lineWidth = 2
        rectangle11_1.shapeLayer.path = CGPathCreateWithSVGString("M0,55.773c0,-19.522,0,-29.284,3.799,-36.74 3.342,-6.559,8.675,-11.892,15.234,-15.234 7.457,-3.799,17.218,-3.799,36.74,-3.799l128.104,0c19.522,0,29.283,0,36.74,3.799 6.559,3.342,11.891,8.675,15.233,15.234 3.799,7.457,3.799,17.218,3.799,36.74l0,380.154c0,19.522,0,29.283,-3.799,36.74 -3.342,6.559,-8.674,11.891,-15.233,15.233 -7.457,3.799,-17.218,3.799,-36.74,3.799l-128.104,0c-19.522,0,-29.284,0,-36.74,-3.799 -6.559,-3.342,-11.892,-8.674,-15.234,-15.233 -3.799,-7.457,-3.799,-17.218,-3.799,-36.74l0,-380.154 0,0zM0,55.773")!


    }

    private func createGroup41() {
        group4_1 = UIView(frame: CGRect(x: -1.34, y: -2.35, width: 242.33, height: 495.38))
        group4_1.backgroundColor = UIColor.clear
        group4_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group4_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        group4_1.layer.borderWidth = 1
        group4_1.layer.borderColor = UIColor.clear.cgColor
        group4_1.layer.name = "group4_1"
        group4_1.layer.shadowColor = UIColor.clear.cgColor
        group4_1.layer.shadowOpacity = 1
        group4_1.layer.position = CGPoint(x: -1.34, y: -2.35)
        group4_1.layer.bounds = CGRect(x: 0, y: 0, width: 242.33, height: 495.38)
        group4_1.layer.masksToBounds = false

    }

    private func createRectangle231() {
        rectangle23_1 = ShapeView(frame: CGRect(x: 0, y: 44.24, width: 5.7, height: 4.69))
        rectangle23_1.backgroundColor = UIColor.clear
        rectangle23_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle23_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle23_1.layer.borderColor = UIColor.clear.cgColor
        rectangle23_1.layer.name = "rectangle23_1"
        rectangle23_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle23_1.layer.shadowOpacity = 1
        rectangle23_1.layer.position = CGPoint(x: 0, y: 44.24)
        rectangle23_1.layer.bounds = CGRect(x: 0, y: 0, width: 5.7, height: 4.69)
        rectangle23_1.layer.masksToBounds = false
        rectangle23_1.shapeLayer.name = "rectangle23_1.shapeLayer"
        rectangle23_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle23_1.shapeLayer.fillColor = nil
        rectangle23_1.shapeLayer.miterLimit = 4
        rectangle23_1.shapeLayer.lineDashPattern = []
        rectangle23_1.shapeLayer.lineDashPhase = 0
        rectangle23_1.shapeLayer.lineWidth = 1
        rectangle23_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l5.7,0 0,4.69 -5.7,0 0,-4.69zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.109), NSNumber(value: 0.318), NSNumber(value: 0.552), NSNumber(value: 0.807)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle23_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle251() {
        rectangle25_1 = ShapeView(frame: CGRect(x: 0, y: 449.47, width: 5.7, height: 4.69))
        rectangle25_1.backgroundColor = UIColor.clear
        rectangle25_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle25_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle25_1.layer.borderColor = UIColor.clear.cgColor
        rectangle25_1.layer.name = "rectangle25_1"
        rectangle25_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle25_1.layer.shadowOpacity = 1
        rectangle25_1.layer.position = CGPoint(x: 0, y: 449.47)
        rectangle25_1.layer.bounds = CGRect(x: 0, y: 0, width: 5.7, height: 4.69)
        rectangle25_1.layer.masksToBounds = false
        rectangle25_1.shapeLayer.name = "rectangle25_1.shapeLayer"
        rectangle25_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle25_1.shapeLayer.fillColor = nil
        rectangle25_1.shapeLayer.miterLimit = 4
        rectangle25_1.shapeLayer.lineDashPattern = []
        rectangle25_1.shapeLayer.lineDashPhase = 0
        rectangle25_1.shapeLayer.lineWidth = 1
        rectangle25_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l5.7,0 0,4.69 -5.7,0 0,-4.69zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.109), NSNumber(value: 0.318), NSNumber(value: 0.552), NSNumber(value: 0.807)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle25_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle241() {
        rectangle24_1 = ShapeView(frame: CGRect(x: 236.63, y: 44.24, width: 5.7, height: 4.69))
        rectangle24_1.backgroundColor = UIColor.clear
        rectangle24_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle24_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle24_1.layer.borderColor = UIColor.clear.cgColor
        rectangle24_1.layer.name = "rectangle24_1"
        rectangle24_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle24_1.layer.shadowOpacity = 1
        rectangle24_1.layer.position = CGPoint(x: 236.63, y: 44.24)
        rectangle24_1.layer.bounds = CGRect(x: 0, y: 0, width: 5.7, height: 4.69)
        rectangle24_1.layer.masksToBounds = false
        rectangle24_1.shapeLayer.name = "rectangle24_1.shapeLayer"
        rectangle24_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle24_1.shapeLayer.fillColor = nil
        rectangle24_1.shapeLayer.miterLimit = 4
        rectangle24_1.shapeLayer.lineDashPattern = []
        rectangle24_1.shapeLayer.lineDashPhase = 0
        rectangle24_1.shapeLayer.lineWidth = 1
        rectangle24_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l5.7,0 0,4.69 -5.7,0 0,-4.69zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.099), NSNumber(value: 0.369), NSNumber(value: 0.625), NSNumber(value: 0.799)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle24_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle261() {
        rectangle26_1 = ShapeView(frame: CGRect(x: 236.63, y: 449.47, width: 5.7, height: 4.69))
        rectangle26_1.backgroundColor = UIColor.clear
        rectangle26_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle26_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle26_1.layer.borderColor = UIColor.clear.cgColor
        rectangle26_1.layer.name = "rectangle26_1"
        rectangle26_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle26_1.layer.shadowOpacity = 1
        rectangle26_1.layer.position = CGPoint(x: 236.63, y: 449.47)
        rectangle26_1.layer.bounds = CGRect(x: 0, y: 0, width: 5.7, height: 4.69)
        rectangle26_1.layer.masksToBounds = false
        rectangle26_1.shapeLayer.name = "rectangle26_1.shapeLayer"
        rectangle26_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle26_1.shapeLayer.fillColor = nil
        rectangle26_1.shapeLayer.miterLimit = 4
        rectangle26_1.shapeLayer.lineDashPattern = []
        rectangle26_1.shapeLayer.lineDashPhase = 0
        rectangle26_1.shapeLayer.lineWidth = 1
        rectangle26_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l5.7,0 0,4.69 -5.7,0 0,-4.69zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.099), NSNumber(value: 0.369), NSNumber(value: 0.625), NSNumber(value: 0.799)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle26_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle271() {
        rectangle27_1 = ShapeView(frame: CGRect(x: 190.04, y: 0, width: 5.7, height: 4.69))
        rectangle27_1.backgroundColor = UIColor.clear
        rectangle27_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle27_1.transform = CGAffineTransform(rotationAngle: 0.5 * CGFloat.pi)
        rectangle27_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle27_1.layer.borderColor = UIColor.clear.cgColor
        rectangle27_1.layer.name = "rectangle27_1"
        rectangle27_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle27_1.layer.shadowOpacity = 1
        rectangle27_1.layer.position = CGPoint(x: 190.04, y: 0)
        rectangle27_1.layer.bounds = CGRect(x: 0, y: 0, width: 5.7, height: 4.69)
        rectangle27_1.layer.masksToBounds = false
        rectangle27_1.shapeLayer.name = "rectangle27_1.shapeLayer"
        rectangle27_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle27_1.shapeLayer.fillColor = nil
        rectangle27_1.shapeLayer.miterLimit = 4
        rectangle27_1.shapeLayer.lineDashPattern = []
        rectangle27_1.shapeLayer.lineDashPhase = 0
        rectangle27_1.shapeLayer.lineWidth = 1
        rectangle27_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l5.7,0 0,4.69 -5.7,0 0,-4.69zM0,0")!

        let startPoint = CGPoint(x: 0, y: 0.536)
        let endPoint = CGPoint(x: 1, y: 0.536)
        let colors = [UIColor(red: 0.821, green: 0.821, blue: 0.821, alpha: 1).cgColor, UIColor(red: 0.892, green: 0.892, blue: 0.892, alpha: 1).cgColor, UIColor(red: 0.825, green: 0.825, blue: 0.825, alpha: 1).cgColor, UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0.238), NSNumber(value: 0.417), NSNumber(value: 0.7), NSNumber(value: 0.926)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        rectangle27_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createRectangle281() {
        rectangle28_1 = ShapeView(frame: CGRect(x: 48.94, y: 489.68, width: 5.7, height: 4.69))
        rectangle28_1.backgroundColor = UIColor.clear
        rectangle28_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle28_1.transform = CGAffineTransform(rotationAngle: 0.5 * CGFloat.pi)
        rectangle28_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle28_1.layer.borderColor = UIColor.clear.cgColor
        rectangle28_1.layer.name = "rectangle28_1"
        rectangle28_1.layer.shadowColor = UIColor.clear.cgColor
        rectangle28_1.layer.shadowOpacity = 1
        rectangle28_1.layer.position = CGPoint(x: 48.94, y: 489.68)
        rectangle28_1.layer.bounds = CGRect(x: 0, y: 0, width: 5.7, height: 4.69)
        rectangle28_1.layer.masksToBounds = false
        rectangle28_1.shapeLayer.name = "rectangle28_1.shapeLayer"
        rectangle28_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle28_1.shapeLayer.fillColor = nil
        rectangle28_1.shapeLayer.miterLimit = 4
        rectangle28_1.shapeLayer.lineDashPattern = []
        rectangle28_1.shapeLayer.lineDashPhase = 0
        rectangle28_1.shapeLayer.lineWidth = 1
        rectangle28_1.shapeLayer.path = CGPathCreateWithSVGString("M0,0l5.7,0 0,4.69 -5.7,0 0,-4.69zM0,0")!

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
        subtract.addSubview(cardplantexplore)
        subtract.addSubview(mainscreenaboutsegment)
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
        txt.addSubview(setupCaresInGarden)
        set.addSubview(rectangle467)
        set.addSubview(rectangle467stroke)
        set.addSubview(set_1)
        set.addSubview(vector116stroke)
        addSubview(phone)
        addSubview(liLl)
        addSubview(txt)
        addSubview(set)
        addSubview(popupbigstepwater1)
        addSubview(grad)
    }
}
