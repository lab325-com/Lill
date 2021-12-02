// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

//@IBDesignable
public class IPhoneSe2View: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 320, height: 568)
        public static let backgroundColor = UIColor.white
    }

    public var iphone480k: ShapeView!
    public var grad: ShapeView!
    public var cataloge: UIView!
    public var photo: UIView!
    public var name: UIView!
    public var lill: UIView!
    public var explorePlants: ShapeView!
    public var liLl: UIView!
    public var text: UIView!
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
    public var group667: UIView!
    public var rectangle467: ShapeView!
    public var rectangle467stroke: ShapeView!
    public var byName: ShapeView!
    public var vector116stroke: ShapeView!
    public var group670: UIView!
    public var rectangle466: ShapeView!
    public var rectangle466stroke: ShapeView!
    public var vector116stroke_1: ShapeView!
    public var byPhoto: ShapeView!
    public var group669: UIView!
    public var group671: UIView!
    public var rectangle465: ShapeView!
    public var rectangle465stroke: ShapeView!
    public var byCatalogue: ShapeView!
    public var vector116stroke_2: ShapeView!

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
            createIphone480k()
            createGrad()
            createCataloge()
            createPhoto()
            createName()
            createLill()
            createExplorePlants()
            createLiLl()
            createText()
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
            createGroup667()
            createRectangle467()
            createRectangle467stroke()
            createByName()
            createVector116stroke()
            createGroup670()
            createRectangle466()
            createRectangle466stroke()
            createVector116stroke1()
            createByPhoto()
            createGroup669()
            createGroup671()
            createRectangle465()
            createRectangle465stroke()
            createByCatalogue()
            createVector116stroke2()
        }
    }

    private func createIphone480k() {
        iphone480k = ShapeView(frame: CGRect(x: 56, y: 541, width: 208, height: 421))
        iphone480k.backgroundColor = UIColor.clear
        iphone480k.layer.anchorPoint = CGPoint(x: 0, y: 0)
        iphone480k.layer.shadowOffset = CGSize(width: 0, height: 0)
        iphone480k.layer.borderColor = UIColor.clear.cgColor
        iphone480k.layer.name = "iphone480k"
        iphone480k.layer.shadowColor = UIColor.clear.cgColor
        iphone480k.layer.shadowOpacity = 1
        iphone480k.layer.position = CGPoint(x: 56, y: 541)
        iphone480k.layer.bounds = CGRect(x: 0, y: 0, width: 208, height: 421)
        iphone480k.layer.masksToBounds = false
        iphone480k.shapeLayer.name = "iphone480k.shapeLayer"
        iphone480k.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        let mask = CAShapeLayer()
        mask.path = CGPathCreateWithSVGString("M0,0l208,0 0,421 -208,0 0,-421zM0,0")!
        mask.fillColor = UIColor.black.cgColor
        iphone480k.shapeLayer.mask = mask
        let image = UIImage(named: "ce90603745001e15f304bfaf33f3d09971a2d951")!
         
        iphone480k.shapeLayer.contents = image.cgImage
        iphone480k.shapeLayer.fillColor = UIColor.clear.cgColor
        iphone480k.shapeLayer.masksToBounds = true
        iphone480k.shapeLayer.miterLimit = 4
        iphone480k.shapeLayer.lineDashPattern = []
        iphone480k.shapeLayer.lineDashPhase = 0
        iphone480k.shapeLayer.lineWidth = 1
        iphone480k.shapeLayer.path = CGPathCreateWithSVGString("M0,0l208,0 0,421 -208,0 0,-421zM0,0")!


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

    private func createCataloge() {
        cataloge = UIView(frame: CGRect(x: 329, y: 414, width: 125.83, height: 30))
        cataloge.backgroundColor = UIColor.clear
        cataloge.layer.anchorPoint = CGPoint(x: 0, y: 0)
        cataloge.layer.shadowOffset = CGSize(width: 0, height: 0)
        cataloge.layer.borderWidth = 1
        cataloge.layer.borderColor = UIColor.clear.cgColor
        cataloge.layer.name = "cataloge"
        cataloge.layer.shadowColor = UIColor.clear.cgColor
        cataloge.layer.shadowOpacity = 1
        cataloge.layer.position = CGPoint(x: 329, y: 414)
        cataloge.layer.bounds = CGRect(x: 0, y: 0, width: 125.83, height: 30)
        cataloge.layer.masksToBounds = false

    }

    private func createPhoto() {
        photo = UIView(frame: CGRect(x: -107, y: 238, width: 100.83, height: 30))
        photo.backgroundColor = UIColor.clear
        photo.layer.anchorPoint = CGPoint(x: 0, y: 0)
        photo.layer.shadowOffset = CGSize(width: 0, height: 0)
        photo.layer.borderWidth = 1
        photo.layer.borderColor = UIColor.clear.cgColor
        photo.layer.name = "photo"
        photo.layer.shadowColor = UIColor.clear.cgColor
        photo.layer.shadowOpacity = 1
        photo.layer.position = CGPoint(x: -107, y: 238)
        photo.layer.bounds = CGRect(x: 0, y: 0, width: 100.83, height: 30)
        photo.layer.masksToBounds = false

    }

    private func createName() {
        name = UIView(frame: CGRect(x: 330, y: 160, width: 95.83, height: 30))
        name.backgroundColor = UIColor.clear
        name.layer.anchorPoint = CGPoint(x: 0, y: 0)
        name.layer.shadowOffset = CGSize(width: 0, height: 0)
        name.layer.borderWidth = 1
        name.layer.borderColor = UIColor.clear.cgColor
        name.layer.name = "name"
        name.layer.shadowColor = UIColor.clear.cgColor
        name.layer.shadowOpacity = 1
        name.layer.position = CGPoint(x: 330, y: 160)
        name.layer.bounds = CGRect(x: 0, y: 0, width: 95.83, height: 30)
        name.layer.masksToBounds = false

    }

    private func createLill() {
        lill = UIView(frame: CGRect(x: 14, y: 32, width: 290, height: 90.42))
        lill.backgroundColor = UIColor.clear
        lill.layer.anchorPoint = CGPoint(x: 0, y: 0)
        lill.layer.shadowOffset = CGSize(width: 0, height: 0)
        lill.layer.borderWidth = 1
        lill.layer.borderColor = UIColor.clear.cgColor
        lill.layer.name = "lill"
        lill.layer.shadowColor = UIColor.clear.cgColor
        lill.layer.shadowOpacity = 1
        lill.layer.position = CGPoint(x: 14, y: 32)
        lill.layer.bounds = CGRect(x: 0, y: 0, width: 290, height: 90.42)
        lill.layer.masksToBounds = false

    }

    private func createExplorePlants() {
        explorePlants = ShapeView(frame: CGRect(x: 158, y: 74.49, width: 96, height: 13))
        explorePlants.backgroundColor = UIColor.clear
        explorePlants.layer.anchorPoint = CGPoint(x: 0, y: 0)
        explorePlants.layer.shadowOffset = CGSize(width: 0, height: 0)
        explorePlants.layer.borderColor = UIColor.clear.cgColor
        explorePlants.layer.name = "explorePlants"
        explorePlants.layer.shadowColor = UIColor.clear.cgColor
        explorePlants.layer.shadowOpacity = 1
        explorePlants.layer.position = CGPoint(x: 158, y: 74.49)
        explorePlants.layer.bounds = CGRect(x: 0, y: 0, width: 96, height: 13)
        explorePlants.layer.masksToBounds = false
        explorePlants.shapeLayer.name = "explorePlants.shapeLayer"
        explorePlants.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        explorePlants.shapeLayer.fillColor = UIColor.white.cgColor
        explorePlants.shapeLayer.miterLimit = 4
        explorePlants.shapeLayer.lineDashPattern = []
        explorePlants.shapeLayer.lineDashPhase = 0
        explorePlants.shapeLayer.lineWidth = 1
        explorePlants.shapeLayer.path = CGPathCreateWithSVGString("M0,10.462l7.157,0 0,-1.399 -5.407,0 0,-3.248 5.118,0 0,-1.363 -5.118,0 0,-3.052 5.407,0 0,-1.399 -7.157,0 0,10.462 0,0zM8.134,10.462l1.828,0 1.821,-2.806 0.039,0 1.821,2.806 1.86,0 -2.672,-3.857 2.704,-3.77 -1.868,0 -1.766,2.762 -0.039,0 -1.789,-2.762 -1.899,0 2.68,3.821 -2.719,3.807 0,0zM16.597,13l1.688,0 0,-3.821 0.039,0c0.484,0.885,1.43,1.436,2.594,1.436 2.063,0,3.415,-1.53,3.415,-3.959l0,-0.007c0,-2.436,-1.344,-3.959,-3.438,-3.959 -1.172,0,-2.078,0.551,-2.571,1.457l-0.039,0 0,-1.312 -1.688,0 0,10.165 0,0zM20.456,9.266c-1.274,0,-2.18,-1.03,-2.18,-2.61l0,-0.007c0,-1.588,0.899,-2.617,2.18,-2.617 1.321,0,2.157,0.993,2.157,2.617l0,0.007c0,1.61,-0.828,2.61,-2.157,2.61l0,0zM25.707,10.462l1.688,0 0,-10.462 -1.688,0 0,10.462 0,0zM32.662,10.615c2.352,0,3.899,-1.508,3.899,-3.966l0,-0.015c0,-2.443,-1.563,-3.944,-3.907,-3.944 -2.336,0,-3.891,1.508,-3.891,3.944l0,0.015c0,2.451,1.539,3.966,3.899,3.966l0,0zM32.669,9.302c-1.321,0,-2.18,-0.964,-2.18,-2.654l0,-0.015c0,-1.668,0.867,-2.632,2.164,-2.632 1.321,0,2.18,0.964,2.18,2.632l0,0.015c0,1.682,-0.844,2.654,-2.164,2.654l0,0zM37.865,10.462l1.688,0 0,-4.546c0,-1.138,0.672,-1.798,1.758,-1.798 0.328,0,0.625,0.036,0.758,0.087l0,-1.457c-0.133,-0.022,-0.344,-0.058,-0.586,-0.058 -0.938,0,-1.625,0.558,-1.891,1.45l-0.039,0 0,-1.305 -1.688,0 0,7.627 0,0zM46.265,10.615c1.993,0,3.258,-1.102,3.524,-2.313l0.016,-0.08 -1.602,0 -0.024,0.058c-0.211,0.573,-0.875,1.051,-1.875,1.051 -1.344,0,-2.196,-0.841,-2.227,-2.284l5.821,0 0,-0.529c0,-2.291,-1.414,-3.828,-3.719,-3.828 -2.305,0,-3.79,1.595,-3.79,3.98l0,0.007c0,2.407,1.461,3.937,3.876,3.937l0,0zM46.187,3.973c1.102,0,1.899,0.645,2.039,1.965l-4.126,0c0.148,-1.276,0.992,-1.965,2.086,-1.965l0,0zM54.665,10.462l1.75,0 0,-3.575 2.446,0c2.211,0,3.743,-1.399,3.743,-3.444l0,-0.014c0,-2.052,-1.532,-3.429,-3.743,-3.429l-4.196,0 0,10.462 0,0zM58.424,1.37c1.524,0,2.399,0.761,2.399,2.066l0,0.014c0,1.312,-0.875,2.074,-2.399,2.074l-2.008,0 0,-4.154 2.008,0 0,0zM63.995,10.462l1.688,0 0,-10.462 -1.688,0 0,10.462 0,0zM69.832,10.6c1.086,0,2.039,-0.522,2.516,-1.341l0.031,0 0,1.204 1.696,0 0,-5.257c0,-1.53,-1.274,-2.516,-3.282,-2.516 -2.024,0,-3.251,1.008,-3.368,2.32l-0.008,0.08 1.594,0 0.016,-0.065c0.141,-0.609,0.742,-1.037,1.719,-1.037 1.047,0,1.633,0.508,1.633,1.349l0,0.573 -2.235,0.123c-1.946,0.109,-3.055,0.921,-3.055,2.248l0,0.014c0,1.37,1.102,2.306,2.743,2.306l0,0zM68.792,8.258l0,-0.014c0,-0.645,0.563,-1.059,1.578,-1.117l2.008,-0.116 0,0.595c0,0.993,-0.899,1.74,-2.086,1.74 -0.906,0,-1.5,-0.421,-1.5,-1.088l0,0zM75.715,10.462l1.688,0 0,-4.445c0,-1.189,0.766,-1.987,1.954,-1.987 1.172,0,1.75,0.645,1.75,1.791l0,4.64 1.696,0 0,-4.938c0,-1.755,-1.039,-2.835,-2.844,-2.835 -1.242,0,-2.086,0.522,-2.516,1.298l-0.039,0 0,-1.153 -1.688,0 0,7.627 0,0zM87.319,10.615c0.344,0,0.664,-0.036,0.86,-0.065l0,-1.211c-0.125,0.015,-0.274,0.029,-0.453,0.029 -0.711,0,-1.086,-0.232,-1.086,-1.008l0,-4.278 1.539,0 0,-1.247 -1.539,0 0,-1.987 -1.727,0 0,1.987 -1.18,0 0,1.247 1.18,0 0,4.372c0,1.523,0.781,2.161,2.407,2.161l0,0zM92.656,10.615c1.938,0,3.344,-0.957,3.344,-2.349l0,-0.007c0,-1.095,-0.641,-1.711,-2.321,-2.074l-1.336,-0.283c-0.883,-0.196,-1.219,-0.515,-1.219,-0.986l0,-0.007c0,-0.609,0.57,-1.008,1.477,-1.008 0.953,0,1.516,0.464,1.618,1.131l0.008,0.051 1.586,0 -0.008,-0.087c-0.086,-1.298,-1.258,-2.306,-3.204,-2.306 -1.891,0,-3.172,0.935,-3.172,2.298l0,0.007c0,1.109,0.774,1.805,2.336,2.139l1.344,0.283c0.883,0.196,1.18,0.479,1.18,0.972l0,0.007c0,0.616,-0.61,1.008,-1.625,1.008 -1.039,0,-1.602,-0.413,-1.758,-1.117l-0.016,-0.073 -1.672,0 0.008,0.065c0.172,1.392,1.375,2.335,3.43,2.335l0,0zM92.656,10.615")!


    }

    private func createLiLl() {
        liLl = UIView(frame: CGRect(x: 0, y: 0, width: 106.24, height: 90.42))
        liLl.backgroundColor = UIColor.clear
        liLl.layer.anchorPoint = CGPoint(x: 0, y: 0)
        liLl.layer.shadowOffset = CGSize(width: 0, height: 0)
        liLl.layer.borderWidth = 1
        liLl.layer.borderColor = UIColor.clear.cgColor
        liLl.layer.name = "liLl"
        liLl.layer.shadowColor = UIColor.clear.cgColor
        liLl.layer.shadowOpacity = 1
        liLl.layer.position = CGPoint(x: 0, y: 0)
        liLl.layer.bounds = CGRect(x: 0, y: 0, width: 106.24, height: 90.42)
        liLl.layer.masksToBounds = false

    }

    private func createText() {
        text = UIView(frame: CGRect(x: 78.56, y: 19.22, width: 211.44, height: 56.83))
        text.backgroundColor = UIColor.clear
        text.layer.anchorPoint = CGPoint(x: 0, y: 0)
        text.layer.shadowOffset = CGSize(width: 0, height: 6)
        text.layer.shadowRadius = 12
        text.layer.borderWidth = 1
        text.layer.borderColor = UIColor.clear.cgColor
        text.layer.name = "text"
        text.layer.shadowColor = UIColor(red: 0.976, green: 0.38, blue: 0.38, alpha: 0.4).cgColor
        text.layer.shadowOpacity = 1
        text.layer.position = CGPoint(x: 78.56, y: 19.22)
        text.layer.bounds = CGRect(x: 0, y: 0, width: 211.44, height: 56.83)
        text.layer.masksToBounds = false

    }

    private func createRectangle389() {
        rectangle389 = ShapeView(frame: CGRect(x: 211.44, y: 56.83, width: 193.89, height: 56.83))
        rectangle389.backgroundColor = UIColor.clear
        rectangle389.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle389.transform = CGAffineTransform(rotationAngle: 1 * CGFloat.pi)
        rectangle389.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle389.layer.borderColor = UIColor.clear.cgColor
        rectangle389.layer.name = "rectangle389"
        rectangle389.layer.shadowColor = UIColor.clear.cgColor
        rectangle389.layer.shadowOpacity = 1
        rectangle389.layer.position = CGPoint(x: 211.44, y: 56.83)
        rectangle389.layer.bounds = CGRect(x: 0, y: 0, width: 193.89, height: 56.83)
        rectangle389.layer.masksToBounds = false
        rectangle389.shapeLayer.name = "rectangle389.shapeLayer"
        rectangle389.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle389.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle389.shapeLayer.miterLimit = 4
        rectangle389.shapeLayer.lineDashPattern = []
        rectangle389.shapeLayer.lineDashPhase = 0
        rectangle389.shapeLayer.lineWidth = 1
        rectangle389.shapeLayer.path = CGPathCreateWithSVGString("M0,20.058c0,-11.078,8.98,-20.058,20.058,-20.058l153.775,0c11.077,0,20.057,8.98,20.057,20.058l0,16.715c0,11.078,-8.98,20.058,-20.057,20.058l-153.775,0c-11.077,0,-20.058,-8.98,-20.058,-20.058l0,-16.715 0,0zM0,20.058")!


    }

    private func createVector99() {
        vector9 = ShapeView(frame: CGRect(x: 0, y: 34.27, width: 37.44, height: 22.56))
        vector9.backgroundColor = UIColor.clear
        vector9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector9.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector9.layer.borderColor = UIColor.clear.cgColor
        vector9.layer.name = "vector9"
        vector9.layer.shadowColor = UIColor.clear.cgColor
        vector9.layer.shadowOpacity = 1
        vector9.layer.position = CGPoint(x: 0, y: 34.27)
        vector9.layer.bounds = CGRect(x: 0, y: 0, width: 37.44, height: 22.56)
        vector9.layer.masksToBounds = false
        vector9.shapeLayer.name = "vector9.shapeLayer"
        vector9.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector9.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        vector9.shapeLayer.miterLimit = 4
        vector9.shapeLayer.lineDashPattern = []
        vector9.shapeLayer.lineDashPhase = 0
        vector9.shapeLayer.lineWidth = 1
        vector9.shapeLayer.path = CGPathCreateWithSVGString("M0,22.56l33.498,-22.56 3.942,22.56 -37.44,0 0,0zM0,22.56")!


    }

    private func createGroup554() {
        group554 = UIView(frame: CGRect(x: 0, y: 0, width: 106.24, height: 90.42))
        group554.backgroundColor = UIColor.clear
        group554.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group554.layer.shadowOffset = CGSize(width: 0, height: 0)
        group554.layer.borderWidth = 1
        group554.layer.borderColor = UIColor.clear.cgColor
        group554.layer.name = "group554"
        group554.layer.shadowColor = UIColor.clear.cgColor
        group554.layer.shadowOpacity = 1
        group554.layer.position = CGPoint(x: 0, y: 0)
        group554.layer.bounds = CGRect(x: 0, y: 0, width: 106.24, height: 90.42)
        group554.layer.masksToBounds = false

    }

    private func createGroup564() {
        group564 = UIView(frame: CGRect(x: 0, y: 0, width: 106.24, height: 90.42))
        group564.backgroundColor = UIColor.clear
        group564.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group564.layer.shadowOffset = CGSize(width: 0, height: 0)
        group564.layer.borderWidth = 1
        group564.layer.borderColor = UIColor.clear.cgColor
        group564.layer.name = "group564"
        group564.layer.shadowColor = UIColor.clear.cgColor
        group564.layer.shadowOpacity = 1
        group564.layer.position = CGPoint(x: 0, y: 0)
        group564.layer.bounds = CGRect(x: 0, y: 0, width: 106.24, height: 90.42)
        group564.layer.masksToBounds = false

    }

    private func createVector() {
        vector = ShapeView(frame: CGRect(x: 8.59, y: 40.69, width: 81.83, height: 49.73))
        vector.backgroundColor = UIColor.clear
        vector.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector.layer.borderColor = UIColor.clear.cgColor
        vector.layer.name = "vector"
        vector.layer.shadowColor = UIColor.clear.cgColor
        vector.layer.shadowOpacity = 1
        vector.layer.position = CGPoint(x: 8.59, y: 40.69)
        vector.layer.bounds = CGRect(x: 0, y: 0, width: 81.83, height: 49.73)
        vector.layer.masksToBounds = false
        vector.shapeLayer.name = "vector.shapeLayer"
        vector.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector.shapeLayer.fillColor = nil
        vector.shapeLayer.miterLimit = 4
        vector.shapeLayer.lineDashPattern = []
        vector.shapeLayer.lineDashPhase = 0
        vector.shapeLayer.lineWidth = 1
        vector.shapeLayer.path = CGPathCreateWithSVGString("M41.747,49.73c8.84,0,27.563,-0.51,31.34,-11.665 3.777,-11.155,7.812,-30.296,8.743,-38.065 -10.225,3.735,-18.317,5.026,-40.915,5.026 -22.598,0,-29.032,-1.033,-40.915,-5.026 1.336,10.024,4.784,26.052,8.743,37.695 3.959,11.644,24.157,12.035,33.005,12.035l0,0zM41.747,49.73")!

        let startPoint = CGPoint(x: 0.508, y: 0.498)
        let endPoint = CGPoint(x: 1.24699, y: 2.00308)
        let colors = [UIColor(red: 1, green: 0.725, blue: 0.561, alpha: 1).cgColor, UIColor(red: 0.996, green: 0.804, blue: 0.647, alpha: 1).cgColor, UIColor(red: 0.992, green: 0.867, blue: 0.714, alpha: 1).cgColor, UIColor(red: 0.988, green: 0.914, blue: 0.765, alpha: 1).cgColor, UIColor(red: 0.988, green: 0.937, blue: 0.792, alpha: 1).cgColor, UIColor(red: 0.988, green: 0.945, blue: 0.8, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.1), NSNumber(value: 0.21), NSNumber(value: 0.36), NSNumber(value: 0.55), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector1() {
        vector_1 = ShapeView(frame: CGRect(x: 9.49, y: 39.33, width: 79.57, height: 19.89))
        vector_1.backgroundColor = UIColor.clear
        vector_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_1.layer.borderColor = UIColor.clear.cgColor
        vector_1.layer.name = "vector_1"
        vector_1.layer.shadowColor = UIColor.clear.cgColor
        vector_1.layer.shadowOpacity = 1
        vector_1.layer.position = CGPoint(x: 9.49, y: 39.33)
        vector_1.layer.bounds = CGRect(x: 0, y: 0, width: 79.57, height: 19.89)
        vector_1.layer.masksToBounds = false
        vector_1.shapeLayer.name = "vector_1.shapeLayer"
        vector_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_1.shapeLayer.fillColor = nil
        vector_1.shapeLayer.miterLimit = 4
        vector_1.shapeLayer.lineDashPattern = []
        vector_1.shapeLayer.lineDashPhase = 0
        vector_1.shapeLayer.lineWidth = 1
        vector_1.shapeLayer.path = CGPathCreateWithSVGString("M37.617,19.873c-17.138,-0.078,-30.842,-2.491,-36.66,-5.914 0,0,-0.517,-2.703,-0.762,-4.101 -0.154,-0.868,-0.531,-1.948,0.503,-2.703 6.006,-4.404,23.333,-5.752,43.652,-5.646 0.958,0,23.312,-3.529,29.744,0.205 2.363,1.369,4.349,2.513,5.258,4.439 0.559,1.186,-0.14,3.896,-0.14,3.896l-0.916,4.651c-8.118,3.176,-22.927,5.272,-40.68,5.187l0,-0.014 0,0zM37.617,19.873")!

        let startPoint = CGPoint(x: 0.506, y: 0.528)
        let endPoint = CGPoint(x: 0.934498, y: 1.00946)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.77).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.5).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.28).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.13).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.03).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.18), NSNumber(value: 0.4), NSNumber(value: 0.6), NSNumber(value: 0.78), NSNumber(value: 0.92), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector2() {
        vector_2 = ShapeView(frame: CGRect(x: 6.33, y: 35.72, width: 85.45, height: 17.63))
        vector_2.backgroundColor = UIColor.clear
        vector_2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_2.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_2.layer.borderColor = UIColor.clear.cgColor
        vector_2.layer.name = "vector_2"
        vector_2.layer.shadowColor = UIColor.clear.cgColor
        vector_2.layer.shadowOpacity = 1
        vector_2.layer.position = CGPoint(x: 6.33, y: 35.72)
        vector_2.layer.bounds = CGRect(x: 0, y: 0, width: 85.45, height: 17.63)
        vector_2.layer.masksToBounds = false
        vector_2.shapeLayer.name = "vector_2.shapeLayer"
        vector_2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_2.shapeLayer.fillColor = UIColor(red: 0.988, green: 0.945, blue: 0.8, alpha: 1).cgColor
        vector_2.shapeLayer.miterLimit = 4
        vector_2.shapeLayer.lineDashPattern = []
        vector_2.shapeLayer.lineDashPhase = 0
        vector_2.shapeLayer.lineWidth = 1
        vector_2.shapeLayer.path = CGPathCreateWithSVGString("M0,0.071l1.62,11.965c0,0,10.444,5.594,42.739,5.594 29.068,0,39.688,-5.501,39.688,-5.501l1.403,-12.129c-13.964,2.811,-28.161,4.244,-42.395,4.281 -34.224,-0.228,-43.055,-4.21,-43.055,-4.21l0,0zM0,0.071")!


    }

    private func createVector3() {
        vector_3 = ShapeView(frame: CGRect(x: 6.33, y: 31.19, width: 85.45, height: 9.04))
        vector_3.backgroundColor = UIColor.clear
        vector_3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_3.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_3.layer.borderColor = UIColor.clear.cgColor
        vector_3.layer.name = "vector_3"
        vector_3.layer.shadowColor = UIColor.clear.cgColor
        vector_3.layer.shadowOpacity = 1
        vector_3.layer.position = CGPoint(x: 6.33, y: 31.19)
        vector_3.layer.bounds = CGRect(x: 0, y: 0, width: 85.45, height: 9.04)
        vector_3.layer.masksToBounds = false
        vector_3.shapeLayer.name = "vector_3.shapeLayer"
        vector_3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_3.shapeLayer.fillColor = UIColor(red: 1, green: 0.973, blue: 0.91, alpha: 1).cgColor
        vector_3.shapeLayer.miterLimit = 4
        vector_3.shapeLayer.lineDashPattern = []
        vector_3.shapeLayer.lineDashPhase = 0
        vector_3.shapeLayer.lineWidth = 1
        vector_3.shapeLayer.path = CGPathCreateWithSVGString("M42.725,9.04c23.596,0,42.725,-2.024,42.725,-4.52 0,-2.496,-19.129,-4.52,-42.725,-4.52 -23.596,0,-42.725,2.024,-42.725,4.52 0,2.496,19.129,4.52,42.725,4.52l0,0zM42.725,9.04")!


    }

    private func createVector4() {
        vector_4 = ShapeView(frame: CGRect(x: 6.33, y: 31.19, width: 85.45, height: 9.04))
        vector_4.backgroundColor = UIColor.clear
        vector_4.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_4.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_4.layer.borderColor = UIColor.clear.cgColor
        vector_4.layer.name = "vector_4"
        vector_4.layer.shadowColor = UIColor.clear.cgColor
        vector_4.layer.shadowOpacity = 1
        vector_4.layer.position = CGPoint(x: 6.33, y: 31.19)
        vector_4.layer.bounds = CGRect(x: 0, y: 0, width: 85.45, height: 9.04)
        vector_4.layer.masksToBounds = false
        vector_4.shapeLayer.name = "vector_4.shapeLayer"
        vector_4.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_4.shapeLayer.fillColor = nil
        vector_4.shapeLayer.miterLimit = 4
        vector_4.shapeLayer.lineDashPattern = []
        vector_4.shapeLayer.lineDashPhase = 0
        vector_4.shapeLayer.lineWidth = 1
        vector_4.shapeLayer.path = CGPathCreateWithSVGString("M42.725,9.04c23.596,0,42.725,-2.024,42.725,-4.52 0,-2.496,-19.129,-4.52,-42.725,-4.52 -23.596,0,-42.725,2.024,-42.725,4.52 0,2.496,19.129,4.52,42.725,4.52l0,0zM42.725,9.04")!

        let startPoint = CGPoint(x: 0.501, y: 0.502)
        let endPoint = CGPoint(x: 1.28818, y: 1.0066)
        let colors = [UIColor(red: 1, green: 0.655, blue: 0.541, alpha: 1).cgColor, UIColor(red: 1, green: 0.659, blue: 0.545, alpha: 0.98).cgColor, UIColor(red: 1, green: 0.675, blue: 0.557, alpha: 0.94).cgColor, UIColor(red: 1, green: 0.694, blue: 0.576, alpha: 0.86).cgColor, UIColor(red: 0.996, green: 0.725, blue: 0.608, alpha: 0.75).cgColor, UIColor(red: 0.996, green: 0.769, blue: 0.643, alpha: 0.61).cgColor, UIColor(red: 0.992, green: 0.816, blue: 0.686, alpha: 0.44).cgColor, UIColor(red: 0.992, green: 0.875, blue: 0.741, alpha: 0.24).cgColor, UIColor(red: 0.988, green: 0.941, blue: 0.8, alpha: 0.01).cgColor, UIColor(red: 0.988, green: 0.945, blue: 0.804, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.13), NSNumber(value: 0.25), NSNumber(value: 0.38), NSNumber(value: 0.5), NSNumber(value: 0.63), NSNumber(value: 0.75), NSNumber(value: 0.87), NSNumber(value: 0.99), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_4.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector5() {
        vector_5 = ShapeView(frame: CGRect(x: 13.11, y: 58.32, width: 32.55, height: 27.58))
        vector_5.backgroundColor = UIColor.clear
        vector_5.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_5.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_5.layer.borderColor = UIColor.clear.cgColor
        vector_5.layer.name = "vector_5"
        vector_5.layer.shadowColor = UIColor.clear.cgColor
        vector_5.layer.shadowOpacity = 1
        vector_5.layer.position = CGPoint(x: 13.11, y: 58.32)
        vector_5.layer.bounds = CGRect(x: 0, y: 0, width: 32.55, height: 27.58)
        vector_5.layer.masksToBounds = false
        vector_5.shapeLayer.name = "vector_5.shapeLayer"
        vector_5.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_5.shapeLayer.fillColor = nil
        vector_5.shapeLayer.miterLimit = 4
        vector_5.shapeLayer.lineDashPattern = []
        vector_5.shapeLayer.lineDashPhase = 0
        vector_5.shapeLayer.lineWidth = 1
        vector_5.shapeLayer.path = CGPathCreateWithSVGString("M32.318,16.553c-1.512,-7.47,-10.097,-14.751,-19.148,-16.266 -6.832,-1.142,-11.687,1.198,-13.17,5.68l2.459,9.162c1.042,2.032,2.447,3.857,4.148,5.384 8.479,7.555,14.52,7.048,14.52,7.048 7.666,0.352,12.57,-4.243,11.192,-11.008l0,0zM32.318,16.553")!

        let startPoint = CGPoint(x: 0.499, y: 0.498)
        let endPoint = CGPoint(x: 0.801602, y: 1.05941)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.76).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.53).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.34).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.19).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.09).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.02).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.16), NSNumber(value: 0.32), NSNumber(value: 0.49), NSNumber(value: 0.64), NSNumber(value: 0.78), NSNumber(value: 0.9), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_5.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector6() {
        vector_6 = ShapeView(frame: CGRect(x: 53.35, y: 58.32, width: 32.1, height: 27.58))
        vector_6.backgroundColor = UIColor.clear
        vector_6.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_6.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_6.layer.borderColor = UIColor.clear.cgColor
        vector_6.layer.name = "vector_6"
        vector_6.layer.shadowColor = UIColor.clear.cgColor
        vector_6.layer.shadowOpacity = 1
        vector_6.layer.position = CGPoint(x: 53.35, y: 58.32)
        vector_6.layer.bounds = CGRect(x: 0, y: 0, width: 32.1, height: 27.58)
        vector_6.layer.masksToBounds = false
        vector_6.shapeLayer.name = "vector_6.shapeLayer"
        vector_6.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_6.shapeLayer.fillColor = nil
        vector_6.shapeLayer.miterLimit = 4
        vector_6.shapeLayer.lineDashPattern = []
        vector_6.shapeLayer.lineDashPhase = 0
        vector_6.shapeLayer.lineWidth = 1
        vector_6.shapeLayer.path = CGPathCreateWithSVGString("M0.229,16.553c1.484,-7.47,9.95,-14.751,18.883,-16.266 6.738,-1.142,11.525,1.198,12.988,5.68l-2.425,9.162c-1.027,2.032,-2.414,3.857,-4.09,5.384 -8.361,7.555,-14.319,7.048,-14.319,7.048 -7.567,0.352,-12.396,-4.243,-11.037,-11.008l0,0zM0.229,16.553")!

        let startPoint = CGPoint(x: -262.749, y: 201.481)
        let endPoint = CGPoint(x: -250.91, y: 227.33)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.76).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.53).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.34).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.19).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.09).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.02).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.16), NSNumber(value: 0.32), NSNumber(value: 0.49), NSNumber(value: 0.64), NSNumber(value: 0.78), NSNumber(value: 0.9), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_6.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector7() {
        vector_7 = ShapeView(frame: CGRect(x: 22.15, y: 69.62, width: 12.66, height: 4.52))
        vector_7.backgroundColor = UIColor.clear
        vector_7.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_7.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_7.layer.borderColor = UIColor.clear.cgColor
        vector_7.layer.name = "vector_7"
        vector_7.layer.shadowColor = UIColor.clear.cgColor
        vector_7.layer.shadowOpacity = 1
        vector_7.layer.position = CGPoint(x: 22.15, y: 69.62)
        vector_7.layer.bounds = CGRect(x: 0, y: 0, width: 12.66, height: 4.52)
        vector_7.layer.masksToBounds = false
        vector_7.shapeLayer.name = "vector_7.shapeLayer"
        vector_7.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_7.shapeLayer.fillColor = nil
        vector_7.shapeLayer.miterLimit = 4
        vector_7.shapeLayer.lineDashPattern = []
        vector_7.shapeLayer.lineDashPhase = 0
        vector_7.shapeLayer.lineWidth = 1
        vector_7.shapeLayer.path = CGPathCreateWithSVGString("M7.003,0.493c3.476,0.779,5.99,2.209,5.621,3.182 -0.369,0.972,-3.497,1.13,-6.966,0.35 -3.469,-0.779,-5.996,-2.202,-5.621,-3.174 0.376,-0.972,3.49,-1.137,6.966,-0.357l0,0zM7.003,0.493")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1.59364, y: 0.873)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_7.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector8() {
        vector_8 = ShapeView(frame: CGRect(x: 59.22, y: 66.46, width: 22.15, height: 10.4))
        vector_8.backgroundColor = UIColor.clear
        vector_8.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_8.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_8.layer.borderColor = UIColor.clear.cgColor
        vector_8.layer.name = "vector_8"
        vector_8.layer.shadowColor = UIColor.clear.cgColor
        vector_8.layer.shadowOpacity = 1
        vector_8.layer.position = CGPoint(x: 59.22, y: 66.46)
        vector_8.layer.bounds = CGRect(x: 0, y: 0, width: 22.15, height: 10.4)
        vector_8.layer.masksToBounds = false
        vector_8.shapeLayer.name = "vector_8.shapeLayer"
        vector_8.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_8.shapeLayer.fillColor = nil
        vector_8.shapeLayer.miterLimit = 4
        vector_8.shapeLayer.lineDashPattern = []
        vector_8.shapeLayer.lineDashPhase = 0
        vector_8.shapeLayer.lineWidth = 1
        vector_8.shapeLayer.path = CGPathCreateWithSVGString("M9.894,1.142c-6.072,1.793,-10.48,5.065,-9.831,7.307 0.65,2.242,6.114,2.606,12.192,0.813 6.079,-1.793,10.48,-5.065,9.831,-7.307 -0.65,-2.242,-6.114,-2.613,-12.192,-0.813l0,0zM9.894,1.142")!

        let startPoint = CGPoint(x: 0.479, y: 0.477)
        let endPoint = CGPoint(x: 0.892476, y: 1.07624)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.78).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.5).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.29).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.13).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.04).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.17), NSNumber(value: 0.4), NSNumber(value: 0.6), NSNumber(value: 0.78), NSNumber(value: 0.92), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_8.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector9() {
        vector_9 = ShapeView(frame: CGRect(x: 17.63, y: 66.46, width: 22.15, height: 10.4))
        vector_9.backgroundColor = UIColor.clear
        vector_9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_9.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_9.layer.borderColor = UIColor.clear.cgColor
        vector_9.layer.name = "vector_9"
        vector_9.layer.shadowColor = UIColor.clear.cgColor
        vector_9.layer.shadowOpacity = 1
        vector_9.layer.position = CGPoint(x: 17.63, y: 66.46)
        vector_9.layer.bounds = CGRect(x: 0, y: 0, width: 22.15, height: 10.4)
        vector_9.layer.masksToBounds = false
        vector_9.shapeLayer.name = "vector_9.shapeLayer"
        vector_9.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_9.shapeLayer.fillColor = nil
        vector_9.shapeLayer.miterLimit = 4
        vector_9.shapeLayer.lineDashPattern = []
        vector_9.shapeLayer.lineDashPhase = 0
        vector_9.shapeLayer.lineWidth = 1
        vector_9.shapeLayer.path = CGPathCreateWithSVGString("M12.253,1.142c6.08,1.793,10.483,5.065,9.833,7.307 -0.65,2.242,-6.108,2.606,-12.195,0.813 -6.087,-1.793,-10.483,-5.065,-9.826,-7.307 0.657,-2.242,6.108,-2.613,12.188,-0.813l0,0zM12.253,1.142")!

        let startPoint = CGPoint(x: 0.522, y: 0.493)
        let endPoint = CGPoint(x: 0.935106, y: 1.09257)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.73).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.47).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.27).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.12).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.03).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.21), NSNumber(value: 0.42), NSNumber(value: 0.61), NSNumber(value: 0.78), NSNumber(value: 0.91), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_9.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector10() {
        vector_10 = ShapeView(frame: CGRect(x: 26.22, y: 62.39, width: 8.59, height: 10.4))
        vector_10.backgroundColor = UIColor.clear
        vector_10.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_10.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_10.layer.borderColor = UIColor.clear.cgColor
        vector_10.layer.name = "vector_10"
        vector_10.layer.shadowColor = UIColor.clear.cgColor
        vector_10.layer.shadowOpacity = 1
        vector_10.layer.position = CGPoint(x: 26.22, y: 62.39)
        vector_10.layer.bounds = CGRect(x: 0, y: 0, width: 8.59, height: 10.4)
        vector_10.layer.masksToBounds = false
        vector_10.shapeLayer.name = "vector_10.shapeLayer"
        vector_10.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_10.shapeLayer.fillColor = UIColor(red: 0, green: 0.149, blue: 0.247, alpha: 1).cgColor
        vector_10.shapeLayer.miterLimit = 4
        vector_10.shapeLayer.lineDashPattern = []
        vector_10.shapeLayer.lineDashPhase = 0
        vector_10.shapeLayer.lineWidth = 1
        vector_10.shapeLayer.path = CGPathCreateWithSVGString("M4.295,10.4c2.372,0,4.295,-2.328,4.295,-5.2 0,-2.872,-1.923,-5.2,-4.295,-5.2 -2.372,0,-4.295,2.328,-4.295,5.2 0,2.872,1.923,5.2,4.295,5.2l0,0zM4.295,10.4")!


    }

    private func createVector11() {
        vector_11 = ShapeView(frame: CGRect(x: 64.2, y: 62.39, width: 8.59, height: 10.4))
        vector_11.backgroundColor = UIColor.clear
        vector_11.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_11.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_11.layer.borderColor = UIColor.clear.cgColor
        vector_11.layer.name = "vector_11"
        vector_11.layer.shadowColor = UIColor.clear.cgColor
        vector_11.layer.shadowOpacity = 1
        vector_11.layer.position = CGPoint(x: 64.2, y: 62.39)
        vector_11.layer.bounds = CGRect(x: 0, y: 0, width: 8.59, height: 10.4)
        vector_11.layer.masksToBounds = false
        vector_11.shapeLayer.name = "vector_11.shapeLayer"
        vector_11.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_11.shapeLayer.fillColor = UIColor(red: 0, green: 0.149, blue: 0.247, alpha: 1).cgColor
        vector_11.shapeLayer.miterLimit = 4
        vector_11.shapeLayer.lineDashPattern = []
        vector_11.shapeLayer.lineDashPhase = 0
        vector_11.shapeLayer.lineWidth = 1
        vector_11.shapeLayer.path = CGPathCreateWithSVGString("M4.295,10.4c2.372,0,4.295,-2.328,4.295,-5.2 0,-2.872,-1.923,-5.2,-4.295,-5.2 -2.372,0,-4.295,2.328,-4.295,5.2 0,2.872,1.923,5.2,4.295,5.2l0,0zM4.295,10.4")!


    }

    private func createVector12() {
        vector_12 = ShapeView(frame: CGRect(x: 70.53, y: 68.72, width: 1.36, height: 1.36))
        vector_12.backgroundColor = UIColor.clear
        vector_12.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_12.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_12.layer.borderColor = UIColor.clear.cgColor
        vector_12.layer.name = "vector_12"
        vector_12.layer.shadowColor = UIColor.clear.cgColor
        vector_12.layer.shadowOpacity = 1
        vector_12.layer.position = CGPoint(x: 70.53, y: 68.72)
        vector_12.layer.bounds = CGRect(x: 0, y: 0, width: 1.36, height: 1.36)
        vector_12.layer.masksToBounds = false
        vector_12.shapeLayer.name = "vector_12.shapeLayer"
        vector_12.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_12.shapeLayer.fillColor = UIColor.white.cgColor
        vector_12.shapeLayer.miterLimit = 4
        vector_12.shapeLayer.lineDashPattern = []
        vector_12.shapeLayer.lineDashPhase = 0
        vector_12.shapeLayer.lineWidth = 1
        vector_12.shapeLayer.path = CGPathCreateWithSVGString("M0.935,0.05c0.165,0.067,0.296,0.195,0.368,0.358 0.071,0.163,0.076,0.347,0.013,0.513 -0.048,0.126,-0.132,0.236,-0.242,0.314 -0.11,0.078,-0.241,0.122,-0.376,0.125 -0.135,0.003,-0.268,-0.033,-0.382,-0.106 -0.114,-0.073,-0.204,-0.177,-0.258,-0.301 -0.054,-0.124,-0.07,-0.261,-0.046,-0.394 0.024,-0.133,0.087,-0.256,0.182,-0.353 0.094,-0.097,0.215,-0.163,0.348,-0.191 0.132,-0.028,0.27,-0.016,0.395,0.035l0,0zM0.935,0.05")!


    }

    private func createVectorstroke() {
        vectorstroke = ShapeView(frame: CGRect(x: 69.17, y: 63.29, width: 3.16, height: 4.97))
        vectorstroke.backgroundColor = UIColor.clear
        vectorstroke.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke.layer.borderColor = UIColor.clear.cgColor
        vectorstroke.layer.name = "vectorstroke"
        vectorstroke.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke.layer.shadowOpacity = 1
        vectorstroke.layer.position = CGPoint(x: 69.17, y: 63.29)
        vectorstroke.layer.bounds = CGRect(x: 0, y: 0, width: 3.16, height: 4.97)
        vectorstroke.layer.masksToBounds = false
        vectorstroke.shapeLayer.name = "vectorstroke.shapeLayer"
        vectorstroke.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke.shapeLayer.fillColor = UIColor.white.cgColor
        vectorstroke.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vectorstroke.shapeLayer.lineDashPattern = []
        vectorstroke.shapeLayer.lineDashPhase = 0
        vectorstroke.shapeLayer.lineWidth = 2
        vectorstroke.shapeLayer.path = CGPathCreateWithSVGString("M0.164,0.322c0.265,-0.363,0.758,-0.429,1.101,-0.148 0.571,0.468,1.037,1.064,1.365,1.746 0.328,0.681,0.509,1.431,0.53,2.195 0.013,0.459,-0.328,0.841,-0.761,0.855 -0.433,0.014,-0.795,-0.347,-0.807,-0.806 -0.014,-0.519,-0.137,-1.028,-0.36,-1.49 -0.222,-0.463,-0.539,-0.868,-0.927,-1.186 -0.343,-0.281,-0.405,-0.803,-0.14,-1.166l0,0zM0.164,0.322")!


    }

    private func createVector13() {
        vector_13 = ShapeView(frame: CGRect(x: 22.15, y: 69.62, width: 12.66, height: 4.52))
        vector_13.backgroundColor = UIColor.clear
        vector_13.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_13.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_13.layer.borderColor = UIColor.clear.cgColor
        vector_13.layer.name = "vector_13"
        vector_13.layer.shadowColor = UIColor.clear.cgColor
        vector_13.layer.shadowOpacity = 1
        vector_13.layer.position = CGPoint(x: 22.15, y: 69.62)
        vector_13.layer.bounds = CGRect(x: 0, y: 0, width: 12.66, height: 4.52)
        vector_13.layer.masksToBounds = false
        vector_13.shapeLayer.name = "vector_13.shapeLayer"
        vector_13.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_13.shapeLayer.fillColor = nil
        vector_13.shapeLayer.miterLimit = 4
        vector_13.shapeLayer.lineDashPattern = []
        vector_13.shapeLayer.lineDashPhase = 0
        vector_13.shapeLayer.lineWidth = 1
        vector_13.shapeLayer.path = CGPathCreateWithSVGString("M7.003,0.493c3.476,0.779,5.99,2.209,5.621,3.182 -0.369,0.972,-3.497,1.13,-6.966,0.35 -3.469,-0.779,-5.996,-2.202,-5.621,-3.174 0.376,-0.972,3.49,-1.137,6.966,-0.357l0,0zM7.003,0.493")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1.59364, y: 0.873)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_13.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector14() {
        vector_14 = ShapeView(frame: CGRect(x: 32.55, y: 68.72, width: 1.36, height: 1.36))
        vector_14.backgroundColor = UIColor.clear
        vector_14.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_14.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_14.layer.borderColor = UIColor.clear.cgColor
        vector_14.layer.name = "vector_14"
        vector_14.layer.shadowColor = UIColor.clear.cgColor
        vector_14.layer.shadowOpacity = 1
        vector_14.layer.position = CGPoint(x: 32.55, y: 68.72)
        vector_14.layer.bounds = CGRect(x: 0, y: 0, width: 1.36, height: 1.36)
        vector_14.layer.masksToBounds = false
        vector_14.shapeLayer.name = "vector_14.shapeLayer"
        vector_14.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_14.shapeLayer.fillColor = UIColor.white.cgColor
        vector_14.shapeLayer.miterLimit = 4
        vector_14.shapeLayer.lineDashPattern = []
        vector_14.shapeLayer.lineDashPhase = 0
        vector_14.shapeLayer.lineWidth = 1
        vector_14.shapeLayer.path = CGPathCreateWithSVGString("M0.912,0.041c0.127,0.046,0.238,0.129,0.318,0.239 0.08,0.109,0.125,0.24,0.13,0.375 0.005,0.135,-0.031,0.269,-0.102,0.384 -0.071,0.115,-0.176,0.206,-0.299,0.261 -0.124,0.055,-0.261,0.073,-0.394,0.05 -0.133,-0.023,-0.257,-0.085,-0.355,-0.179 -0.098,-0.094,-0.165,-0.214,-0.194,-0.347 -0.029,-0.132,-0.017,-0.27,0.033,-0.396 0.065,-0.164,0.192,-0.296,0.353,-0.369 0.161,-0.072,0.344,-0.079,0.51,-0.019l0,0zM0.912,0.041")!


    }

    private func createVector15() {
        vector_15 = ShapeView(frame: CGRect(x: 63.75, y: 69.62, width: 13.11, height: 4.52))
        vector_15.backgroundColor = UIColor.clear
        vector_15.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_15.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_15.layer.borderColor = UIColor.clear.cgColor
        vector_15.layer.name = "vector_15"
        vector_15.layer.shadowColor = UIColor.clear.cgColor
        vector_15.layer.shadowOpacity = 1
        vector_15.layer.position = CGPoint(x: 63.75, y: 69.62)
        vector_15.layer.bounds = CGRect(x: 0, y: 0, width: 13.11, height: 4.52)
        vector_15.layer.masksToBounds = false
        vector_15.shapeLayer.name = "vector_15.shapeLayer"
        vector_15.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_15.shapeLayer.fillColor = nil
        vector_15.shapeLayer.miterLimit = 4
        vector_15.shapeLayer.lineDashPattern = []
        vector_15.shapeLayer.lineDashPhase = 0
        vector_15.shapeLayer.lineWidth = 1
        vector_15.shapeLayer.path = CGPathCreateWithSVGString("M5.854,0.493c-3.594,0.779,-6.205,2.209,-5.816,3.182 0.389,0.972,3.616,1.13,7.217,0.35 3.601,-0.779,6.205,-2.202,5.816,-3.174 -0.389,-0.972,-3.616,-1.137,-7.217,-0.357l0,0zM5.854,0.493")!

        let startPoint = CGPoint(x: 176.2, y: 153.3)
        let endPoint = CGPoint(x: 183.12, y: 160.22)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_15.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector16() {
        vector_16 = ShapeView(frame: CGRect(x: 43.4, y: 77.76, width: 11.75, height: 8.59))
        vector_16.backgroundColor = UIColor.clear
        vector_16.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_16.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_16.layer.borderColor = UIColor.clear.cgColor
        vector_16.layer.name = "vector_16"
        vector_16.layer.shadowColor = UIColor.clear.cgColor
        vector_16.layer.shadowOpacity = 1
        vector_16.layer.position = CGPoint(x: 43.4, y: 77.76)
        vector_16.layer.bounds = CGRect(x: 0, y: 0, width: 11.75, height: 8.59)
        vector_16.layer.masksToBounds = false
        vector_16.shapeLayer.name = "vector_16.shapeLayer"
        vector_16.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_16.shapeLayer.fillColor = nil
        vector_16.shapeLayer.miterLimit = 4
        vector_16.shapeLayer.lineDashPattern = []
        vector_16.shapeLayer.lineDashPhase = 0
        vector_16.shapeLayer.lineWidth = 1
        vector_16.shapeLayer.path = CGPathCreateWithSVGString("M0.049,0l5.82,0c0,0,4.938,1.348,5.827,0 0.393,4.17,-1.315,8.59,-5.84,8.59 -3.843,0,-6.233,-3.475,-5.806,-8.34l0,-0.25 0,0zM0.049,0")!

        let startPoint = CGPoint(x: 0.51, y: 0.259)
        let endPoint = CGPoint(x: 1.20195, y: 0.806)
        let colors = [UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 1).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0.65).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0.19).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.33), NSNumber(value: 0.79), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_16.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector17() {
        vector_17 = ShapeView(frame: CGRect(x: 44.76, y: 73.69, width: 9.04, height: 9.04))
        vector_17.backgroundColor = UIColor.clear
        vector_17.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_17.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_17.layer.borderColor = UIColor.clear.cgColor
        vector_17.layer.name = "vector_17"
        vector_17.layer.shadowColor = UIColor.clear.cgColor
        vector_17.layer.shadowOpacity = 1
        vector_17.layer.position = CGPoint(x: 44.76, y: 73.69)
        vector_17.layer.bounds = CGRect(x: 0, y: 0, width: 9.04, height: 9.04)
        vector_17.layer.masksToBounds = false
        vector_17.shapeLayer.name = "vector_17.shapeLayer"
        vector_17.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_17.shapeLayer.fillColor = UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor
        vector_17.shapeLayer.miterLimit = 4
        vector_17.shapeLayer.lineDashPattern = []
        vector_17.shapeLayer.lineDashPhase = 0
        vector_17.shapeLayer.lineWidth = 1
        vector_17.shapeLayer.path = CGPathCreateWithSVGString("M0,0l9.04,0c0,0,-0.612,9.04,-4.513,9.04 -3.901,0,-4.527,-9.04,-4.527,-9.04l0,0zM0,0")!


    }

    private func createVector18() {
        vector_18 = ShapeView(frame: CGRect(x: 44.76, y: 73.69, width: 8.59, height: 8.14))
        vector_18.backgroundColor = UIColor.clear
        vector_18.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_18.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_18.layer.borderColor = UIColor.clear.cgColor
        vector_18.layer.name = "vector_18"
        vector_18.layer.shadowColor = UIColor.clear.cgColor
        vector_18.layer.shadowOpacity = 1
        vector_18.layer.position = CGPoint(x: 44.76, y: 73.69)
        vector_18.layer.bounds = CGRect(x: 0, y: 0, width: 8.59, height: 8.14)
        vector_18.layer.masksToBounds = false
        vector_18.shapeLayer.name = "vector_18.shapeLayer"
        vector_18.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_18.shapeLayer.fillColor = nil
        vector_18.shapeLayer.miterLimit = 4
        vector_18.shapeLayer.lineDashPattern = []
        vector_18.shapeLayer.lineDashPhase = 0
        vector_18.shapeLayer.lineWidth = 1
        vector_18.shapeLayer.path = CGPathCreateWithSVGString("M0,0.02l8.587,0.095c0,0,0.261,8.025,-4.187,8.025 -4.448,0,-4.4,-7.326,-4.4,-8.14l0,0.02 0,0zM0,0.02")!

        let startPoint = CGPoint(x: 0.5, y: 0.089)
        let endPoint = CGPoint(x: 0.501, y: 0.94)
        let colors = [UIColor(red: 0.91, green: 0.106, blue: 0, alpha: 1).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_18.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector19() {
        vector_19 = ShapeView(frame: CGRect(x: 43.85, y: 73.69, width: 10.85, height: 5.88))
        vector_19.backgroundColor = UIColor.clear
        vector_19.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_19.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_19.layer.borderColor = UIColor.clear.cgColor
        vector_19.layer.name = "vector_19"
        vector_19.layer.shadowColor = UIColor.clear.cgColor
        vector_19.layer.shadowOpacity = 1
        vector_19.layer.position = CGPoint(x: 43.85, y: 73.69)
        vector_19.layer.bounds = CGRect(x: 0, y: 0, width: 10.85, height: 5.88)
        vector_19.layer.masksToBounds = false
        vector_19.shapeLayer.name = "vector_19.shapeLayer"
        vector_19.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_19.shapeLayer.fillColor = nil
        vector_19.shapeLayer.miterLimit = 4
        vector_19.shapeLayer.lineDashPattern = []
        vector_19.shapeLayer.lineDashPhase = 0
        vector_19.shapeLayer.lineWidth = 1
        vector_19.shapeLayer.path = CGPathCreateWithSVGString("M1.772,5.507c0.69,-1.019,1.876,-2.85,3.525,-2.85 1.924,0,3.29,1.966,3.945,3.185 0.145,0.256,1.945,-0.841,1.552,-1.567 -1.055,-1.952,-2.904,-4.275,-5.518,-4.275 -2.214,0,-3.876,2.137,-4.939,3.705 -1.214,1.888,1.221,2.166,1.435,1.802l0,0zM1.772,5.507")!

        let startPoint = CGPoint(x: 0.505, y: 0.017)
        let endPoint = CGPoint(x: 0.504, y: 0.265)
        let colors = [UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 1).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.96).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.71).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.49).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.31).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.18).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.08).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.02).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.02), NSNumber(value: 0.13), NSNumber(value: 0.25), NSNumber(value: 0.36), NSNumber(value: 0.48), NSNumber(value: 0.59), NSNumber(value: 0.71), NSNumber(value: 0.83)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_19.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector20() {
        vector_20 = ShapeView(frame: CGRect(x: 48.37, y: 3.16, width: 6.33, height: 34.81))
        vector_20.backgroundColor = UIColor.clear
        vector_20.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_20.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_20.layer.borderColor = UIColor.clear.cgColor
        vector_20.layer.name = "vector_20"
        vector_20.layer.shadowColor = UIColor.clear.cgColor
        vector_20.layer.shadowOpacity = 1
        vector_20.layer.position = CGPoint(x: 48.37, y: 3.16)
        vector_20.layer.bounds = CGRect(x: 0, y: 0, width: 6.33, height: 34.81)
        vector_20.layer.masksToBounds = false
        vector_20.shapeLayer.name = "vector_20.shapeLayer"
        vector_20.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_20.shapeLayer.fillColor = nil
        vector_20.shapeLayer.miterLimit = 4
        vector_20.shapeLayer.lineDashPattern = []
        vector_20.shapeLayer.lineDashPhase = 0
        vector_20.shapeLayer.lineWidth = 1
        vector_20.shapeLayer.path = CGPathCreateWithSVGString("M0,34.178c0.294,-13.992,1.312,-28.095,1.832,-32.949 0.082,-0.431,0.232,-0.846,0.444,-1.229 0.841,0.514,1.531,2.521,2.365,1.93 -0.772,4.319,0.731,15.902,1.688,32.13 0,0,-1.019,0.868,-3.691,0.736 -2.181,-0.132,-2.639,-0.618,-2.639,-0.618l0,0zM0,34.178")!

        let startPoint = CGPoint(x: 0.5, y: 0.967)
        let endPoint = CGPoint(x: 0.582, y: 0.501)
        let colors = [UIColor(red: 0.325, green: 0.651, blue: 0.431, alpha: 1).cgColor, UIColor(red: 0.365, green: 0.702, blue: 0.471, alpha: 1).cgColor, UIColor(red: 0.467, green: 0.839, blue: 0.576, alpha: 1).cgColor, UIColor(red: 0.471, green: 0.843, blue: 0.58, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.31), NSNumber(value: 0.9), NSNumber(value: 0.92)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_20.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector21() {
        vector_21 = ShapeView(frame: CGRect(x: 41.59, y: 20.34, width: 6.78, height: 17.18))
        vector_21.backgroundColor = UIColor.clear
        vector_21.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_21.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_21.layer.borderColor = UIColor.clear.cgColor
        vector_21.layer.name = "vector_21"
        vector_21.layer.shadowColor = UIColor.clear.cgColor
        vector_21.layer.shadowOpacity = 1
        vector_21.layer.position = CGPoint(x: 41.59, y: 20.34)
        vector_21.layer.bounds = CGRect(x: 0, y: 0, width: 6.78, height: 17.18)
        vector_21.layer.masksToBounds = false
        vector_21.shapeLayer.name = "vector_21.shapeLayer"
        vector_21.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_21.shapeLayer.fillColor = nil
        vector_21.shapeLayer.miterLimit = 4
        vector_21.shapeLayer.lineDashPattern = []
        vector_21.shapeLayer.lineDashPhase = 0
        vector_21.shapeLayer.lineWidth = 1
        vector_21.shapeLayer.path = CGPathCreateWithSVGString("M6.78,16.848c0,0,-0.238,0.317,-2.223,0.317 -0.81,0.053,-1.624,-0.035,-2.404,-0.261 -0.182,-8.076,-0.888,-16.912,-2.153,-16.835 1.211,-0.15,2.439,-0.057,3.614,0.275 0,0,1.985,9.612,3.166,16.503l0,0zM6.78,16.848")!

        let startPoint = CGPoint(x: 0.497, y: 0.922)
        let endPoint = CGPoint(x: 0.502, y: 0.196)
        let colors = [UIColor(red: 0.325, green: 0.651, blue: 0.431, alpha: 1).cgColor, UIColor(red: 0.369, green: 0.71, blue: 0.475, alpha: 1).cgColor, UIColor(red: 0.471, green: 0.843, blue: 0.58, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.36), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_21.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector22() {
        vector_22 = ShapeView(frame: CGRect(x: 0, y: 18.99, width: 45.21, height: 40.24))
        vector_22.backgroundColor = UIColor.clear
        vector_22.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_22.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_22.layer.borderColor = UIColor.clear.cgColor
        vector_22.layer.name = "vector_22"
        vector_22.layer.shadowColor = UIColor.clear.cgColor
        vector_22.layer.shadowOpacity = 1
        vector_22.layer.position = CGPoint(x: 0, y: 18.99)
        vector_22.layer.bounds = CGRect(x: 0, y: 0, width: 45.21, height: 40.24)
        vector_22.layer.masksToBounds = false
        vector_22.shapeLayer.name = "vector_22.shapeLayer"
        vector_22.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_22.shapeLayer.fillColor = nil
        vector_22.shapeLayer.miterLimit = 4
        vector_22.shapeLayer.lineDashPattern = []
        vector_22.shapeLayer.lineDashPhase = 0
        vector_22.shapeLayer.lineWidth = 1
        vector_22.shapeLayer.path = CGPathCreateWithSVGString("M0,40.226c0,0,12.184,-1.248,17.506,-16.829 6.533,-19.101,22.128,-20.377,27.471,-21.283 3.263,-0.558,-28.661,-8.066,-37.407,9.063 -5.238,10.241,-3.676,24.623,-7.57,29.063l0,-0.014 0,0zM0,40.226")!

        let startPoint = CGPoint(x: -0.017, y: 0.984)
        let endPoint = CGPoint(x: 0.796, y: -0.137)
        let colors = [UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor, UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_22.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector23() {
        vector_23 = ShapeView(frame: CGRect(x: 50.18, y: 0, width: 56.06, height: 46.57))
        vector_23.backgroundColor = UIColor.clear
        vector_23.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_23.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_23.layer.borderColor = UIColor.clear.cgColor
        vector_23.layer.name = "vector_23"
        vector_23.layer.shadowColor = UIColor.clear.cgColor
        vector_23.layer.shadowOpacity = 1
        vector_23.layer.position = CGPoint(x: 50.18, y: 0)
        vector_23.layer.bounds = CGRect(x: 0, y: 0, width: 56.06, height: 46.57)
        vector_23.layer.masksToBounds = false
        vector_23.shapeLayer.name = "vector_23.shapeLayer"
        vector_23.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_23.shapeLayer.fillColor = nil
        vector_23.shapeLayer.miterLimit = 4
        vector_23.shapeLayer.lineDashPattern = []
        vector_23.shapeLayer.lineDashPhase = 0
        vector_23.shapeLayer.lineWidth = 1
        vector_23.shapeLayer.path = CGPathCreateWithSVGString("M56.005,46.542c0,0,-4.293,-20.465,-24.747,-24.877 -20.7,-4.46,-30.136,-11.677,-31.246,-18.102 -0.597,-3.437,21.255,-7.469,38.912,4.208 12.156,8.023,17.763,25.83,17.081,38.798l0,-0.028 0,0zM56.005,46.542")!

        let startPoint = CGPoint(x: 128.443, y: 114.493)
        let endPoint = CGPoint(x: 216.95, y: 135.82)
        let colors = [UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor, UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_23.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVectorstroke1() {
        vectorstroke_1 = ShapeView(frame: CGRect(x: 30.74, y: 63.29, width: 3.16, height: 4.97))
        vectorstroke_1.backgroundColor = UIColor.clear
        vectorstroke_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke_1.layer.borderColor = UIColor.clear.cgColor
        vectorstroke_1.layer.name = "vectorstroke_1"
        vectorstroke_1.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke_1.layer.shadowOpacity = 1
        vectorstroke_1.layer.position = CGPoint(x: 30.74, y: 63.29)
        vectorstroke_1.layer.bounds = CGRect(x: 0, y: 0, width: 3.16, height: 4.97)
        vectorstroke_1.layer.masksToBounds = false
        vectorstroke_1.shapeLayer.name = "vectorstroke_1.shapeLayer"
        vectorstroke_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke_1.shapeLayer.fillColor = UIColor.white.cgColor
        vectorstroke_1.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vectorstroke_1.shapeLayer.lineDashPattern = []
        vectorstroke_1.shapeLayer.lineDashPhase = 0
        vectorstroke_1.shapeLayer.lineWidth = 2
        vectorstroke_1.shapeLayer.path = CGPathCreateWithSVGString("M0.164,0.322c0.265,-0.363,0.758,-0.429,1.101,-0.148 0.571,0.468,1.037,1.064,1.365,1.746 0.328,0.681,0.509,1.431,0.53,2.195 0.013,0.459,-0.328,0.841,-0.761,0.855 -0.433,0.014,-0.795,-0.347,-0.807,-0.806 -0.014,-0.519,-0.137,-1.028,-0.36,-1.49 -0.222,-0.463,-0.539,-0.868,-0.927,-1.186 -0.343,-0.281,-0.405,-0.803,-0.14,-1.166l0,0zM0.164,0.322")!


    }

    private func createVector24() {
        vector_24 = ShapeView(frame: CGRect(x: 0, y: 20.8, width: 45.21, height: 38.88))
        vector_24.backgroundColor = UIColor.clear
        vector_24.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_24.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_24.layer.borderColor = UIColor.clear.cgColor
        vector_24.layer.name = "vector_24"
        vector_24.layer.shadowColor = UIColor.clear.cgColor
        vector_24.layer.shadowOpacity = 1
        vector_24.layer.position = CGPoint(x: 0, y: 20.8)
        vector_24.layer.bounds = CGRect(x: 0, y: 0, width: 45.21, height: 38.88)
        vector_24.layer.masksToBounds = false
        vector_24.shapeLayer.name = "vector_24.shapeLayer"
        vector_24.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_24.shapeLayer.fillColor = nil
        vector_24.shapeLayer.miterLimit = 4
        vector_24.shapeLayer.lineDashPattern = []
        vector_24.shapeLayer.lineDashPhase = 0
        vector_24.shapeLayer.lineWidth = 1
        vector_24.shapeLayer.path = CGPathCreateWithSVGString("M0,38.633c0,0,22.171,2.797,29.914,-10.439 7.155,-12.222,4.599,-19.892,15.296,-27.877 0,-0.615,-21.821,-2.028,-28.507,15.005 -4.9,12.446,-6.139,17.788,-16.703,23.311l0,0zM0,38.633")!

        let startPoint = CGPoint(x: 0.12, y: 1.107)
        let endPoint = CGPoint(x: 0.933, y: -0.056)
        let colors = [UIColor(red: 0.957, green: 0.792, blue: 0.216, alpha: 0.2).cgColor, UIColor(red: 0.957, green: 0.792, blue: 0.216, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_24.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector25() {
        vector_25 = ShapeView(frame: CGRect(x: 50.18, y: 3.16, width: 56.06, height: 43.4))
        vector_25.backgroundColor = UIColor.clear
        vector_25.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_25.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_25.layer.borderColor = UIColor.clear.cgColor
        vector_25.layer.name = "vector_25"
        vector_25.layer.shadowColor = UIColor.clear.cgColor
        vector_25.layer.shadowOpacity = 1
        vector_25.layer.position = CGPoint(x: 50.18, y: 3.16)
        vector_25.layer.bounds = CGRect(x: 0, y: 0, width: 56.06, height: 43.4)
        vector_25.layer.masksToBounds = false
        vector_25.shapeLayer.name = "vector_25.shapeLayer"
        vector_25.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_25.shapeLayer.fillColor = nil
        vector_25.shapeLayer.miterLimit = 4
        vector_25.shapeLayer.lineDashPattern = []
        vector_25.shapeLayer.lineDashPhase = 0
        vector_25.shapeLayer.lineWidth = 1
        vector_25.shapeLayer.path = CGPathCreateWithSVGString("M0,1.277c0,0,1.133,24.51,24.127,30.607 21.499,5.699,29.741,3.734,31.923,11.51 0.133,0.468,-0.699,-25.929,-23.477,-33.313 -14.976,-4.895,-27.008,-1.965,-32.16,-10.077 0,0,0,-0.07,-0.168,0.385 -0.107,0.288,-0.189,0.585,-0.245,0.888l0,0zM0,1.277")!

        let startPoint = CGPoint(x: 0.973, y: 0.46)
        let endPoint = CGPoint(x: 0.026, y: 0.541)
        let colors = [UIColor(red: 1, green: 0.792, blue: 0, alpha: 0.6).cgColor, UIColor(red: 1, green: 0.792, blue: 0, alpha: 0.2).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_25.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVectorstroke2() {
        vectorstroke_2 = ShapeView(frame: CGRect(x: 42.95, y: 70.53, width: 12.66, height: 14.01))
        vectorstroke_2.backgroundColor = UIColor.clear
        vectorstroke_2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke_2.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke_2.layer.borderColor = UIColor.clear.cgColor
        vectorstroke_2.layer.name = "vectorstroke_2"
        vectorstroke_2.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke_2.layer.shadowOpacity = 1
        vectorstroke_2.layer.position = CGPoint(x: 42.95, y: 70.53)
        vectorstroke_2.layer.bounds = CGRect(x: 0, y: 0, width: 12.66, height: 14.01)
        vectorstroke_2.layer.masksToBounds = false
        vectorstroke_2.shapeLayer.name = "vectorstroke_2.shapeLayer"
        vectorstroke_2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke_2.shapeLayer.fillColor = nil
        vectorstroke_2.shapeLayer.lineDashPattern = []
        vectorstroke_2.shapeLayer.lineDashPhase = 0
        vectorstroke_2.shapeLayer.lineWidth = 4
        vectorstroke_2.shapeLayer.path = CGPathCreateWithSVGString("M6.33,3.353c-1.448,0,-2.985,1.42,-2.985,3.652 0,2.231,1.537,3.651,2.985,3.651 1.448,0,2.985,-1.42,2.985,-3.651 0,-2.231,-1.537,-3.652,-2.985,-3.652l0,0zM0,7.005c0,-3.654,2.634,-7.005,6.33,-7.005 3.696,0,6.33,3.351,6.33,7.005 0,3.654,-2.634,7.005,-6.33,7.005 -3.696,0,-6.33,-3.351,-6.33,-7.005l0,0zM0,7.005")!

        let startPoint = CGPoint(x: 107.861, y: 122.97)
        let endPoint = CGPoint(x: 114.724, y: 129.607)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vectorstroke_2.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVectorstroke3() {
        vectorstroke_3 = ShapeView(frame: CGRect(x: 47.47, y: 71.43, width: 5.88, height: 2.26))
        vectorstroke_3.backgroundColor = UIColor.clear
        vectorstroke_3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke_3.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke_3.layer.borderColor = UIColor.clear.cgColor
        vectorstroke_3.layer.name = "vectorstroke_3"
        vectorstroke_3.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke_3.layer.shadowOpacity = 1
        vectorstroke_3.layer.position = CGPoint(x: 47.47, y: 71.43)
        vectorstroke_3.layer.bounds = CGRect(x: 0, y: 0, width: 5.88, height: 2.26)
        vectorstroke_3.layer.masksToBounds = false
        vectorstroke_3.shapeLayer.name = "vectorstroke_3.shapeLayer"
        vectorstroke_3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke_3.shapeLayer.fillColor = UIColor.white.cgColor
        vectorstroke_3.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vectorstroke_3.shapeLayer.lineDashPattern = []
        vectorstroke_3.shapeLayer.lineDashPhase = 0
        vectorstroke_3.shapeLayer.lineWidth = 1
        vectorstroke_3.shapeLayer.path = CGPathCreateWithSVGString("M1.928,0l0,0c1.427,0.01,2.796,0.558,3.82,1.528 0.173,0.164,0.177,0.434,0.009,0.603 -0.168,0.169,-0.444,0.173,-0.618,0.009 -0.862,-0.817,-2.013,-1.278,-3.215,-1.287 -0.46,0.002,-0.918,0.071,-1.357,0.205 -0.23,0.07,-0.475,-0.055,-0.547,-0.28 -0.072,-0.225,0.056,-0.464,0.286,-0.534 0.523,-0.16,1.068,-0.242,1.616,-0.244l0.005,-0 0,0zM1.928,0")!


    }

    private func createGroup667() {
        group667 = UIView(frame: CGRect(x: 0, y: 0, width: 95.83, height: 30))
        group667.backgroundColor = UIColor.clear
        group667.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group667.layer.shadowOffset = CGSize(width: 0, height: 0)
        group667.layer.borderWidth = 1
        group667.layer.borderColor = UIColor.clear.cgColor
        group667.layer.name = "group667"
        group667.layer.shadowColor = UIColor.clear.cgColor
        group667.layer.shadowOpacity = 1
        group667.layer.position = CGPoint(x: 0, y: 0)
        group667.layer.bounds = CGRect(x: 0, y: 0, width: 95.83, height: 30)
        group667.layer.masksToBounds = false

    }

    private func createRectangle467() {
        rectangle467 = ShapeView(frame: CGRect(x: 0, y: 0, width: 95.83, height: 30))
        rectangle467.backgroundColor = UIColor.clear
        rectangle467.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle467.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle467.layer.borderColor = UIColor.clear.cgColor
        rectangle467.layer.name = "rectangle467"
        rectangle467.layer.shadowColor = UIColor.clear.cgColor
        rectangle467.layer.shadowOpacity = 1
        rectangle467.layer.position = CGPoint(x: 0, y: 0)
        rectangle467.layer.bounds = CGRect(x: 0, y: 0, width: 95.83, height: 30)
        rectangle467.layer.masksToBounds = false
        rectangle467.shapeLayer.name = "rectangle467.shapeLayer"
        rectangle467.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle467.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle467.shapeLayer.miterLimit = 4
        rectangle467.shapeLayer.lineDashPattern = []
        rectangle467.shapeLayer.lineDashPhase = 0
        rectangle467.shapeLayer.lineWidth = 2
        rectangle467.shapeLayer.path = CGPathCreateWithSVGString("M0,15c0,-8.284,6.715,-15,14.999,-15l65.831,0c8.284,0,14.999,6.716,14.999,15 0,8.284,-6.715,15,-14.999,15l-65.831,0c-8.284,0,-14.999,-6.716,-14.999,-15l0,0zM0,15")!


    }

    private func createRectangle467stroke() {
        rectangle467stroke = ShapeView(frame: CGRect(x: 0, y: 0, width: 95.83, height: 30))
        rectangle467stroke.backgroundColor = UIColor.clear
        rectangle467stroke.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle467stroke.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle467stroke.layer.borderColor = UIColor.clear.cgColor
        rectangle467stroke.layer.name = "rectangle467stroke"
        rectangle467stroke.layer.shadowColor = UIColor.clear.cgColor
        rectangle467stroke.layer.shadowOpacity = 1
        rectangle467stroke.layer.position = CGPoint(x: 0, y: 0)
        rectangle467stroke.layer.bounds = CGRect(x: 0, y: 0, width: 95.83, height: 30)
        rectangle467stroke.layer.masksToBounds = false
        rectangle467stroke.shapeLayer.name = "rectangle467stroke.shapeLayer"
        rectangle467stroke.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle467stroke.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle467stroke.shapeLayer.miterLimit = 4
        rectangle467stroke.shapeLayer.lineDashPattern = []
        rectangle467stroke.shapeLayer.lineDashPhase = 0
        rectangle467stroke.shapeLayer.lineWidth = 2
        rectangle467stroke.shapeLayer.path = CGPathCreateWithSVGString("M80.83,1.667l-65.831,0c-7.364,0,-13.333,5.97,-13.333,13.333 0,7.364,5.969,13.333,13.333,13.333l65.831,0c7.364,0,13.333,-5.969,13.333,-13.333 0,-7.364,-5.969,-13.333,-13.333,-13.333l0,0zM14.999,0c-8.284,0,-14.999,6.716,-14.999,15 0,8.284,6.715,15,14.999,15l65.831,0c8.284,0,14.999,-6.716,14.999,-15 0,-8.284,-6.715,-15,-14.999,-15l-65.831,0 0,0zM14.999,0")!


    }

    private func createByName() {
        byName = ShapeView(frame: CGRect(x: 26.07, y: 9.68, width: 60.09, height: 13.87))
        byName.backgroundColor = UIColor.clear
        byName.layer.anchorPoint = CGPoint(x: 0, y: 0)
        byName.layer.shadowOffset = CGSize(width: 0, height: 0)
        byName.layer.borderColor = UIColor.clear.cgColor
        byName.layer.name = "byName"
        byName.layer.shadowColor = UIColor.clear.cgColor
        byName.layer.shadowOpacity = 1
        byName.layer.position = CGPoint(x: 26.07, y: 9.68)
        byName.layer.bounds = CGRect(x: 0, y: 0, width: 60.09, height: 13.87)
        byName.layer.masksToBounds = false
        byName.shapeLayer.name = "byName.shapeLayer"
        byName.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        byName.shapeLayer.fillColor = UIColor.white.cgColor
        byName.shapeLayer.miterLimit = 4
        byName.shapeLayer.lineDashPattern = []
        byName.shapeLayer.lineDashPhase = 0
        byName.shapeLayer.lineWidth = 2
        byName.shapeLayer.path = CGPathCreateWithSVGString("M0,11.156l4.477,0c2.374,0,3.804,-1.191,3.804,-3.147l0,-0.015c0,-1.469,-1.028,-2.559,-2.613,-2.721l0,-0.031c1.175,-0.17,2.064,-1.26,2.064,-2.435l0,-0.015c0,-1.685,-1.299,-2.791,-3.278,-2.791l-4.453,0 0,11.156 0,0zM4.036,1.415c1.253,0,1.972,0.564,1.972,1.585l0,0.015c0,1.121,-0.827,1.74,-2.358,1.74l-1.917,0 0,-3.34 2.304,0 0,0zM4.005,6.092c1.655,0,2.505,0.619,2.505,1.817l0,0.015c0,1.191,-0.835,1.817,-2.389,1.817l-2.389,0 0,-3.649 2.273,0 0,0zM10.53,13.87c1.593,0,2.443,-0.649,3.046,-2.335l3.031,-8.512 -1.763,0 -2.049,6.618 -0.054,0 -2.049,-6.618 -1.809,0 2.961,8.141 -0.139,0.387c-0.278,0.789,-0.711,0.997,-1.5,0.997 -0.224,0,-0.418,-0.031,-0.549,-0.062l0,1.307c0.201,0.039,0.549,0.077,0.874,0.077l0,0zM20.999,11.156l1.716,0 0,-8.265 0.046,0 5.745,8.265 1.593,0 0,-11.156 -1.716,0 0,8.249 -0.046,0 -5.737,-8.249 -1.6,0 0,11.156 0,0zM34.135,11.303c1.075,0,2.018,-0.557,2.49,-1.43l0.031,0 0,1.283 1.678,0 0,-5.605c0,-1.631,-1.26,-2.683,-3.247,-2.683 -2.002,0,-3.216,1.075,-3.332,2.474l-0.008,0.085 1.577,0 0.016,-0.07c0.139,-0.649,0.734,-1.106,1.701,-1.106 1.036,0,1.616,0.541,1.616,1.438l0,0.611 -2.211,0.131c-1.925,0.116,-3.023,0.982,-3.023,2.397l0,0.015c0,1.461,1.09,2.459,2.714,2.459l0,0zM33.107,8.806l0,-0.015c0,-0.688,0.557,-1.129,1.562,-1.191l1.987,-0.124 0,0.634c0,1.059,-0.889,1.856,-2.064,1.856 -0.897,0,-1.484,-0.448,-1.484,-1.16l0,0zM39.957,11.156l1.67,0 0,-5.025c0,-1.051,0.704,-1.832,1.693,-1.832 0.943,0,1.539,0.603,1.539,1.546l0,5.311 1.639,0 0,-5.087c0,-1.028,0.688,-1.77,1.678,-1.77 0.99,0,1.554,0.611,1.554,1.67l0,5.188 1.678,0 0,-5.59c0,-1.631,-1.051,-2.698,-2.66,-2.698 -1.16,0,-2.118,0.611,-2.536,1.6l-0.039,0c-0.325,-1.021,-1.144,-1.6,-2.265,-1.6 -1.067,0,-1.894,0.564,-2.242,1.415l-0.039,0 0,-1.26 -1.67,0 0,8.133 0,0zM56.495,11.319c1.972,0,3.224,-1.175,3.487,-2.466l0.016,-0.085 -1.585,0 -0.023,0.062c-0.209,0.611,-0.866,1.121,-1.856,1.121 -1.33,0,-2.173,-0.897,-2.203,-2.435l5.76,0 0,-0.564c0,-2.443,-1.399,-4.082,-3.68,-4.082 -2.281,0,-3.75,1.701,-3.75,4.244l0,0.008c0,2.567,1.446,4.198,3.835,4.198l0,0zM56.418,4.237c1.09,0,1.879,0.688,2.018,2.095l-4.082,0c0.147,-1.361,0.982,-2.095,2.064,-2.095l0,0zM56.418,4.237")!


    }

    private func createVector116stroke() {
        vector116stroke = ShapeView(frame: CGRect(x: 17.08, y: 22.08, width: 8.02, height: 12.5))
        vector116stroke.backgroundColor = UIColor.clear
        vector116stroke.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector116stroke.transform = CGAffineTransform(rotationAngle: -1 * CGFloat.pi)
        vector116stroke.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector116stroke.layer.borderColor = UIColor.clear.cgColor
        vector116stroke.layer.name = "vector116stroke"
        vector116stroke.layer.shadowColor = UIColor.clear.cgColor
        vector116stroke.layer.shadowOpacity = 1
        vector116stroke.layer.position = CGPoint(x: 17.08, y: 22.08)
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

    private func createGroup670() {
        group670 = UIView(frame: CGRect(x: 0, y: 0, width: 100.83, height: 30))
        group670.backgroundColor = UIColor.clear
        group670.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group670.layer.shadowOffset = CGSize(width: 0, height: 0)
        group670.layer.borderWidth = 1
        group670.layer.borderColor = UIColor.clear.cgColor
        group670.layer.name = "group670"
        group670.layer.shadowColor = UIColor.clear.cgColor
        group670.layer.shadowOpacity = 1
        group670.layer.position = CGPoint(x: 0, y: 0)
        group670.layer.bounds = CGRect(x: 0, y: 0, width: 100.83, height: 30)
        group670.layer.masksToBounds = false

    }

    private func createRectangle466() {
        rectangle466 = ShapeView(frame: CGRect(x: 0, y: 0, width: 100.83, height: 30))
        rectangle466.backgroundColor = UIColor.clear
        rectangle466.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle466.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle466.layer.borderColor = UIColor.clear.cgColor
        rectangle466.layer.name = "rectangle466"
        rectangle466.layer.shadowColor = UIColor.clear.cgColor
        rectangle466.layer.shadowOpacity = 1
        rectangle466.layer.position = CGPoint(x: 0, y: 0)
        rectangle466.layer.bounds = CGRect(x: 0, y: 0, width: 100.83, height: 30)
        rectangle466.layer.masksToBounds = false
        rectangle466.shapeLayer.name = "rectangle466.shapeLayer"
        rectangle466.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle466.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle466.shapeLayer.miterLimit = 4
        rectangle466.shapeLayer.lineDashPattern = []
        rectangle466.shapeLayer.lineDashPhase = 0
        rectangle466.shapeLayer.lineWidth = 2
        rectangle466.shapeLayer.path = CGPathCreateWithSVGString("M0,15c0,-8.284,6.716,-15,15,-15l70.831,0c8.284,0,14.999,6.716,14.999,15 0,8.284,-6.715,15,-14.999,15l-70.831,0c-8.284,0,-15,-6.716,-15,-15l0,0zM0,15")!


    }

    private func createRectangle466stroke() {
        rectangle466stroke = ShapeView(frame: CGRect(x: 0, y: 0, width: 100.83, height: 30))
        rectangle466stroke.backgroundColor = UIColor.clear
        rectangle466stroke.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle466stroke.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle466stroke.layer.borderColor = UIColor.clear.cgColor
        rectangle466stroke.layer.name = "rectangle466stroke"
        rectangle466stroke.layer.shadowColor = UIColor.clear.cgColor
        rectangle466stroke.layer.shadowOpacity = 1
        rectangle466stroke.layer.position = CGPoint(x: 0, y: 0)
        rectangle466stroke.layer.bounds = CGRect(x: 0, y: 0, width: 100.83, height: 30)
        rectangle466stroke.layer.masksToBounds = false
        rectangle466stroke.shapeLayer.name = "rectangle466stroke.shapeLayer"
        rectangle466stroke.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle466stroke.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle466stroke.shapeLayer.miterLimit = 4
        rectangle466stroke.shapeLayer.lineDashPattern = []
        rectangle466stroke.shapeLayer.lineDashPhase = 0
        rectangle466stroke.shapeLayer.lineWidth = 2
        rectangle466stroke.shapeLayer.path = CGPathCreateWithSVGString("M85.83,1.667l-70.831,0c-7.364,0,-13.333,5.97,-13.333,13.333 0,7.364,5.969,13.333,13.333,13.333l70.831,0c7.364,0,13.333,-5.969,13.333,-13.333 0,-7.364,-5.969,-13.333,-13.333,-13.333l0,0zM15,0c-8.284,0,-15,6.716,-15,15 0,8.284,6.716,15,15,15l70.831,0c8.284,0,14.999,-6.716,14.999,-15 0,-8.284,-6.715,-15,-14.999,-15l-70.831,0 0,0zM15,0")!


    }

    private func createVector116stroke1() {
        vector116stroke_1 = ShapeView(frame: CGRect(x: 83.75, y: 9.58, width: 8.02, height: 12.5))
        vector116stroke_1.backgroundColor = UIColor.clear
        vector116stroke_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector116stroke_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector116stroke_1.layer.borderColor = UIColor.clear.cgColor
        vector116stroke_1.layer.name = "vector116stroke_1"
        vector116stroke_1.layer.shadowColor = UIColor.clear.cgColor
        vector116stroke_1.layer.shadowOpacity = 1
        vector116stroke_1.layer.position = CGPoint(x: 83.75, y: 9.58)
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

    private func createByPhoto() {
        byPhoto = ShapeView(frame: CGRect(x: 10.83, y: 9.68, width: 63.06, height: 13.87))
        byPhoto.backgroundColor = UIColor.clear
        byPhoto.layer.anchorPoint = CGPoint(x: 0, y: 0)
        byPhoto.layer.shadowOffset = CGSize(width: 0, height: 0)
        byPhoto.layer.borderColor = UIColor.clear.cgColor
        byPhoto.layer.name = "byPhoto"
        byPhoto.layer.shadowColor = UIColor.clear.cgColor
        byPhoto.layer.shadowOpacity = 1
        byPhoto.layer.position = CGPoint(x: 10.83, y: 9.68)
        byPhoto.layer.bounds = CGRect(x: 0, y: 0, width: 63.06, height: 13.87)
        byPhoto.layer.masksToBounds = false
        byPhoto.shapeLayer.name = "byPhoto.shapeLayer"
        byPhoto.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        byPhoto.shapeLayer.fillColor = UIColor.white.cgColor
        byPhoto.shapeLayer.miterLimit = 4
        byPhoto.shapeLayer.lineDashPattern = []
        byPhoto.shapeLayer.lineDashPhase = 0
        byPhoto.shapeLayer.lineWidth = 1
        byPhoto.shapeLayer.path = CGPathCreateWithSVGString("M0,11.156l4.476,0c2.373,0,3.804,-1.191,3.804,-3.147l0,-0.015c0,-1.469,-1.028,-2.559,-2.613,-2.721l0,-0.031c1.175,-0.17,2.064,-1.26,2.064,-2.435l0,-0.015c0,-1.685,-1.299,-2.791,-3.278,-2.791l-4.453,0 0,11.156 0,0zM4.035,1.415c1.252,0,1.971,0.564,1.971,1.585l0,0.015c0,1.121,-0.827,1.74,-2.358,1.74l-1.917,0 0,-3.34 2.304,0 0,0zM4.005,6.092c1.654,0,2.505,0.619,2.505,1.817l0,0.015c0,1.191,-0.835,1.817,-2.389,1.817l-2.389,0 0,-3.649 2.273,0 0,0zM10.529,13.87c1.593,0,2.443,-0.649,3.046,-2.335l3.03,-8.512 -1.763,0 -2.049,6.618 -0.054,0 -2.049,-6.618 -1.809,0 2.961,8.141 -0.139,0.387c-0.278,0.789,-0.711,0.997,-1.5,0.997 -0.224,0,-0.417,-0.031,-0.549,-0.062l0,1.307c0.201,0.039,0.549,0.077,0.874,0.077l0,0zM24.213,11.156l1.732,0 0,-3.812 2.42,0c2.188,0,3.703,-1.492,3.703,-3.672l0,-0.015c0,-2.188,-1.515,-3.657,-3.703,-3.657l-4.151,0 0,11.156 0,0zM27.931,1.461c1.508,0,2.373,0.812,2.373,2.203l0,0.015c0,1.399,-0.866,2.211,-2.373,2.211l-1.987,0 0,-4.43 1.987,0 0,0zM33.443,11.156l1.67,0 0,-4.708c0,-1.268,0.765,-2.149,1.917,-2.149 1.175,0,1.855,0.804,1.855,2.149l0,4.708 1.67,0 0,-5.025c0,-1.964,-1.144,-3.263,-2.884,-3.263 -1.214,0,-2.087,0.549,-2.52,1.492l-0.039,0 0,-4.36 -1.67,0 0,11.156 0,0zM45.674,11.319c2.327,0,3.858,-1.608,3.858,-4.229l0,-0.015c0,-2.605,-1.546,-4.206,-3.865,-4.206 -2.311,0,-3.85,1.608,-3.85,4.206l0,0.015c0,2.613,1.523,4.229,3.858,4.229l0,0zM45.681,9.919c-1.307,0,-2.157,-1.028,-2.157,-2.83l0,-0.015c0,-1.778,0.858,-2.806,2.141,-2.806 1.307,0,2.157,1.028,2.157,2.806l0,0.015c0,1.794,-0.835,2.83,-2.141,2.83l0,0zM53.675,11.319c0.34,0,0.657,-0.039,0.85,-0.07l0,-1.291c-0.124,0.015,-0.271,0.031,-0.448,0.031 -0.704,0,-1.075,-0.247,-1.075,-1.075l0,-4.561 1.523,0 0,-1.33 -1.523,0 0,-2.118 -1.709,0 0,2.118 -1.167,0 0,1.33 1.167,0 0,4.662c0,1.624,0.773,2.304,2.381,2.304l0,0zM59.202,11.319c2.327,0,3.858,-1.608,3.858,-4.229l0,-0.015c0,-2.605,-1.546,-4.206,-3.865,-4.206 -2.311,0,-3.85,1.608,-3.85,4.206l0,0.015c0,2.613,1.523,4.229,3.858,4.229l0,0zM59.21,9.919c-1.306,0,-2.157,-1.028,-2.157,-2.83l0,-0.015c0,-1.778,0.858,-2.806,2.141,-2.806 1.306,0,2.157,1.028,2.157,2.806l0,0.015c0,1.794,-0.835,2.83,-2.142,2.83l0,0zM59.21,9.919")!


    }

    private func createGroup669() {
        group669 = UIView(frame: CGRect(x: 0, y: 0, width: 125.83, height: 30))
        group669.backgroundColor = UIColor.clear
        group669.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group669.layer.shadowOffset = CGSize(width: 0, height: 0)
        group669.layer.borderWidth = 1
        group669.layer.borderColor = UIColor.clear.cgColor
        group669.layer.name = "group669"
        group669.layer.shadowColor = UIColor.clear.cgColor
        group669.layer.shadowOpacity = 1
        group669.layer.position = CGPoint(x: 0, y: 0)
        group669.layer.bounds = CGRect(x: 0, y: 0, width: 125.83, height: 30)
        group669.layer.masksToBounds = false

    }

    private func createGroup671() {
        group671 = UIView(frame: CGRect(x: 0, y: 0, width: 125.83, height: 30))
        group671.backgroundColor = UIColor.clear
        group671.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group671.layer.shadowOffset = CGSize(width: 0, height: 0)
        group671.layer.borderWidth = 1
        group671.layer.borderColor = UIColor.clear.cgColor
        group671.layer.name = "group671"
        group671.layer.shadowColor = UIColor.clear.cgColor
        group671.layer.shadowOpacity = 1
        group671.layer.position = CGPoint(x: 0, y: 0)
        group671.layer.bounds = CGRect(x: 0, y: 0, width: 125.83, height: 30)
        group671.layer.masksToBounds = false

    }

    private func createRectangle465() {
        rectangle465 = ShapeView(frame: CGRect(x: 0, y: 0, width: 125.83, height: 30))
        rectangle465.backgroundColor = UIColor.clear
        rectangle465.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle465.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle465.layer.borderColor = UIColor.clear.cgColor
        rectangle465.layer.name = "rectangle465"
        rectangle465.layer.shadowColor = UIColor.clear.cgColor
        rectangle465.layer.shadowOpacity = 1
        rectangle465.layer.position = CGPoint(x: 0, y: 0)
        rectangle465.layer.bounds = CGRect(x: 0, y: 0, width: 125.83, height: 30)
        rectangle465.layer.masksToBounds = false
        rectangle465.shapeLayer.name = "rectangle465.shapeLayer"
        rectangle465.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle465.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle465.shapeLayer.miterLimit = 4
        rectangle465.shapeLayer.lineDashPattern = []
        rectangle465.shapeLayer.lineDashPhase = 0
        rectangle465.shapeLayer.lineWidth = 2
        rectangle465.shapeLayer.path = CGPathCreateWithSVGString("M0,15c0,-8.284,6.716,-15,15,-15l95.83,0c8.285,0,15,6.716,15,15 0,8.284,-6.715,15,-15,15l-95.83,0c-8.284,0,-15,-6.716,-15,-15l0,0zM0,15")!


    }

    private func createRectangle465stroke() {
        rectangle465stroke = ShapeView(frame: CGRect(x: 0, y: 0, width: 125.83, height: 30))
        rectangle465stroke.backgroundColor = UIColor.clear
        rectangle465stroke.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle465stroke.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle465stroke.layer.borderColor = UIColor.clear.cgColor
        rectangle465stroke.layer.name = "rectangle465stroke"
        rectangle465stroke.layer.shadowColor = UIColor.clear.cgColor
        rectangle465stroke.layer.shadowOpacity = 1
        rectangle465stroke.layer.position = CGPoint(x: 0, y: 0)
        rectangle465stroke.layer.bounds = CGRect(x: 0, y: 0, width: 125.83, height: 30)
        rectangle465stroke.layer.masksToBounds = false
        rectangle465stroke.shapeLayer.name = "rectangle465stroke.shapeLayer"
        rectangle465stroke.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle465stroke.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle465stroke.shapeLayer.miterLimit = 4
        rectangle465stroke.shapeLayer.lineDashPattern = []
        rectangle465stroke.shapeLayer.lineDashPhase = 0
        rectangle465stroke.shapeLayer.lineWidth = 2
        rectangle465stroke.shapeLayer.path = CGPathCreateWithSVGString("M110.83,1.667l-95.83,0c-7.364,0,-13.333,5.97,-13.333,13.333 0,7.364,5.969,13.333,13.333,13.333l95.83,0c7.364,0,13.334,-5.969,13.334,-13.333 0,-7.364,-5.97,-13.333,-13.334,-13.333l0,0zM15,0c-8.284,0,-15,6.716,-15,15 0,8.284,6.716,15,15,15l95.83,0c8.285,0,15,-6.716,15,-15 0,-8.284,-6.715,-15,-15,-15l-95.83,0 0,0zM15,0")!


    }

    private func createByCatalogue() {
        byCatalogue = ShapeView(frame: CGRect(x: 27.41, y: 9.49, width: 89.91, height: 14.21))
        byCatalogue.backgroundColor = UIColor.clear
        byCatalogue.layer.anchorPoint = CGPoint(x: 0, y: 0)
        byCatalogue.layer.shadowOffset = CGSize(width: 0, height: 0)
        byCatalogue.layer.borderColor = UIColor.clear.cgColor
        byCatalogue.layer.name = "byCatalogue"
        byCatalogue.layer.shadowColor = UIColor.clear.cgColor
        byCatalogue.layer.shadowOpacity = 1
        byCatalogue.layer.position = CGPoint(x: 27.41, y: 9.49)
        byCatalogue.layer.bounds = CGRect(x: 0, y: 0, width: 89.91, height: 14.21)
        byCatalogue.layer.masksToBounds = false
        byCatalogue.shapeLayer.name = "byCatalogue.shapeLayer"
        byCatalogue.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        byCatalogue.shapeLayer.fillColor = UIColor.white.cgColor
        byCatalogue.shapeLayer.miterLimit = 4
        byCatalogue.shapeLayer.lineDashPattern = []
        byCatalogue.shapeLayer.lineDashPhase = 0
        byCatalogue.shapeLayer.lineWidth = 1
        byCatalogue.shapeLayer.path = CGPathCreateWithSVGString("M0,11.342l4.476,0c2.373,0,3.804,-1.191,3.804,-3.147l0,-0.015c0,-1.469,-1.028,-2.559,-2.613,-2.721l0,-0.031c1.175,-0.17,2.064,-1.26,2.064,-2.435l0,-0.015c0,-1.685,-1.299,-2.791,-3.278,-2.791l-4.453,0 0,11.156 0,0zM4.036,1.6c1.252,0,1.971,0.564,1.971,1.585l0,0.015c0,1.121,-0.827,1.74,-2.358,1.74l-1.917,0 0,-3.34 2.304,0 0,0zM4.005,6.278c1.654,0,2.505,0.618,2.505,1.817l0,0.015c0,1.191,-0.835,1.817,-2.389,1.817l-2.389,0 0,-3.649 2.273,0 0,0zM10.529,14.055c1.593,0,2.443,-0.649,3.046,-2.335l3.031,-8.512 -1.763,0 -2.049,6.618 -0.054,0 -2.049,-6.618 -1.809,0 2.961,8.141 -0.139,0.387c-0.278,0.789,-0.711,0.997,-1.5,0.997 -0.224,0,-0.417,-0.031,-0.549,-0.062l0,1.307c0.201,0.039,0.549,0.077,0.874,0.077l0,0zM25.767,11.527c2.466,0,4.314,-1.492,4.662,-3.711l0.008,-0.077 -1.716,0 -0.023,0.07c-0.417,1.415,-1.446,2.188,-2.93,2.188 -2.064,0,-3.402,-1.654,-3.402,-4.237l0,-0.008c0,-2.582,1.33,-4.221,3.402,-4.221 1.5,0,2.536,0.796,2.907,2.103l0.046,0.155 1.716,0 -0.015,-0.07c-0.348,-2.203,-2.196,-3.719,-4.654,-3.719 -3.162,0,-5.172,2.211,-5.172,5.752l0,0.008c0,3.541,2.01,5.768,5.172,5.768l0,0zM34.178,11.489c1.075,0,2.018,-0.557,2.489,-1.43l0.031,0 0,1.283 1.678,0 0,-5.605c0,-1.631,-1.26,-2.683,-3.247,-2.683 -2.002,0,-3.216,1.075,-3.332,2.474l-0.008,0.085 1.577,0 0.015,-0.07c0.139,-0.649,0.734,-1.106,1.701,-1.106 1.036,0,1.616,0.541,1.616,1.438l0,0.611 -2.211,0.131c-1.925,0.116,-3.023,0.982,-3.023,2.397l0,0.015c0,1.461,1.09,2.458,2.714,2.458l0,0zM33.15,8.991l0,-0.015c0,-0.688,0.557,-1.129,1.562,-1.191l1.987,-0.124 0,0.634c0,1.059,-0.889,1.856,-2.064,1.856 -0.897,0,-1.484,-0.448,-1.484,-1.16l0,0zM42.852,11.504c0.34,0,0.657,-0.039,0.85,-0.07l0,-1.291c-0.124,0.016,-0.271,0.031,-0.448,0.031 -0.703,0,-1.075,-0.247,-1.075,-1.075l0,-4.561 1.523,0 0,-1.33 -1.523,0 0,-2.118 -1.709,0 0,2.118 -1.167,0 0,1.33 1.167,0 0,4.662c0,1.624,0.773,2.304,2.381,2.304l0,0zM47.352,11.489c1.075,0,2.018,-0.557,2.489,-1.43l0.031,0 0,1.283 1.678,0 0,-5.605c0,-1.631,-1.26,-2.683,-3.247,-2.683 -2.002,0,-3.216,1.075,-3.332,2.474l-0.008,0.085 1.577,0 0.015,-0.07c0.139,-0.649,0.734,-1.106,1.701,-1.106 1.036,0,1.616,0.541,1.616,1.438l0,0.611 -2.211,0.131c-1.925,0.116,-3.023,0.982,-3.023,2.397l0,0.015c0,1.461,1.09,2.458,2.714,2.458l0,0zM46.323,8.991l0,-0.015c0,-0.688,0.557,-1.129,1.562,-1.191l1.987,-0.124 0,0.634c0,1.059,-0.889,1.856,-2.064,1.856 -0.897,0,-1.484,-0.448,-1.484,-1.16l0,0zM53.235,11.342l1.67,0 0,-11.156 -1.67,0 0,11.156 0,0zM60.115,11.504c2.327,0,3.858,-1.608,3.858,-4.229l0,-0.015c0,-2.605,-1.546,-4.206,-3.865,-4.206 -2.312,0,-3.85,1.608,-3.85,4.206l0,0.015c0,2.613,1.523,4.229,3.858,4.229l0,0zM60.123,10.105c-1.306,0,-2.157,-1.028,-2.157,-2.83l0,-0.015c0,-1.778,0.858,-2.806,2.142,-2.806 1.306,0,2.157,1.028,2.157,2.806l0,0.015c0,1.794,-0.835,2.83,-2.141,2.83l0,0zM68.828,14.21c2.296,0,3.734,-1.237,3.734,-3.093l0,-7.909 -1.678,0 0,1.384 -0.039,0c-0.479,-0.92,-1.376,-1.539,-2.52,-1.539 -2.064,0,-3.425,1.6,-3.425,4.152l0,0.008c0,2.536,1.345,4.136,3.386,4.136 1.167,0,2.095,-0.564,2.559,-1.446l0.039,0 0,1.113c0,1.137,-0.734,1.848,-2.064,1.848 -1.044,0,-1.747,-0.356,-1.971,-0.874l-0.031,-0.062 -1.654,0 0.008,0.07c0.247,1.245,1.569,2.211,3.657,2.211l0,0zM68.758,9.989c-1.322,0,-2.149,-1.051,-2.149,-2.752l0,-0.008c0,-1.678,0.827,-2.745,2.149,-2.745 1.268,0,2.126,1.075,2.126,2.745l0,0.008c0,1.678,-0.85,2.752,-2.126,2.752l0,0zM76.984,11.504c1.237,0,2.064,-0.564,2.489,-1.384l0.039,0 0,1.222 1.678,0 0,-8.133 -1.678,0 0,4.747c0,1.268,-0.758,2.111,-1.933,2.111 -1.16,0,-1.732,-0.68,-1.732,-1.91l0,-4.948 -1.67,0 0,5.273c0,1.871,1.02,3.023,2.806,3.023l0,0zM86.315,11.504c1.971,0,3.224,-1.175,3.487,-2.466l0.015,-0.085 -1.585,0 -0.023,0.062c-0.209,0.611,-0.866,1.121,-1.855,1.121 -1.33,0,-2.172,-0.897,-2.203,-2.435l5.76,0 0,-0.564c0,-2.443,-1.399,-4.082,-3.68,-4.082 -2.281,0,-3.749,1.701,-3.749,4.244l0,0.008c0,2.567,1.446,4.198,3.835,4.198l0,0zM86.238,4.422c1.09,0,1.879,0.688,2.018,2.095l-4.082,0c0.147,-1.361,0.982,-2.095,2.064,-2.095l0,0zM86.238,4.422")!


    }

    private func createVector116stroke2() {
        vector116stroke_2 = ShapeView(frame: CGRect(x: 16.8, y: 22.08, width: 7.69, height: 12.5))
        vector116stroke_2.backgroundColor = UIColor.clear
        vector116stroke_2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector116stroke_2.transform = CGAffineTransform(rotationAngle: -1 * CGFloat.pi)
        vector116stroke_2.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector116stroke_2.layer.borderColor = UIColor.clear.cgColor
        vector116stroke_2.layer.name = "vector116stroke_2"
        vector116stroke_2.layer.shadowColor = UIColor.clear.cgColor
        vector116stroke_2.layer.shadowOpacity = 1
        vector116stroke_2.layer.position = CGPoint(x: 16.8, y: 22.08)
        vector116stroke_2.layer.bounds = CGRect(x: 0, y: 0, width: 7.69, height: 12.5)
        vector116stroke_2.layer.masksToBounds = false
        vector116stroke_2.shapeLayer.name = "vector116stroke_2.shapeLayer"
        vector116stroke_2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector116stroke_2.shapeLayer.fillColor = UIColor.white.cgColor
        vector116stroke_2.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vector116stroke_2.shapeLayer.miterLimit = 4
        vector116stroke_2.shapeLayer.lineDashPattern = []
        vector116stroke_2.shapeLayer.lineDashPhase = 0
        vector116stroke_2.shapeLayer.lineWidth = 3
        vector116stroke_2.shapeLayer.path = CGPathCreateWithSVGString("M0.392,0.341c0.502,-0.474,1.294,-0.451,1.768,0.051l5.53,5.858 -5.53,5.858c-0.474,0.502,-1.265,0.525,-1.768,0.051 -0.502,-0.474,-0.525,-1.265,-0.051,-1.767l3.91,-4.142 -3.91,-4.142c-0.474,-0.502,-0.451,-1.293,0.051,-1.767l0,0zM0.392,0.341")!


    }

    private func addSubviews() {
        group671.addSubview(rectangle465)
        group671.addSubview(rectangle465stroke)
        group671.addSubview(byCatalogue)
        group671.addSubview(vector116stroke_2)
        group669.addSubview(group671)
        cataloge.addSubview(group669)
        group670.addSubview(rectangle466)
        group670.addSubview(rectangle466stroke)
        group670.addSubview(vector116stroke_1)
        group670.addSubview(byPhoto)
        photo.addSubview(group670)
        group667.addSubview(rectangle467)
        group667.addSubview(rectangle467stroke)
        group667.addSubview(byName)
        group667.addSubview(vector116stroke)
        name.addSubview(group667)
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
        liLl.addSubview(group554)
        text.addSubview(rectangle389)
        text.addSubview(vector9)
        lill.addSubview(liLl)
        lill.addSubview(text)
        addSubview(iphone480k)
        addSubview(grad)
        addSubview(cataloge)
        addSubview(photo)
        addSubview(name)
        addSubview(lill)
        addSubview(explorePlants)
    }
}
