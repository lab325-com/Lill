// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

//@IBDesignable
public class IPhone13ProMax2View: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 428, height: 926)
        public static let backgroundColor = UIColor.white
    }

    public var iphone480k: ShapeView!
    public var grad: ShapeView!
    public var cataloge: UIView!
    public var photo: UIView!
    public var name: UIView!
    public var lill: UIView!
    public var txt: UIView!
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
            createTxt()
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
        iphone480k = ShapeView(frame: CGRect(x: 75, y: 789, width: 278.69, height: 560))
        iphone480k.backgroundColor = UIColor.clear
        iphone480k.layer.anchorPoint = CGPoint(x: 0, y: 0)
        iphone480k.layer.shadowOffset = CGSize(width: 0, height: 0)
        iphone480k.layer.borderColor = UIColor.clear.cgColor
        iphone480k.layer.name = "iphone480k"
        iphone480k.layer.shadowColor = UIColor.clear.cgColor
        iphone480k.layer.shadowOpacity = 1
        iphone480k.layer.position = CGPoint(x: 75, y: 789)
        iphone480k.layer.bounds = CGRect(x: 0, y: 0, width: 278.69, height: 560)
        iphone480k.layer.masksToBounds = false
        iphone480k.shapeLayer.name = "iphone480k.shapeLayer"
        iphone480k.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        let mask = CAShapeLayer()
        mask.path = CGPathCreateWithSVGString("M0,0l278.69,0 0,560 -278.69,0 0,-560zM0,0")!
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
        iphone480k.shapeLayer.path = CGPathCreateWithSVGString("M0,0l278.69,0 0,560 -278.69,0 0,-560zM0,0")!


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

    private func createCataloge() {
        cataloge = UIView(frame: CGRect(x: 451, y: 638, width: 125.83, height: 30))
        cataloge.backgroundColor = UIColor.clear
        cataloge.layer.anchorPoint = CGPoint(x: 0, y: 0)
        cataloge.layer.shadowOffset = CGSize(width: 0, height: 0)
        cataloge.layer.borderWidth = 1
        cataloge.layer.borderColor = UIColor.clear.cgColor
        cataloge.layer.name = "cataloge"
        cataloge.layer.shadowColor = UIColor.clear.cgColor
        cataloge.layer.shadowOpacity = 1
        cataloge.layer.position = CGPoint(x: 451, y: 638)
        cataloge.layer.bounds = CGRect(x: 0, y: 0, width: 125.83, height: 30)
        cataloge.layer.masksToBounds = false

    }

    private func createPhoto() {
        photo = UIView(frame: CGRect(x: -122, y: 408, width: 100.83, height: 30))
        photo.backgroundColor = UIColor.clear
        photo.layer.anchorPoint = CGPoint(x: 0, y: 0)
        photo.layer.shadowOffset = CGSize(width: 0, height: 0)
        photo.layer.borderWidth = 1
        photo.layer.borderColor = UIColor.clear.cgColor
        photo.layer.name = "photo"
        photo.layer.shadowColor = UIColor.clear.cgColor
        photo.layer.shadowOpacity = 1
        photo.layer.position = CGPoint(x: -122, y: 408)
        photo.layer.bounds = CGRect(x: 0, y: 0, width: 100.83, height: 30)
        photo.layer.masksToBounds = false

    }

    private func createName() {
        name = UIView(frame: CGRect(x: 437, y: 290, width: 95.83, height: 30))
        name.backgroundColor = UIColor.clear
        name.layer.anchorPoint = CGPoint(x: 0, y: 0)
        name.layer.shadowOffset = CGSize(width: 0, height: 0)
        name.layer.borderWidth = 1
        name.layer.borderColor = UIColor.clear.cgColor
        name.layer.name = "name"
        name.layer.shadowColor = UIColor.clear.cgColor
        name.layer.shadowOpacity = 1
        name.layer.position = CGPoint(x: 437, y: 290)
        name.layer.bounds = CGRect(x: 0, y: 0, width: 95.83, height: 30)
        name.layer.masksToBounds = false

    }

    private func createLill() {
        lill = UIView(frame: CGRect(x: 37, y: 74, width: 347, height: 108.19))
        lill.backgroundColor = UIColor.clear
        lill.layer.anchorPoint = CGPoint(x: 0, y: 0)
        lill.layer.shadowOffset = CGSize(width: 0, height: 0)
        lill.layer.borderWidth = 1
        lill.layer.borderColor = UIColor.clear.cgColor
        lill.layer.name = "lill"
        lill.layer.shadowColor = UIColor.clear.cgColor
        lill.layer.shadowOpacity = 1
        lill.layer.position = CGPoint(x: 37, y: 74)
        lill.layer.bounds = CGRect(x: 0, y: 0, width: 347, height: 108.19)
        lill.layer.masksToBounds = false

    }

    private func createTxt() {
        txt = UIView(frame: CGRect(x: 209.84, y: 124, width: 113.98, height: 16.63))
        txt.backgroundColor = UIColor.clear
        txt.layer.anchorPoint = CGPoint(x: 0, y: 0)
        txt.layer.shadowOffset = CGSize(width: 0, height: 0)
        txt.layer.borderWidth = 1
        txt.layer.borderColor = UIColor.clear.cgColor
        txt.layer.name = "txt"
        txt.layer.shadowColor = UIColor.clear.cgColor
        txt.layer.shadowOpacity = 1
        txt.layer.position = CGPoint(x: 209.84, y: 124)
        txt.layer.bounds = CGRect(x: 0, y: 0, width: 113.98, height: 16.63)
        txt.layer.masksToBounds = false

    }

    private func createExplorePlants() {
        explorePlants = ShapeView(frame: CGRect(x: 0, y: 0, width: 113.98, height: 16.63))
        explorePlants.backgroundColor = UIColor.clear
        explorePlants.layer.anchorPoint = CGPoint(x: 0, y: 0)
        explorePlants.layer.shadowOffset = CGSize(width: 0, height: 0)
        explorePlants.layer.borderColor = UIColor.clear.cgColor
        explorePlants.layer.name = "explorePlants"
        explorePlants.layer.shadowColor = UIColor.clear.cgColor
        explorePlants.layer.shadowOpacity = 1
        explorePlants.layer.position = CGPoint(x: 0, y: 0)
        explorePlants.layer.bounds = CGRect(x: 0, y: 0, width: 113.98, height: 16.63)
        explorePlants.layer.masksToBounds = false
        explorePlants.shapeLayer.name = "explorePlants.shapeLayer"
        explorePlants.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        explorePlants.shapeLayer.fillColor = UIColor.white.cgColor
        explorePlants.shapeLayer.miterLimit = 4
        explorePlants.shapeLayer.lineDashPattern = []
        explorePlants.shapeLayer.lineDashPhase = 0
        explorePlants.shapeLayer.lineWidth = 1
        explorePlants.shapeLayer.path = CGPathCreateWithSVGString("M0,13.384l8.498,0 0,-1.79 -6.42,0 0,-4.155 6.077,0 0,-1.744 -6.077,0 0,-3.905 6.42,0 0,-1.79 -8.498,0 0,13.384 0,0zM9.658,13.384l2.171,0 2.162,-3.589 0.046,0 2.162,3.589 2.208,0 -3.173,-4.934 3.21,-4.823 -2.217,0 -2.097,3.534 -0.046,0 -2.124,-3.534 -2.254,0 3.182,4.888 -3.228,4.869 0,0zM19.705,16.63l2.004,0 0,-4.888 0.046,0c0.575,1.132,1.698,1.836,3.08,1.836 2.449,0,4.054,-1.957,4.054,-5.064l0,-0.009c0,-3.116,-1.596,-5.064,-4.082,-5.064 -1.392,0,-2.468,0.705,-3.052,1.864l-0.046,0 0,-1.679 -2.004,0 0,13.004 0,0zM24.288,11.853c-1.512,0,-2.588,-1.317,-2.588,-3.339l0,-0.009c0,-2.031,1.067,-3.348,2.588,-3.348 1.568,0,2.56,1.271,2.56,3.348l0,0.009c0,2.059,-0.983,3.339,-2.56,3.339l0,0zM30.522,13.384l2.004,0 0,-13.384 -2.004,0 0,13.384 0,0zM38.779,13.579c2.792,0,4.629,-1.929,4.629,-5.073l0,-0.019c0,-3.126,-1.855,-5.046,-4.639,-5.046 -2.774,0,-4.62,1.929,-4.62,5.046l0,0.019c0,3.135,1.828,5.073,4.629,5.073l0,0zM38.788,11.9c-1.568,0,-2.588,-1.234,-2.588,-3.395l0,-0.019c0,-2.133,1.03,-3.367,2.57,-3.367 1.568,0,2.588,1.234,2.588,3.367l0,0.019c0,2.152,-1.002,3.395,-2.57,3.395l0,0zM44.957,13.384l2.004,0 0,-5.815c0,-1.456,0.798,-2.3,2.087,-2.3 0.39,0,0.742,0.046,0.9,0.111l0,-1.864c-0.158,-0.028,-0.408,-0.074,-0.696,-0.074 -1.113,0,-1.93,0.714,-2.245,1.855l-0.046,0 0,-1.669 -2.004,0 0,9.757 0,0zM54.931,13.579c2.366,0,3.869,-1.41,4.184,-2.959l0.019,-0.102 -1.902,0 -0.028,0.074c-0.25,0.733,-1.039,1.345,-2.227,1.345 -1.596,0,-2.607,-1.076,-2.644,-2.922l6.912,0 0,-0.677c0,-2.931,-1.679,-4.897,-4.416,-4.897 -2.737,0,-4.499,2.04,-4.499,5.092l0,0.009c0,3.079,1.735,5.036,4.602,5.036l0,0zM54.838,5.083c1.308,0,2.254,0.825,2.421,2.514l-4.898,0c0.176,-1.632,1.178,-2.514,2.477,-2.514l0,0zM64.903,13.384l2.078,0 0,-4.573 2.904,0c2.625,0,4.444,-1.79,4.444,-4.406l0,-0.019c0,-2.625,-1.818,-4.387,-4.444,-4.387l-4.982,0 0,13.384 0,0zM69.366,1.753c1.809,0,2.848,0.974,2.848,2.643l0,0.019c0,1.679,-1.039,2.653,-2.848,2.653l-2.384,0 0,-5.315 2.384,0 0,0zM75.98,13.384l2.004,0 0,-13.384 -2.004,0 0,13.384 0,0zM82.911,13.56c1.29,0,2.421,-0.668,2.987,-1.716l0.037,0 0,1.54 2.013,0 0,-6.724c0,-1.957,-1.512,-3.218,-3.896,-3.218 -2.403,0,-3.859,1.289,-3.998,2.968l-0.009,0.102 1.893,0 0.019,-0.083c0.167,-0.779,0.881,-1.326,2.041,-1.326 1.243,0,1.939,0.649,1.939,1.725l0,0.733 -2.653,0.158c-2.31,0.139,-3.627,1.178,-3.627,2.875l0,0.019c0,1.753,1.308,2.949,3.256,2.949l0,0zM81.677,10.564l0,-0.019c0,-0.825,0.668,-1.354,1.874,-1.428l2.384,-0.148 0,0.761c0,1.271,-1.067,2.226,-2.477,2.226 -1.076,0,-1.781,-0.538,-1.781,-1.391l0,0zM89.896,13.384l2.004,0 0,-5.686c0,-1.521,0.909,-2.541,2.319,-2.541 1.392,0,2.078,0.825,2.078,2.291l0,5.936 2.013,0 0,-6.316c0,-2.245,-1.234,-3.627,-3.377,-3.627 -1.475,0,-2.477,0.668,-2.987,1.66l-0.046,0 0,-1.475 -2.004,0 0,9.757 0,0zM103.673,13.579c0.409,0,0.789,-0.046,1.021,-0.083l0,-1.549c-0.149,0.019,-0.325,0.037,-0.538,0.037 -0.845,0,-1.29,-0.297,-1.29,-1.289l0,-5.472 1.828,0 0,-1.595 -1.828,0 0,-2.541 -2.05,0 0,2.541 -1.401,0 0,1.595 1.401,0 0,5.593c0,1.948,0.928,2.764,2.857,2.764l0,0zM110.01,13.579c2.301,0,3.97,-1.224,3.97,-3.005l0,-0.009c0,-1.401,-0.76,-2.189,-2.755,-2.653l-1.586,-0.362c-1.049,-0.25,-1.448,-0.659,-1.448,-1.261l0,-0.009c0,-0.779,0.678,-1.289,1.754,-1.289 1.132,0,1.8,0.594,1.92,1.447l0.009,0.065 1.884,0 -0.009,-0.111c-0.103,-1.66,-1.494,-2.949,-3.804,-2.949 -2.245,0,-3.767,1.196,-3.767,2.94l0,0.009c0,1.419,0.919,2.309,2.774,2.736l1.596,0.362c1.048,0.25,1.401,0.612,1.401,1.243l0,0.009c0,0.788,-0.724,1.289,-1.93,1.289 -1.234,0,-1.902,-0.529,-2.087,-1.428l-0.019,-0.093 -1.985,0 0.009,0.083c0.204,1.781,1.633,2.987,4.073,2.987l0,0zM110.01,13.579")!


    }

    private func createLiLl() {
        liLl = UIView(frame: CGRect(x: 0, y: 0, width: 127.13, height: 108.19))
        liLl.backgroundColor = UIColor.clear
        liLl.layer.anchorPoint = CGPoint(x: 0, y: 0)
        liLl.layer.shadowOffset = CGSize(width: 0, height: 0)
        liLl.layer.borderWidth = 1
        liLl.layer.borderColor = UIColor.clear.cgColor
        liLl.layer.name = "liLl"
        liLl.layer.shadowColor = UIColor.clear.cgColor
        liLl.layer.shadowOpacity = 1
        liLl.layer.position = CGPoint(x: 0, y: 0)
        liLl.layer.bounds = CGRect(x: 0, y: 0, width: 127.13, height: 108.19)
        liLl.layer.masksToBounds = false

    }

    private func createText() {
        text = UIView(frame: CGRect(x: 94, y: 23, width: 253, height: 68))
        text.backgroundColor = UIColor.clear
        text.layer.anchorPoint = CGPoint(x: 0, y: 0)
        text.layer.shadowOffset = CGSize(width: 0, height: 6)
        text.layer.shadowRadius = 12
        text.layer.borderWidth = 1
        text.layer.borderColor = UIColor.clear.cgColor
        text.layer.name = "text"
        text.layer.shadowColor = UIColor(red: 0.976, green: 0.38, blue: 0.38, alpha: 0.4).cgColor
        text.layer.shadowOpacity = 1
        text.layer.position = CGPoint(x: 94, y: 23)
        text.layer.bounds = CGRect(x: 0, y: 0, width: 253, height: 68)
        text.layer.masksToBounds = false

    }

    private func createRectangle389() {
        rectangle389 = ShapeView(frame: CGRect(x: 253, y: 68, width: 232, height: 68))
        rectangle389.backgroundColor = UIColor.clear
        rectangle389.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle389.transform = CGAffineTransform(rotationAngle: 1 * CGFloat.pi)
        rectangle389.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle389.layer.borderColor = UIColor.clear.cgColor
        rectangle389.layer.name = "rectangle389"
        rectangle389.layer.shadowColor = UIColor.clear.cgColor
        rectangle389.layer.shadowOpacity = 1
        rectangle389.layer.position = CGPoint(x: 253, y: 68)
        rectangle389.layer.bounds = CGRect(x: 0, y: 0, width: 232, height: 68)
        rectangle389.layer.masksToBounds = false
        rectangle389.shapeLayer.name = "rectangle389.shapeLayer"
        rectangle389.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle389.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle389.shapeLayer.miterLimit = 4
        rectangle389.shapeLayer.lineDashPattern = []
        rectangle389.shapeLayer.lineDashPhase = 0
        rectangle389.shapeLayer.lineWidth = 1
        rectangle389.shapeLayer.path = CGPathCreateWithSVGString("M0,24c0,-13.255,10.745,-24,24,-24l184,0c13.255,0,24,10.745,24,24l0,20c0,13.255,-10.745,24,-24,24l-184,0c-13.255,0,-24,-10.745,-24,-24l0,-20 0,0zM0,24")!


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
        vector_9.shapeLayer.path = CGPathCreateWithSVGString("M14.665,1.366c7.277,2.145,12.547,6.058,11.769,8.74 -0.778,2.681,-7.31,3.117,-14.596,0.972 -7.285,-2.145,-12.547,-6.058,-11.76,-8.74 0.786,-2.681,7.31,-3.126,14.587,-0.972l0,0zM14.665,1.366")!

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
        vector_12.shapeLayer.path = CGPathCreateWithSVGString("M1.114,0.059c0.196,0.079,0.353,0.232,0.438,0.426 0.085,0.194,0.09,0.413,0.016,0.611 -0.057,0.151,-0.157,0.281,-0.289,0.374 -0.131,0.093,-0.287,0.145,-0.448,0.149 -0.161,0.004,-0.32,-0.04,-0.455,-0.126 -0.136,-0.086,-0.243,-0.211,-0.307,-0.359 -0.065,-0.148,-0.084,-0.311,-0.055,-0.469 0.029,-0.158,0.104,-0.305,0.216,-0.42 0.112,-0.115,0.256,-0.195,0.414,-0.228 0.158,-0.033,0.321,-0.018,0.471,0.042l0,0zM1.114,0.059")!


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
        vector_14.shapeLayer.path = CGPathCreateWithSVGString("M1.086,0.049c0.152,0.055,0.283,0.154,0.378,0.284 0.095,0.13,0.149,0.286,0.155,0.447 0.006,0.161,-0.036,0.32,-0.121,0.457 -0.085,0.137,-0.209,0.245,-0.356,0.311 -0.147,0.066,-0.311,0.087,-0.47,0.059 -0.159,-0.027,-0.306,-0.102,-0.422,-0.213 -0.116,-0.112,-0.197,-0.255,-0.231,-0.413 -0.034,-0.158,-0.021,-0.322,0.039,-0.472 0.078,-0.196,0.229,-0.353,0.421,-0.439 0.192,-0.086,0.41,-0.094,0.608,-0.022l0,0zM1.086,0.049")!


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
        vector_21.shapeLayer.path = CGPathCreateWithSVGString("M8.11,20.162c0,0,-0.284,0.379,-2.659,0.379 -0.969,0.064,-1.942,-0.042,-2.876,-0.312 -0.217,-9.664,-1.062,-20.239,-2.575,-20.147 1.448,-0.18,2.917,-0.068,4.323,0.329 0,0,2.374,11.503,3.787,19.75l0,0zM8.11,20.162")!

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
        vector_24.shapeLayer.path = CGPathCreateWithSVGString("M0,46.225c0,0,26.531,3.346,35.796,-12.49 8.561,-14.624,5.504,-23.801,18.304,-33.355 0,-0.736,-26.112,-2.426,-34.112,17.953 -5.864,14.891,-7.347,21.283,-19.988,27.892l0,0zM0,46.225")!

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
        vector_25.shapeLayer.path = CGPathCreateWithSVGString("M0,1.527c0,0,1.355,29.327,28.87,36.623 25.724,6.819,35.588,4.468,38.198,13.772 0.159,0.561,-0.837,-31.025,-28.092,-39.861 -17.919,-5.857,-32.317,-2.351,-38.482,-12.057 0,0,0,-0.084,-0.201,0.46 -0.129,0.345,-0.227,0.701,-0.293,1.063l0,0zM0,1.527")!

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
        rectangle467.shapeLayer.path = CGPathCreateWithSVGString("M0,15c0,-8.284,6.715,-15,14.999,-15l65.831,0c8.284,0,14.999,6.716,14.999,15l0,0c0,8.284,-6.715,15,-14.999,15l-65.831,0c-8.284,0,-14.999,-6.716,-14.999,-15l0,0 0,0zM0,15")!


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
        rectangle465.shapeLayer.path = CGPathCreateWithSVGString("M0,15c0,-8.284,6.716,-15,15,-15l95.83,0c8.285,0,15,6.716,15,15l0,0c0,8.284,-6.715,15,-15,15l-95.83,0c-8.284,0,-15,-6.716,-15,-15l0,0 0,0zM0,15")!


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
        txt.addSubview(explorePlants)
        addSubview(iphone480k)
        addSubview(grad)
        addSubview(cataloge)
        addSubview(photo)
        addSubview(name)
        addSubview(lill)
        addSubview(txt)
    }
}
