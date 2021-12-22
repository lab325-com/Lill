// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

//@IBDesignable
public class IPhone82View: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 375, height: 667)
        public static let backgroundColor = UIColor.white
    }

    public var lill: UIView!
    public var explorePlants: ShapeView!
    public var iphone480k: ShapeView!
    public var grad: ShapeView!
    public var cataloge: UIView!
    public var photo: UIView!
    public var name: UIView!
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
            createLill()
            createExplorePlants()
            createIphone480k()
            createGrad()
            createCataloge()
            createPhoto()
            createName()
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
        }
    }

    private func createLill() {
        lill = UIView(frame: CGRect(x: 24, y: 42, width: 324, height: 101.02))
        lill.backgroundColor = UIColor.clear
        lill.layer.anchorPoint = CGPoint(x: 0, y: 0)
        lill.layer.shadowOffset = CGSize(width: 0, height: 0)
        lill.layer.borderWidth = 1
        lill.layer.borderColor = UIColor.clear.cgColor
        lill.layer.name = "lill"
        lill.layer.shadowColor = UIColor.clear.cgColor
        lill.layer.shadowOpacity = 1
        lill.layer.position = CGPoint(x: 24, y: 42)
        lill.layer.bounds = CGRect(x: 0, y: 0, width: 324, height: 101.02)
        lill.layer.masksToBounds = false

    }

    private func createExplorePlants() {
        explorePlants = ShapeView(frame: CGRect(x: 185, y: 89, width: 107, height: 15))
        explorePlants.backgroundColor = UIColor.clear
        explorePlants.layer.anchorPoint = CGPoint(x: 0, y: 0)
        explorePlants.layer.shadowOffset = CGSize(width: 0, height: 0)
        explorePlants.layer.borderColor = UIColor.clear.cgColor
        explorePlants.layer.name = "explorePlants"
        explorePlants.layer.shadowColor = UIColor.clear.cgColor
        explorePlants.layer.shadowOpacity = 1
        explorePlants.layer.position = CGPoint(x: 185, y: 89)
        explorePlants.layer.bounds = CGRect(x: 0, y: 0, width: 107, height: 15)
        explorePlants.layer.masksToBounds = false
        explorePlants.shapeLayer.name = "explorePlants.shapeLayer"
        explorePlants.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        explorePlants.shapeLayer.fillColor = UIColor.white.cgColor
        explorePlants.shapeLayer.miterLimit = 4
        explorePlants.shapeLayer.lineDashPattern = []
        explorePlants.shapeLayer.lineDashPhase = 0
        explorePlants.shapeLayer.lineWidth = 1
        explorePlants.shapeLayer.path = CGPathCreateWithSVGString("M0,12.072l7.978,0 0,-1.615 -6.027,0 0,-3.748 5.704,0 0,-1.573 -5.704,0 0,-3.522 6.027,0 0,-1.615 -7.978,0 0,12.072 0,0zM9.066,12.072l2.038,0 2.029,-3.238 0.044,0 2.029,3.238 2.073,0 -2.979,-4.451 3.013,-4.35 -2.081,0 -1.968,3.187 -0.044,0 -1.994,-3.187 -2.116,0 2.987,4.409 -3.031,4.392 0,0zM18.498,15l1.881,0 0,-4.409 0.043,0c0.54,1.021,1.594,1.656,2.891,1.656 2.299,0,3.806,-1.765,3.806,-4.568l0,-0.008c0,-2.811,-1.498,-4.568,-3.832,-4.568 -1.306,0,-2.317,0.636,-2.865,1.682l-0.043,0 0,-1.514 -1.881,0 0,11.729 0,0zM22.8,10.692c-1.42,0,-2.43,-1.188,-2.43,-3.012l0,-0.008c0,-1.832,1.001,-3.02,2.43,-3.02 1.472,0,2.404,1.146,2.404,3.02l0,0.008c0,1.857,-0.923,3.012,-2.404,3.012l0,0zM28.653,12.072l1.881,0 0,-12.072 -1.881,0 0,12.072 0,0zM36.404,12.248c2.622,0,4.346,-1.74,4.346,-4.576l0,-0.017c0,-2.819,-1.742,-4.551,-4.355,-4.551 -2.604,0,-4.337,1.74,-4.337,4.551l0,0.017c0,2.828,1.716,4.576,4.346,4.576l0,0zM36.413,10.733c-1.472,0,-2.43,-1.113,-2.43,-3.062l0,-0.017c0,-1.924,0.967,-3.037,2.412,-3.037 1.472,0,2.43,1.113,2.43,3.037l0,0.017c0,1.941,-0.941,3.062,-2.413,3.062l0,0zM42.204,12.072l1.881,0 0,-5.245c0,-1.313,0.749,-2.075,1.959,-2.075 0.366,0,0.697,0.042,0.845,0.1l0,-1.682c-0.148,-0.025,-0.383,-0.067,-0.653,-0.067 -1.045,0,-1.812,0.644,-2.108,1.673l-0.043,0 0,-1.506 -1.881,0 0,8.801 0,0zM51.567,12.248c2.221,0,3.632,-1.272,3.928,-2.669l0.017,-0.092 -1.785,0 -0.026,0.067c-0.235,0.661,-0.975,1.213,-2.09,1.213 -1.498,0,-2.447,-0.97,-2.482,-2.635l6.488,0 0,-0.611c0,-2.644,-1.576,-4.417,-4.145,-4.417 -2.569,0,-4.224,1.84,-4.224,4.593l0,0.008c0,2.777,1.629,4.543,4.32,4.543l0,0zM51.479,4.584c1.228,0,2.116,0.745,2.273,2.267l-4.598,0c0.165,-1.472,1.106,-2.267,2.325,-2.267l0,0zM60.929,12.072l1.951,0 0,-4.124 2.726,0c2.465,0,4.172,-1.615,4.172,-3.974l0,-0.017c0,-2.368,-1.707,-3.957,-4.172,-3.957l-4.677,0 0,12.072 0,0zM65.118,1.581c1.698,0,2.674,0.878,2.674,2.384l0,0.017c0,1.514,-0.975,2.393,-2.674,2.393l-2.238,0 0,-4.794 2.238,0 0,0zM71.328,12.072l1.881,0 0,-12.072 -1.881,0 0,12.072 0,0zM77.833,12.231c1.211,0,2.273,-0.602,2.804,-1.548l0.035,0 0,1.389 1.89,0 0,-6.065c0,-1.765,-1.42,-2.903,-3.658,-2.903 -2.256,0,-3.623,1.163,-3.754,2.677l-0.009,0.092 1.777,0 0.017,-0.075c0.157,-0.703,0.827,-1.196,1.916,-1.196 1.167,0,1.82,0.586,1.82,1.556l0,0.661 -2.491,0.142c-2.169,0.125,-3.405,1.062,-3.405,2.593l0,0.017c0,1.581,1.228,2.66,3.057,2.66l0,0zM76.675,9.529l0,-0.017c0,-0.745,0.627,-1.221,1.759,-1.288l2.238,-0.134 0,0.686c0,1.146,-1.002,2.008,-2.325,2.008 -1.01,0,-1.672,-0.485,-1.672,-1.255l0,0zM84.391,12.072l1.881,0 0,-5.128c0,-1.372,0.853,-2.292,2.177,-2.292 1.306,0,1.951,0.745,1.951,2.066l0,5.354 1.89,0 0,-5.697c0,-2.025,-1.158,-3.271,-3.17,-3.271 -1.385,0,-2.325,0.602,-2.804,1.497l-0.044,0 0,-1.33 -1.881,0 0,8.801 0,0zM97.324,12.248c0.383,0,0.74,-0.042,0.958,-0.075l0,-1.397c-0.139,0.017,-0.305,0.033,-0.505,0.033 -0.793,0,-1.211,-0.268,-1.211,-1.163l0,-4.936 1.716,0 0,-1.439 -1.716,0 0,-2.292 -1.925,0 0,2.292 -1.315,0 0,1.439 1.315,0 0,5.045c0,1.757,0.871,2.493,2.682,2.493l0,0zM103.272,12.248c2.16,0,3.728,-1.104,3.728,-2.711l0,-0.008c0,-1.263,-0.714,-1.974,-2.587,-2.393l-1.489,-0.326c-0.984,-0.226,-1.358,-0.594,-1.358,-1.138l0,-0.008c0,-0.703,0.635,-1.163,1.646,-1.163 1.062,0,1.689,0.535,1.802,1.305l0.009,0.059 1.768,0 -0.009,-0.1c-0.096,-1.497,-1.402,-2.66,-3.57,-2.66 -2.108,0,-3.536,1.079,-3.536,2.652l0,0.008c0,1.28,0.862,2.083,2.604,2.468l1.498,0.326c0.984,0.226,1.315,0.552,1.315,1.121l0,0.008c0,0.711,-0.68,1.163,-1.812,1.163 -1.158,0,-1.785,-0.477,-1.959,-1.288l-0.018,-0.084 -1.864,0 0.009,0.075c0.192,1.606,1.533,2.694,3.823,2.694l0,0zM103.272,12.248")!


    }

    private func createIphone480k() {
        iphone480k = ShapeView(frame: CGRect(x: 66, y: 627, width: 243, height: 491))
        iphone480k.backgroundColor = UIColor.clear
        iphone480k.layer.anchorPoint = CGPoint(x: 0, y: 0)
        iphone480k.layer.shadowOffset = CGSize(width: 0, height: 0)
        iphone480k.layer.borderColor = UIColor.clear.cgColor
        iphone480k.layer.name = "iphone480k"
        iphone480k.layer.shadowColor = UIColor.clear.cgColor
        iphone480k.layer.shadowOpacity = 1
        iphone480k.layer.position = CGPoint(x: 66, y: 627)
        iphone480k.layer.bounds = CGRect(x: 0, y: 0, width: 243, height: 491)
        iphone480k.layer.masksToBounds = false
        iphone480k.shapeLayer.name = "iphone480k.shapeLayer"
        iphone480k.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        let mask = CAShapeLayer()
        mask.path = CGPathCreateWithSVGString("M0,0l243,0 0,491 -243,0 0,-491zM0,0")!
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
        iphone480k.shapeLayer.path = CGPathCreateWithSVGString("M0,0l243,0 0,491 -243,0 0,-491zM0,0")!


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

    private func createCataloge() {
        cataloge = UIView(frame: CGRect(x: 392, y: 482, width: 125.83, height: 30))
        cataloge.backgroundColor = UIColor.clear
        cataloge.layer.anchorPoint = CGPoint(x: 0, y: 0)
        cataloge.layer.shadowOffset = CGSize(width: 0, height: 0)
        cataloge.layer.borderWidth = 1
        cataloge.layer.borderColor = UIColor.clear.cgColor
        cataloge.layer.name = "cataloge"
        cataloge.layer.shadowColor = UIColor.clear.cgColor
        cataloge.layer.shadowOpacity = 1
        cataloge.layer.position = CGPoint(x: 392, y: 482)
        cataloge.layer.bounds = CGRect(x: 0, y: 0, width: 125.83, height: 30)
        cataloge.layer.masksToBounds = false

    }

    private func createPhoto() {
        photo = UIView(frame: CGRect(x: -122, y: 285, width: 100.83, height: 30))
        photo.backgroundColor = UIColor.clear
        photo.layer.anchorPoint = CGPoint(x: 0, y: 0)
        photo.layer.shadowOffset = CGSize(width: 0, height: 0)
        photo.layer.borderWidth = 1
        photo.layer.borderColor = UIColor.clear.cgColor
        photo.layer.name = "photo"
        photo.layer.shadowColor = UIColor.clear.cgColor
        photo.layer.shadowOpacity = 1
        photo.layer.position = CGPoint(x: -122, y: 285)
        photo.layer.bounds = CGRect(x: 0, y: 0, width: 100.83, height: 30)
        photo.layer.masksToBounds = false

    }

    private func createName() {
        name = UIView(frame: CGRect(x: 388, y: 192, width: 95.83, height: 30))
        name.backgroundColor = UIColor.clear
        name.layer.anchorPoint = CGPoint(x: 0, y: 0)
        name.layer.shadowOffset = CGSize(width: 0, height: 0)
        name.layer.borderWidth = 1
        name.layer.borderColor = UIColor.clear.cgColor
        name.layer.name = "name"
        name.layer.shadowColor = UIColor.clear.cgColor
        name.layer.shadowOpacity = 1
        name.layer.position = CGPoint(x: 388, y: 192)
        name.layer.bounds = CGRect(x: 0, y: 0, width: 95.83, height: 30)
        name.layer.masksToBounds = false

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

    private func createLiLl() {
        liLl = UIView(frame: CGRect(x: 0, y: 0, width: 118.7, height: 101.02))
        liLl.backgroundColor = UIColor.clear
        liLl.layer.anchorPoint = CGPoint(x: 0, y: 0)
        liLl.layer.shadowOffset = CGSize(width: 0, height: 0)
        liLl.layer.borderWidth = 1
        liLl.layer.borderColor = UIColor.clear.cgColor
        liLl.layer.name = "liLl"
        liLl.layer.shadowColor = UIColor.clear.cgColor
        liLl.layer.shadowOpacity = 1
        liLl.layer.position = CGPoint(x: 0, y: 0)
        liLl.layer.bounds = CGRect(x: 0, y: 0, width: 118.7, height: 101.02)
        liLl.layer.masksToBounds = false

    }

    private func createText() {
        text = UIView(frame: CGRect(x: 87.77, y: 21.48, width: 236.23, height: 63.49))
        text.backgroundColor = UIColor.clear
        text.layer.anchorPoint = CGPoint(x: 0, y: 0)
        text.layer.shadowOffset = CGSize(width: 0, height: 6)
        text.layer.shadowRadius = 12
        text.layer.borderWidth = 1
        text.layer.borderColor = UIColor.clear.cgColor
        text.layer.name = "text"
        text.layer.shadowColor = UIColor(red: 0.976, green: 0.38, blue: 0.38, alpha: 0.4).cgColor
        text.layer.shadowOpacity = 1
        text.layer.position = CGPoint(x: 87.77, y: 21.48)
        text.layer.bounds = CGRect(x: 0, y: 0, width: 236.23, height: 63.49)
        text.layer.masksToBounds = false

    }

    private func createRectangle389() {
        rectangle389 = ShapeView(frame: CGRect(x: 236.23, y: 63.49, width: 216.62, height: 63.49))
        rectangle389.backgroundColor = UIColor.clear
        rectangle389.layer.anchorPoint = CGPoint(x: 0, y: 0)
        rectangle389.transform = CGAffineTransform(rotationAngle: 1 * CGFloat.pi)
        rectangle389.layer.shadowOffset = CGSize(width: 0, height: 0)
        rectangle389.layer.borderColor = UIColor.clear.cgColor
        rectangle389.layer.name = "rectangle389"
        rectangle389.layer.shadowColor = UIColor.clear.cgColor
        rectangle389.layer.shadowOpacity = 1
        rectangle389.layer.position = CGPoint(x: 236.23, y: 63.49)
        rectangle389.layer.bounds = CGRect(x: 0, y: 0, width: 216.62, height: 63.49)
        rectangle389.layer.masksToBounds = false
        rectangle389.shapeLayer.name = "rectangle389.shapeLayer"
        rectangle389.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rectangle389.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        rectangle389.shapeLayer.miterLimit = 4
        rectangle389.shapeLayer.lineDashPattern = []
        rectangle389.shapeLayer.lineDashPhase = 0
        rectangle389.shapeLayer.lineWidth = 1
        rectangle389.shapeLayer.path = CGPathCreateWithSVGString("M0,22.408c0,-12.376,10.033,-22.408,22.409,-22.408l171.802,0c12.376,0,22.409,10.032,22.409,22.408l0,18.673c0,12.376,-10.033,22.408,-22.409,22.408l-171.802,0c-12.376,0,-22.409,-10.032,-22.409,-22.408l0,-18.673 0,0zM0,22.408")!


    }

    private func createVector99() {
        vector9 = ShapeView(frame: CGRect(x: 0, y: 38.28, width: 42.23, height: 25.21))
        vector9.backgroundColor = UIColor.clear
        vector9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector9.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector9.layer.borderColor = UIColor.clear.cgColor
        vector9.layer.name = "vector9"
        vector9.layer.shadowColor = UIColor.clear.cgColor
        vector9.layer.shadowOpacity = 1
        vector9.layer.position = CGPoint(x: 0, y: 38.28)
        vector9.layer.bounds = CGRect(x: 0, y: 0, width: 42.23, height: 25.21)
        vector9.layer.masksToBounds = false
        vector9.shapeLayer.name = "vector9.shapeLayer"
        vector9.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector9.shapeLayer.fillColor = UIColor(red: 0.975, green: 0.382, blue: 0.382, alpha: 1).cgColor
        vector9.shapeLayer.miterLimit = 4
        vector9.shapeLayer.lineDashPattern = []
        vector9.shapeLayer.lineDashPhase = 0
        vector9.shapeLayer.lineWidth = 1
        vector9.shapeLayer.path = CGPathCreateWithSVGString("M0,25.21l37.426,-25.21 4.804,25.21 -42.23,0 0,0zM0,25.21")!


    }

    private func createGroup554() {
        group554 = UIView(frame: CGRect(x: 0, y: 0, width: 118.7, height: 101.02))
        group554.backgroundColor = UIColor.clear
        group554.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group554.layer.shadowOffset = CGSize(width: 0, height: 0)
        group554.layer.borderWidth = 1
        group554.layer.borderColor = UIColor.clear.cgColor
        group554.layer.name = "group554"
        group554.layer.shadowColor = UIColor.clear.cgColor
        group554.layer.shadowOpacity = 1
        group554.layer.position = CGPoint(x: 0, y: 0)
        group554.layer.bounds = CGRect(x: 0, y: 0, width: 118.7, height: 101.02)
        group554.layer.masksToBounds = false

    }

    private func createGroup564() {
        group564 = UIView(frame: CGRect(x: 0, y: 0, width: 118.7, height: 101.02))
        group564.backgroundColor = UIColor.clear
        group564.layer.anchorPoint = CGPoint(x: 0, y: 0)
        group564.layer.shadowOffset = CGSize(width: 0, height: 0)
        group564.layer.borderWidth = 1
        group564.layer.borderColor = UIColor.clear.cgColor
        group564.layer.name = "group564"
        group564.layer.shadowColor = UIColor.clear.cgColor
        group564.layer.shadowOpacity = 1
        group564.layer.position = CGPoint(x: 0, y: 0)
        group564.layer.bounds = CGRect(x: 0, y: 0, width: 118.7, height: 101.02)
        group564.layer.masksToBounds = false

    }

    private func createVector() {
        vector = ShapeView(frame: CGRect(x: 9.6, y: 45.46, width: 91.42, height: 55.56))
        vector.backgroundColor = UIColor.clear
        vector.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector.layer.borderColor = UIColor.clear.cgColor
        vector.layer.name = "vector"
        vector.layer.shadowColor = UIColor.clear.cgColor
        vector.layer.shadowOpacity = 1
        vector.layer.position = CGPoint(x: 9.6, y: 45.46)
        vector.layer.bounds = CGRect(x: 0, y: 0, width: 91.42, height: 55.56)
        vector.layer.masksToBounds = false
        vector.shapeLayer.name = "vector.shapeLayer"
        vector.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector.shapeLayer.fillColor = nil
        vector.shapeLayer.miterLimit = 4
        vector.shapeLayer.lineDashPattern = []
        vector.shapeLayer.lineDashPhase = 0
        vector.shapeLayer.lineWidth = 1
        vector.shapeLayer.path = CGPathCreateWithSVGString("M46.64,55.56c9.876,0,30.794,-0.569,35.013,-13.032 4.219,-12.463,8.728,-33.848,9.767,-42.528 -11.424,4.172,-20.464,5.615,-45.71,5.615 -25.246,0,-32.435,-1.154,-45.71,-5.615 1.492,11.199,5.345,29.106,9.767,42.115 4.423,13.009,26.988,13.445,36.873,13.445l0,0zM46.64,55.56")!

        let startPoint = CGPoint(x: 0.508, y: 0.498)
        let endPoint = CGPoint(x: 1.24699, y: 2.00308)
        let colors = [UIColor(red: 1, green: 0.725, blue: 0.561, alpha: 1).cgColor, UIColor(red: 0.996, green: 0.804, blue: 0.647, alpha: 1).cgColor, UIColor(red: 0.992, green: 0.867, blue: 0.714, alpha: 1).cgColor, UIColor(red: 0.988, green: 0.914, blue: 0.765, alpha: 1).cgColor, UIColor(red: 0.988, green: 0.937, blue: 0.792, alpha: 1).cgColor, UIColor(red: 0.988, green: 0.945, blue: 0.8, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.1), NSNumber(value: 0.21), NSNumber(value: 0.36), NSNumber(value: 0.55), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector1() {
        vector_1 = ShapeView(frame: CGRect(x: 10.61, y: 43.94, width: 88.9, height: 22.22))
        vector_1.backgroundColor = UIColor.clear
        vector_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_1.layer.borderColor = UIColor.clear.cgColor
        vector_1.layer.name = "vector_1"
        vector_1.layer.shadowColor = UIColor.clear.cgColor
        vector_1.layer.shadowOpacity = 1
        vector_1.layer.position = CGPoint(x: 10.61, y: 43.94)
        vector_1.layer.bounds = CGRect(x: 0, y: 0, width: 88.9, height: 22.22)
        vector_1.layer.masksToBounds = false
        vector_1.shapeLayer.name = "vector_1.shapeLayer"
        vector_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_1.shapeLayer.fillColor = nil
        vector_1.shapeLayer.miterLimit = 4
        vector_1.shapeLayer.lineDashPattern = []
        vector_1.shapeLayer.lineDashPhase = 0
        vector_1.shapeLayer.lineWidth = 1
        vector_1.shapeLayer.path = CGPathCreateWithSVGString("M42.028,22.201c-19.147,-0.087,-34.459,-2.783,-40.958,-6.607 0,0,-0.578,-3.02,-0.852,-4.581 -0.172,-0.97,-0.594,-2.176,0.562,-3.02 6.71,-4.92,26.069,-6.426,48.77,-6.308 1.07,0,26.045,-3.942,33.232,0.229 2.64,1.53,4.859,2.807,5.875,4.959 0.625,1.325,-0.156,4.352,-0.156,4.352l-1.023,5.196c-9.07,3.548,-25.616,5.89,-45.45,5.795l0,-0.016 0,0zM42.028,22.201")!

        let startPoint = CGPoint(x: 0.506, y: 0.528)
        let endPoint = CGPoint(x: 0.934498, y: 1.00946)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.77).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.5).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.28).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.13).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.03).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.18), NSNumber(value: 0.4), NSNumber(value: 0.6), NSNumber(value: 0.78), NSNumber(value: 0.92), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_1.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector2() {
        vector_2 = ShapeView(frame: CGRect(x: 7.07, y: 39.9, width: 95.46, height: 19.7))
        vector_2.backgroundColor = UIColor.clear
        vector_2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_2.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_2.layer.borderColor = UIColor.clear.cgColor
        vector_2.layer.name = "vector_2"
        vector_2.layer.shadowColor = UIColor.clear.cgColor
        vector_2.layer.shadowOpacity = 1
        vector_2.layer.position = CGPoint(x: 7.07, y: 39.9)
        vector_2.layer.bounds = CGRect(x: 0, y: 0, width: 95.46, height: 19.7)
        vector_2.layer.masksToBounds = false
        vector_2.shapeLayer.name = "vector_2.shapeLayer"
        vector_2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_2.shapeLayer.fillColor = UIColor(red: 0.988, green: 0.945, blue: 0.8, alpha: 1).cgColor
        vector_2.shapeLayer.miterLimit = 4
        vector_2.shapeLayer.lineDashPattern = []
        vector_2.shapeLayer.lineDashPhase = 0
        vector_2.shapeLayer.lineWidth = 1
        vector_2.shapeLayer.path = CGPathCreateWithSVGString("M0,0.08l1.81,13.37c0,0,11.668,6.25,47.746,6.25 32.473,0,44.337,-6.147,44.337,-6.147l1.567,-13.553c-15.599,3.141,-31.46,4.742,-47.362,4.783 -38.233,-0.255,-48.098,-4.704,-48.098,-4.704l0,0zM0,0.08")!


    }

    private func createVector3() {
        vector_3 = ShapeView(frame: CGRect(x: 7.07, y: 34.85, width: 95.46, height: 10.1))
        vector_3.backgroundColor = UIColor.clear
        vector_3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_3.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_3.layer.borderColor = UIColor.clear.cgColor
        vector_3.layer.name = "vector_3"
        vector_3.layer.shadowColor = UIColor.clear.cgColor
        vector_3.layer.shadowOpacity = 1
        vector_3.layer.position = CGPoint(x: 7.07, y: 34.85)
        vector_3.layer.bounds = CGRect(x: 0, y: 0, width: 95.46, height: 10.1)
        vector_3.layer.masksToBounds = false
        vector_3.shapeLayer.name = "vector_3.shapeLayer"
        vector_3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_3.shapeLayer.fillColor = UIColor(red: 1, green: 0.973, blue: 0.91, alpha: 1).cgColor
        vector_3.shapeLayer.miterLimit = 4
        vector_3.shapeLayer.lineDashPattern = []
        vector_3.shapeLayer.lineDashPhase = 0
        vector_3.shapeLayer.lineWidth = 1
        vector_3.shapeLayer.path = CGPathCreateWithSVGString("M47.73,10.1c26.361,0,47.73,-2.261,47.73,-5.05 0,-2.789,-21.369,-5.05,-47.73,-5.05 -26.36,0,-47.73,2.261,-47.73,5.05 0,2.789,21.369,5.05,47.73,5.05l0,0zM47.73,10.1")!


    }

    private func createVector4() {
        vector_4 = ShapeView(frame: CGRect(x: 7.07, y: 34.85, width: 95.46, height: 10.1))
        vector_4.backgroundColor = UIColor.clear
        vector_4.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_4.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_4.layer.borderColor = UIColor.clear.cgColor
        vector_4.layer.name = "vector_4"
        vector_4.layer.shadowColor = UIColor.clear.cgColor
        vector_4.layer.shadowOpacity = 1
        vector_4.layer.position = CGPoint(x: 7.07, y: 34.85)
        vector_4.layer.bounds = CGRect(x: 0, y: 0, width: 95.46, height: 10.1)
        vector_4.layer.masksToBounds = false
        vector_4.shapeLayer.name = "vector_4.shapeLayer"
        vector_4.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_4.shapeLayer.fillColor = nil
        vector_4.shapeLayer.miterLimit = 4
        vector_4.shapeLayer.lineDashPattern = []
        vector_4.shapeLayer.lineDashPhase = 0
        vector_4.shapeLayer.lineWidth = 1
        vector_4.shapeLayer.path = CGPathCreateWithSVGString("M47.73,10.1c26.361,0,47.73,-2.261,47.73,-5.05 0,-2.789,-21.369,-5.05,-47.73,-5.05 -26.36,0,-47.73,2.261,-47.73,5.05 0,2.789,21.369,5.05,47.73,5.05l0,0zM47.73,10.1")!

        let startPoint = CGPoint(x: 0.501, y: 0.502)
        let endPoint = CGPoint(x: 1.28818, y: 1.0066)
        let colors = [UIColor(red: 1, green: 0.655, blue: 0.541, alpha: 1).cgColor, UIColor(red: 1, green: 0.659, blue: 0.545, alpha: 0.98).cgColor, UIColor(red: 1, green: 0.675, blue: 0.557, alpha: 0.94).cgColor, UIColor(red: 1, green: 0.694, blue: 0.576, alpha: 0.86).cgColor, UIColor(red: 0.996, green: 0.725, blue: 0.608, alpha: 0.75).cgColor, UIColor(red: 0.996, green: 0.769, blue: 0.643, alpha: 0.61).cgColor, UIColor(red: 0.992, green: 0.816, blue: 0.686, alpha: 0.44).cgColor, UIColor(red: 0.992, green: 0.875, blue: 0.741, alpha: 0.24).cgColor, UIColor(red: 0.988, green: 0.941, blue: 0.8, alpha: 0.01).cgColor, UIColor(red: 0.988, green: 0.945, blue: 0.804, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.13), NSNumber(value: 0.25), NSNumber(value: 0.38), NSNumber(value: 0.5), NSNumber(value: 0.63), NSNumber(value: 0.75), NSNumber(value: 0.87), NSNumber(value: 0.99), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_4.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector5() {
        vector_5 = ShapeView(frame: CGRect(x: 14.65, y: 65.16, width: 36.37, height: 30.81))
        vector_5.backgroundColor = UIColor.clear
        vector_5.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_5.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_5.layer.borderColor = UIColor.clear.cgColor
        vector_5.layer.name = "vector_5"
        vector_5.layer.shadowColor = UIColor.clear.cgColor
        vector_5.layer.shadowOpacity = 1
        vector_5.layer.position = CGPoint(x: 14.65, y: 65.16)
        vector_5.layer.bounds = CGRect(x: 0, y: 0, width: 36.37, height: 30.81)
        vector_5.layer.masksToBounds = false
        vector_5.shapeLayer.name = "vector_5.shapeLayer"
        vector_5.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_5.shapeLayer.fillColor = nil
        vector_5.shapeLayer.miterLimit = 4
        vector_5.shapeLayer.lineDashPattern = []
        vector_5.shapeLayer.lineDashPhase = 0
        vector_5.shapeLayer.lineWidth = 1
        vector_5.shapeLayer.path = CGPathCreateWithSVGString("M36.111,18.491c-1.69,-8.345,-11.282,-16.478,-21.395,-18.171 -7.634,-1.275,-13.058,1.338,-14.716,6.346l2.747,10.235c1.164,2.27,2.735,4.309,4.634,6.015 9.474,8.44,16.224,7.873,16.224,7.873 8.566,0.394,14.045,-4.74,12.506,-12.298l0,0zM36.111,18.491")!

        let startPoint = CGPoint(x: 0.499, y: 0.498)
        let endPoint = CGPoint(x: 0.801602, y: 1.05941)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.76).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.53).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.34).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.19).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.09).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.02).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.16), NSNumber(value: 0.32), NSNumber(value: 0.49), NSNumber(value: 0.64), NSNumber(value: 0.78), NSNumber(value: 0.9), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_5.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector6() {
        vector_6 = ShapeView(frame: CGRect(x: 59.6, y: 65.16, width: 35.86, height: 30.81))
        vector_6.backgroundColor = UIColor.clear
        vector_6.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_6.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_6.layer.borderColor = UIColor.clear.cgColor
        vector_6.layer.name = "vector_6"
        vector_6.layer.shadowColor = UIColor.clear.cgColor
        vector_6.layer.shadowOpacity = 1
        vector_6.layer.position = CGPoint(x: 59.6, y: 65.16)
        vector_6.layer.bounds = CGRect(x: 0, y: 0, width: 35.86, height: 30.81)
        vector_6.layer.masksToBounds = false
        vector_6.shapeLayer.name = "vector_6.shapeLayer"
        vector_6.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_6.shapeLayer.fillColor = nil
        vector_6.shapeLayer.miterLimit = 4
        vector_6.shapeLayer.lineDashPattern = []
        vector_6.shapeLayer.lineDashPhase = 0
        vector_6.shapeLayer.lineWidth = 1
        vector_6.shapeLayer.path = CGPathCreateWithSVGString("M0.255,18.491c1.658,-8.345,11.116,-16.478,21.095,-18.171 7.527,-1.275,12.875,1.338,14.51,6.346l-2.709,10.235c-1.148,2.27,-2.696,4.309,-4.569,6.015 -9.341,8.44,-15.996,7.873,-15.996,7.873 -8.454,0.394,-13.848,-4.74,-12.33,-12.298l0,0zM0.255,18.491")!

        let startPoint = CGPoint(x: -262.749, y: 201.481)
        let endPoint = CGPoint(x: -250.91, y: 227.33)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.76).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.53).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.34).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.19).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.09).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.02).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.16), NSNumber(value: 0.32), NSNumber(value: 0.49), NSNumber(value: 0.64), NSNumber(value: 0.78), NSNumber(value: 0.9), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_6.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector7() {
        vector_7 = ShapeView(frame: CGRect(x: 24.75, y: 77.79, width: 14.14, height: 5.05))
        vector_7.backgroundColor = UIColor.clear
        vector_7.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_7.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_7.layer.borderColor = UIColor.clear.cgColor
        vector_7.layer.name = "vector_7"
        vector_7.layer.shadowColor = UIColor.clear.cgColor
        vector_7.layer.shadowOpacity = 1
        vector_7.layer.position = CGPoint(x: 24.75, y: 77.79)
        vector_7.layer.bounds = CGRect(x: 0, y: 0, width: 14.14, height: 5.05)
        vector_7.layer.masksToBounds = false
        vector_7.shapeLayer.name = "vector_7.shapeLayer"
        vector_7.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_7.shapeLayer.fillColor = nil
        vector_7.shapeLayer.miterLimit = 4
        vector_7.shapeLayer.lineDashPattern = []
        vector_7.shapeLayer.lineDashPhase = 0
        vector_7.shapeLayer.lineWidth = 1
        vector_7.shapeLayer.path = CGPathCreateWithSVGString("M7.822,0.55c3.883,0.871,6.69,2.468,6.278,3.555 -0.412,1.086,-3.906,1.262,-7.781,0.391 -3.875,-0.871,-6.697,-2.46,-6.278,-3.547 0.42,-1.086,3.898,-1.27,7.781,-0.399l0,0zM7.822,0.55")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1.59364, y: 0.873)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_7.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector8() {
        vector_8 = ShapeView(frame: CGRect(x: 66.17, y: 74.25, width: 24.75, height: 11.62))
        vector_8.backgroundColor = UIColor.clear
        vector_8.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_8.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_8.layer.borderColor = UIColor.clear.cgColor
        vector_8.layer.name = "vector_8"
        vector_8.layer.shadowColor = UIColor.clear.cgColor
        vector_8.layer.shadowOpacity = 1
        vector_8.layer.position = CGPoint(x: 66.17, y: 74.25)
        vector_8.layer.bounds = CGRect(x: 0, y: 0, width: 24.75, height: 11.62)
        vector_8.layer.masksToBounds = false
        vector_8.shapeLayer.name = "vector_8.shapeLayer"
        vector_8.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_8.shapeLayer.fillColor = nil
        vector_8.shapeLayer.miterLimit = 4
        vector_8.shapeLayer.lineDashPattern = []
        vector_8.shapeLayer.lineDashPhase = 0
        vector_8.shapeLayer.lineWidth = 1
        vector_8.shapeLayer.path = CGPathCreateWithSVGString("M11.056,1.276c-6.784,2.004,-11.711,5.659,-10.985,8.164 0.726,2.505,6.831,2.912,13.623,0.908 6.792,-2.004,11.711,-5.659,10.985,-8.164 -0.726,-2.505,-6.831,-2.92,-13.623,-0.908l0,0zM11.056,1.276")!

        let startPoint = CGPoint(x: 0.479, y: 0.477)
        let endPoint = CGPoint(x: 0.892476, y: 1.07624)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.78).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.5).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.29).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.13).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.04).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.17), NSNumber(value: 0.4), NSNumber(value: 0.6), NSNumber(value: 0.78), NSNumber(value: 0.92), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_8.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector9() {
        vector_9 = ShapeView(frame: CGRect(x: 19.7, y: 74.25, width: 24.75, height: 11.62))
        vector_9.backgroundColor = UIColor.clear
        vector_9.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_9.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_9.layer.borderColor = UIColor.clear.cgColor
        vector_9.layer.name = "vector_9"
        vector_9.layer.shadowColor = UIColor.clear.cgColor
        vector_9.layer.shadowOpacity = 1
        vector_9.layer.position = CGPoint(x: 19.7, y: 74.25)
        vector_9.layer.bounds = CGRect(x: 0, y: 0, width: 24.75, height: 11.62)
        vector_9.layer.masksToBounds = false
        vector_9.shapeLayer.name = "vector_9.shapeLayer"
        vector_9.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_9.shapeLayer.fillColor = nil
        vector_9.shapeLayer.miterLimit = 4
        vector_9.shapeLayer.lineDashPattern = []
        vector_9.shapeLayer.lineDashPhase = 0
        vector_9.shapeLayer.lineWidth = 1
        vector_9.shapeLayer.path = CGPathCreateWithSVGString("M13.692,1.276c6.794,2.004,11.714,5.659,10.987,8.164 -0.726,2.505,-6.825,2.912,-13.627,0.908 -6.802,-2.004,-11.714,-5.659,-10.979,-8.164 0.734,-2.505,6.825,-2.92,13.619,-0.908l0,0zM13.692,1.276")!

        let startPoint = CGPoint(x: 0.522, y: 0.493)
        let endPoint = CGPoint(x: 0.935106, y: 1.09257)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.73).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.47).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.27).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.12).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0.03).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.21), NSNumber(value: 0.42), NSNumber(value: 0.61), NSNumber(value: 0.78), NSNumber(value: 0.91), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_9.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector10() {
        vector_10 = ShapeView(frame: CGRect(x: 29.3, y: 69.7, width: 9.6, height: 11.62))
        vector_10.backgroundColor = UIColor.clear
        vector_10.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_10.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_10.layer.borderColor = UIColor.clear.cgColor
        vector_10.layer.name = "vector_10"
        vector_10.layer.shadowColor = UIColor.clear.cgColor
        vector_10.layer.shadowOpacity = 1
        vector_10.layer.position = CGPoint(x: 29.3, y: 69.7)
        vector_10.layer.bounds = CGRect(x: 0, y: 0, width: 9.6, height: 11.62)
        vector_10.layer.masksToBounds = false
        vector_10.shapeLayer.name = "vector_10.shapeLayer"
        vector_10.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_10.shapeLayer.fillColor = UIColor(red: 0, green: 0.149, blue: 0.247, alpha: 1).cgColor
        vector_10.shapeLayer.miterLimit = 4
        vector_10.shapeLayer.lineDashPattern = []
        vector_10.shapeLayer.lineDashPhase = 0
        vector_10.shapeLayer.lineWidth = 1
        vector_10.shapeLayer.path = CGPathCreateWithSVGString("M4.8,11.62c2.651,0,4.8,-2.601,4.8,-5.81 0,-3.209,-2.149,-5.81,-4.8,-5.81 -2.651,0,-4.8,2.601,-4.8,5.81 0,3.209,2.149,5.81,4.8,5.81l0,0zM4.8,11.62")!


    }

    private func createVector11() {
        vector_11 = ShapeView(frame: CGRect(x: 71.72, y: 69.7, width: 9.6, height: 11.62))
        vector_11.backgroundColor = UIColor.clear
        vector_11.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_11.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_11.layer.borderColor = UIColor.clear.cgColor
        vector_11.layer.name = "vector_11"
        vector_11.layer.shadowColor = UIColor.clear.cgColor
        vector_11.layer.shadowOpacity = 1
        vector_11.layer.position = CGPoint(x: 71.72, y: 69.7)
        vector_11.layer.bounds = CGRect(x: 0, y: 0, width: 9.6, height: 11.62)
        vector_11.layer.masksToBounds = false
        vector_11.shapeLayer.name = "vector_11.shapeLayer"
        vector_11.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_11.shapeLayer.fillColor = UIColor(red: 0, green: 0.149, blue: 0.247, alpha: 1).cgColor
        vector_11.shapeLayer.miterLimit = 4
        vector_11.shapeLayer.lineDashPattern = []
        vector_11.shapeLayer.lineDashPhase = 0
        vector_11.shapeLayer.lineWidth = 1
        vector_11.shapeLayer.path = CGPathCreateWithSVGString("M4.8,11.62c2.651,0,4.8,-2.601,4.8,-5.81 0,-3.209,-2.149,-5.81,-4.8,-5.81 -2.651,0,-4.8,2.601,-4.8,5.81 0,3.209,2.149,5.81,4.8,5.81l0,0zM4.8,11.62")!


    }

    private func createVector12() {
        vector_12 = ShapeView(frame: CGRect(x: 78.8, y: 76.78, width: 1.52, height: 1.52))
        vector_12.backgroundColor = UIColor.clear
        vector_12.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_12.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_12.layer.borderColor = UIColor.clear.cgColor
        vector_12.layer.name = "vector_12"
        vector_12.layer.shadowColor = UIColor.clear.cgColor
        vector_12.layer.shadowOpacity = 1
        vector_12.layer.position = CGPoint(x: 78.8, y: 76.78)
        vector_12.layer.bounds = CGRect(x: 0, y: 0, width: 1.52, height: 1.52)
        vector_12.layer.masksToBounds = false
        vector_12.shapeLayer.name = "vector_12.shapeLayer"
        vector_12.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_12.shapeLayer.fillColor = UIColor.white.cgColor
        vector_12.shapeLayer.miterLimit = 4
        vector_12.shapeLayer.lineDashPattern = []
        vector_12.shapeLayer.lineDashPhase = 0
        vector_12.shapeLayer.lineWidth = 1
        vector_12.shapeLayer.path = CGPathCreateWithSVGString("M1.045,0.056c0.184,0.075,0.331,0.218,0.411,0.4 0.08,0.182,0.085,0.387,0.015,0.573 -0.053,0.141,-0.148,0.264,-0.271,0.351 -0.123,0.088,-0.27,0.136,-0.421,0.14 -0.151,0.004,-0.3,-0.037,-0.427,-0.118 -0.128,-0.081,-0.228,-0.198,-0.289,-0.337 -0.061,-0.138,-0.078,-0.292,-0.051,-0.44 0.027,-0.149,0.098,-0.286,0.203,-0.394 0.105,-0.108,0.241,-0.183,0.388,-0.214 0.148,-0.031,0.302,-0.017,0.442,0.039l0,0zM1.045,0.056")!


    }

    private func createVectorstroke() {
        vectorstroke = ShapeView(frame: CGRect(x: 77.28, y: 70.71, width: 3.54, height: 5.56))
        vectorstroke.backgroundColor = UIColor.clear
        vectorstroke.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke.layer.borderColor = UIColor.clear.cgColor
        vectorstroke.layer.name = "vectorstroke"
        vectorstroke.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke.layer.shadowOpacity = 1
        vectorstroke.layer.position = CGPoint(x: 77.28, y: 70.71)
        vectorstroke.layer.bounds = CGRect(x: 0, y: 0, width: 3.54, height: 5.56)
        vectorstroke.layer.masksToBounds = false
        vectorstroke.shapeLayer.name = "vectorstroke.shapeLayer"
        vectorstroke.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke.shapeLayer.fillColor = UIColor.white.cgColor
        vectorstroke.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vectorstroke.shapeLayer.lineDashPattern = []
        vectorstroke.shapeLayer.lineDashPhase = 0
        vectorstroke.shapeLayer.lineWidth = 2
        vectorstroke.shapeLayer.path = CGPathCreateWithSVGString("M0.184,0.361c0.297,-0.406,0.849,-0.48,1.233,-0.166 0.64,0.524,1.162,1.191,1.529,1.953 0.367,0.762,0.57,1.601,0.594,2.456 0.014,0.513,-0.367,0.941,-0.853,0.956 -0.485,0.015,-0.89,-0.389,-0.905,-0.902 -0.016,-0.58,-0.154,-1.15,-0.403,-1.667 -0.249,-0.518,-0.604,-0.97,-1.038,-1.326 -0.384,-0.314,-0.454,-0.898,-0.157,-1.304l0,0zM0.184,0.361")!


    }

    private func createVector13() {
        vector_13 = ShapeView(frame: CGRect(x: 24.75, y: 77.79, width: 14.14, height: 5.05))
        vector_13.backgroundColor = UIColor.clear
        vector_13.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_13.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_13.layer.borderColor = UIColor.clear.cgColor
        vector_13.layer.name = "vector_13"
        vector_13.layer.shadowColor = UIColor.clear.cgColor
        vector_13.layer.shadowOpacity = 1
        vector_13.layer.position = CGPoint(x: 24.75, y: 77.79)
        vector_13.layer.bounds = CGRect(x: 0, y: 0, width: 14.14, height: 5.05)
        vector_13.layer.masksToBounds = false
        vector_13.shapeLayer.name = "vector_13.shapeLayer"
        vector_13.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_13.shapeLayer.fillColor = nil
        vector_13.shapeLayer.miterLimit = 4
        vector_13.shapeLayer.lineDashPattern = []
        vector_13.shapeLayer.lineDashPhase = 0
        vector_13.shapeLayer.lineWidth = 1
        vector_13.shapeLayer.path = CGPathCreateWithSVGString("M7.822,0.55c3.883,0.871,6.69,2.468,6.278,3.555 -0.412,1.086,-3.906,1.262,-7.781,0.391 -3.875,-0.871,-6.697,-2.46,-6.278,-3.547 0.42,-1.086,3.898,-1.27,7.781,-0.399l0,0zM7.822,0.55")!

        let startPoint = CGPoint(x: 0.5, y: 0.5)
        let endPoint = CGPoint(x: 1.59364, y: 0.873)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_13.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector14() {
        vector_14 = ShapeView(frame: CGRect(x: 36.37, y: 76.78, width: 1.52, height: 1.52))
        vector_14.backgroundColor = UIColor.clear
        vector_14.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_14.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_14.layer.borderColor = UIColor.clear.cgColor
        vector_14.layer.name = "vector_14"
        vector_14.layer.shadowColor = UIColor.clear.cgColor
        vector_14.layer.shadowOpacity = 1
        vector_14.layer.position = CGPoint(x: 36.37, y: 76.78)
        vector_14.layer.bounds = CGRect(x: 0, y: 0, width: 1.52, height: 1.52)
        vector_14.layer.masksToBounds = false
        vector_14.shapeLayer.name = "vector_14.shapeLayer"
        vector_14.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_14.shapeLayer.fillColor = UIColor.white.cgColor
        vector_14.shapeLayer.miterLimit = 4
        vector_14.shapeLayer.lineDashPattern = []
        vector_14.shapeLayer.lineDashPhase = 0
        vector_14.shapeLayer.lineWidth = 1
        vector_14.shapeLayer.path = CGPathCreateWithSVGString("M1.019,0.046c0.142,0.052,0.266,0.144,0.355,0.267 0.089,0.122,0.14,0.268,0.145,0.42 0.006,0.151,-0.034,0.301,-0.114,0.429 -0.08,0.129,-0.196,0.23,-0.334,0.292 -0.138,0.062,-0.291,0.081,-0.441,0.056 -0.149,-0.026,-0.287,-0.095,-0.396,-0.2 -0.109,-0.105,-0.185,-0.24,-0.217,-0.387 -0.032,-0.148,-0.019,-0.302,0.037,-0.443 0.073,-0.183,0.215,-0.331,0.395,-0.412 0.18,-0.081,0.385,-0.088,0.57,-0.021l0,0zM1.019,0.046")!


    }

    private func createVector15() {
        vector_15 = ShapeView(frame: CGRect(x: 71.22, y: 77.79, width: 14.65, height: 5.05))
        vector_15.backgroundColor = UIColor.clear
        vector_15.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_15.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_15.layer.borderColor = UIColor.clear.cgColor
        vector_15.layer.name = "vector_15"
        vector_15.layer.shadowColor = UIColor.clear.cgColor
        vector_15.layer.shadowOpacity = 1
        vector_15.layer.position = CGPoint(x: 71.22, y: 77.79)
        vector_15.layer.bounds = CGRect(x: 0, y: 0, width: 14.65, height: 5.05)
        vector_15.layer.masksToBounds = false
        vector_15.shapeLayer.name = "vector_15.shapeLayer"
        vector_15.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_15.shapeLayer.fillColor = nil
        vector_15.shapeLayer.miterLimit = 4
        vector_15.shapeLayer.lineDashPattern = []
        vector_15.shapeLayer.lineDashPhase = 0
        vector_15.shapeLayer.lineWidth = 1
        vector_15.shapeLayer.path = CGPathCreateWithSVGString("M6.542,0.55c-4.017,0.871,-6.934,2.468,-6.499,3.555 0.435,1.086,4.04,1.262,8.065,0.391 4.025,-0.871,6.934,-2.46,6.499,-3.547 -0.435,-1.086,-4.04,-1.27,-8.065,-0.399l0,0zM6.542,0.55")!

        let startPoint = CGPoint(x: 176.2, y: 153.3)
        let endPoint = CGPoint(x: 183.12, y: 160.22)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_15.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector16() {
        vector_16 = ShapeView(frame: CGRect(x: 48.49, y: 86.88, width: 13.13, height: 9.6))
        vector_16.backgroundColor = UIColor.clear
        vector_16.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_16.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_16.layer.borderColor = UIColor.clear.cgColor
        vector_16.layer.name = "vector_16"
        vector_16.layer.shadowColor = UIColor.clear.cgColor
        vector_16.layer.shadowOpacity = 1
        vector_16.layer.position = CGPoint(x: 48.49, y: 86.88)
        vector_16.layer.bounds = CGRect(x: 0, y: 0, width: 13.13, height: 9.6)
        vector_16.layer.masksToBounds = false
        vector_16.shapeLayer.name = "vector_16.shapeLayer"
        vector_16.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_16.shapeLayer.fillColor = nil
        vector_16.shapeLayer.miterLimit = 4
        vector_16.shapeLayer.lineDashPattern = []
        vector_16.shapeLayer.lineDashPhase = 0
        vector_16.shapeLayer.lineWidth = 1
        vector_16.shapeLayer.path = CGPathCreateWithSVGString("M0.055,0l6.503,0c0,0,5.518,1.507,6.511,0 0.439,4.66,-1.47,9.6,-6.526,9.6 -4.294,0,-6.965,-3.883,-6.488,-9.32l0,-0.28 0,0zM0.055,0")!

        let startPoint = CGPoint(x: 0.51, y: 0.259)
        let endPoint = CGPoint(x: 1.20195, y: 0.806)
        let colors = [UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 1).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0.65).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0.19).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.33), NSNumber(value: 0.79), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vector_16.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector17() {
        vector_17 = ShapeView(frame: CGRect(x: 50.01, y: 82.33, width: 10.1, height: 10.1))
        vector_17.backgroundColor = UIColor.clear
        vector_17.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_17.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_17.layer.borderColor = UIColor.clear.cgColor
        vector_17.layer.name = "vector_17"
        vector_17.layer.shadowColor = UIColor.clear.cgColor
        vector_17.layer.shadowOpacity = 1
        vector_17.layer.position = CGPoint(x: 50.01, y: 82.33)
        vector_17.layer.bounds = CGRect(x: 0, y: 0, width: 10.1, height: 10.1)
        vector_17.layer.masksToBounds = false
        vector_17.shapeLayer.name = "vector_17.shapeLayer"
        vector_17.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_17.shapeLayer.fillColor = UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor
        vector_17.shapeLayer.miterLimit = 4
        vector_17.shapeLayer.lineDashPattern = []
        vector_17.shapeLayer.lineDashPhase = 0
        vector_17.shapeLayer.lineWidth = 1
        vector_17.shapeLayer.path = CGPathCreateWithSVGString("M0,0l10.1,0c0,0,-0.684,10.1,-5.042,10.1 -4.359,0,-5.058,-10.1,-5.058,-10.1l0,0zM0,0")!


    }

    private func createVector18() {
        vector_18 = ShapeView(frame: CGRect(x: 50.01, y: 82.33, width: 9.6, height: 9.09))
        vector_18.backgroundColor = UIColor.clear
        vector_18.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_18.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_18.layer.borderColor = UIColor.clear.cgColor
        vector_18.layer.name = "vector_18"
        vector_18.layer.shadowColor = UIColor.clear.cgColor
        vector_18.layer.shadowOpacity = 1
        vector_18.layer.position = CGPoint(x: 50.01, y: 82.33)
        vector_18.layer.bounds = CGRect(x: 0, y: 0, width: 9.6, height: 9.09)
        vector_18.layer.masksToBounds = false
        vector_18.shapeLayer.name = "vector_18.shapeLayer"
        vector_18.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_18.shapeLayer.fillColor = nil
        vector_18.shapeLayer.miterLimit = 4
        vector_18.shapeLayer.lineDashPattern = []
        vector_18.shapeLayer.lineDashPhase = 0
        vector_18.shapeLayer.lineWidth = 1
        vector_18.shapeLayer.path = CGPathCreateWithSVGString("M0,0.023l9.597,0.106c0,0,0.292,8.961,-4.679,8.961 -4.971,0,-4.917,-8.181,-4.917,-9.09l0,0.023 0,0zM0,0.023")!

        let startPoint = CGPoint(x: 0.5, y: 0.089)
        let endPoint = CGPoint(x: 0.501, y: 0.94)
        let colors = [UIColor(red: 0.91, green: 0.106, blue: 0, alpha: 1).cgColor, UIColor(red: 1, green: 0.004, blue: 0.153, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_18.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector19() {
        vector_19 = ShapeView(frame: CGRect(x: 48.99, y: 82.33, width: 12.12, height: 6.57))
        vector_19.backgroundColor = UIColor.clear
        vector_19.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_19.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_19.layer.borderColor = UIColor.clear.cgColor
        vector_19.layer.name = "vector_19"
        vector_19.layer.shadowColor = UIColor.clear.cgColor
        vector_19.layer.shadowOpacity = 1
        vector_19.layer.position = CGPoint(x: 48.99, y: 82.33)
        vector_19.layer.bounds = CGRect(x: 0, y: 0, width: 12.12, height: 6.57)
        vector_19.layer.masksToBounds = false
        vector_19.shapeLayer.name = "vector_19.shapeLayer"
        vector_19.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_19.shapeLayer.fillColor = nil
        vector_19.shapeLayer.miterLimit = 4
        vector_19.shapeLayer.lineDashPattern = []
        vector_19.shapeLayer.lineDashPhase = 0
        vector_19.shapeLayer.lineWidth = 1
        vector_19.shapeLayer.path = CGPathCreateWithSVGString("M1.98,6.153c0.77,-1.138,2.096,-3.184,3.937,-3.184 2.15,0,3.675,2.197,4.407,3.558 0.162,0.287,2.173,-0.939,1.734,-1.751 -1.179,-2.181,-3.244,-4.776,-6.164,-4.776 -2.473,0,-4.33,2.388,-5.517,4.139 -1.356,2.109,1.364,2.42,1.603,2.014l0,0zM1.98,6.153")!

        let startPoint = CGPoint(x: 0.505, y: 0.017)
        let endPoint = CGPoint(x: 0.504, y: 0.265)
        let colors = [UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 1).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.96).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.71).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.49).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.31).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.18).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.08).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0.02).cgColor, UIColor(red: 0.804, green: 0, blue: 0.09, alpha: 0).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.02), NSNumber(value: 0.13), NSNumber(value: 0.25), NSNumber(value: 0.36), NSNumber(value: 0.48), NSNumber(value: 0.59), NSNumber(value: 0.71), NSNumber(value: 0.83)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_19.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector20() {
        vector_20 = ShapeView(frame: CGRect(x: 54.05, y: 3.54, width: 7.07, height: 38.89))
        vector_20.backgroundColor = UIColor.clear
        vector_20.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_20.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_20.layer.borderColor = UIColor.clear.cgColor
        vector_20.layer.name = "vector_20"
        vector_20.layer.shadowColor = UIColor.clear.cgColor
        vector_20.layer.shadowOpacity = 1
        vector_20.layer.position = CGPoint(x: 54.05, y: 3.54)
        vector_20.layer.bounds = CGRect(x: 0, y: 0, width: 7.07, height: 38.89)
        vector_20.layer.masksToBounds = false
        vector_20.shapeLayer.name = "vector_20.shapeLayer"
        vector_20.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_20.shapeLayer.fillColor = nil
        vector_20.shapeLayer.miterLimit = 4
        vector_20.shapeLayer.lineDashPattern = []
        vector_20.shapeLayer.lineDashPhase = 0
        vector_20.shapeLayer.lineWidth = 1
        vector_20.shapeLayer.path = CGPathCreateWithSVGString("M0,38.184c0.328,-15.632,1.466,-31.388,2.046,-36.811 0.091,-0.482,0.259,-0.946,0.496,-1.373 0.939,0.574,1.71,2.816,2.642,2.157 -0.863,4.825,0.817,17.766,1.886,35.896 0,0,-1.138,0.97,-4.123,0.822 -2.436,-0.147,-2.947,-0.69,-2.947,-0.69l0,0zM0,38.184")!

        let startPoint = CGPoint(x: 0.5, y: 0.967)
        let endPoint = CGPoint(x: 0.582, y: 0.501)
        let colors = [UIColor(red: 0.325, green: 0.651, blue: 0.431, alpha: 1).cgColor, UIColor(red: 0.365, green: 0.702, blue: 0.471, alpha: 1).cgColor, UIColor(red: 0.467, green: 0.839, blue: 0.576, alpha: 1).cgColor, UIColor(red: 0.471, green: 0.843, blue: 0.58, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.31), NSNumber(value: 0.9), NSNumber(value: 0.92)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_20.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector21() {
        vector_21 = ShapeView(frame: CGRect(x: 46.47, y: 22.73, width: 7.58, height: 19.19))
        vector_21.backgroundColor = UIColor.clear
        vector_21.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_21.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_21.layer.borderColor = UIColor.clear.cgColor
        vector_21.layer.name = "vector_21"
        vector_21.layer.shadowColor = UIColor.clear.cgColor
        vector_21.layer.shadowOpacity = 1
        vector_21.layer.position = CGPoint(x: 46.47, y: 22.73)
        vector_21.layer.bounds = CGRect(x: 0, y: 0, width: 7.58, height: 19.19)
        vector_21.layer.masksToBounds = false
        vector_21.shapeLayer.name = "vector_21.shapeLayer"
        vector_21.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_21.shapeLayer.fillColor = nil
        vector_21.shapeLayer.miterLimit = 4
        vector_21.shapeLayer.lineDashPattern = []
        vector_21.shapeLayer.lineDashPhase = 0
        vector_21.shapeLayer.lineWidth = 1
        vector_21.shapeLayer.path = CGPathCreateWithSVGString("M7.58,18.819c0,0,-0.266,0.354,-2.485,0.354 -0.906,0.059,-1.815,-0.039,-2.688,-0.291 -0.203,-9.02,-0.992,-18.891,-2.407,-18.804 1.354,-0.168,2.727,-0.064,4.04,0.307 0,0,2.219,10.736,3.54,18.434l0,0zM7.58,18.819")!

        let startPoint = CGPoint(x: 0.497, y: 0.922)
        let endPoint = CGPoint(x: 0.502, y: 0.196)
        let colors = [UIColor(red: 0.325, green: 0.651, blue: 0.431, alpha: 1).cgColor, UIColor(red: 0.369, green: 0.71, blue: 0.475, alpha: 1).cgColor, UIColor(red: 0.471, green: 0.843, blue: 0.58, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 0.36), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_21.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector22() {
        vector_22 = ShapeView(frame: CGRect(x: 0, y: 21.21, width: 50.51, height: 44.95))
        vector_22.backgroundColor = UIColor.clear
        vector_22.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_22.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_22.layer.borderColor = UIColor.clear.cgColor
        vector_22.layer.name = "vector_22"
        vector_22.layer.shadowColor = UIColor.clear.cgColor
        vector_22.layer.shadowOpacity = 1
        vector_22.layer.position = CGPoint(x: 0, y: 21.21)
        vector_22.layer.bounds = CGRect(x: 0, y: 0, width: 50.51, height: 44.95)
        vector_22.layer.masksToBounds = false
        vector_22.shapeLayer.name = "vector_22.shapeLayer"
        vector_22.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_22.shapeLayer.fillColor = nil
        vector_22.shapeLayer.miterLimit = 4
        vector_22.shapeLayer.lineDashPattern = []
        vector_22.shapeLayer.lineDashPhase = 0
        vector_22.shapeLayer.lineWidth = 1
        vector_22.shapeLayer.path = CGPathCreateWithSVGString("M0,44.934c0,0,13.613,-1.394,19.558,-18.798 7.299,-21.337,24.722,-22.762,30.691,-23.774 3.646,-0.623,-32.021,-9.01,-41.792,10.123 -5.852,11.439,-4.107,27.505,-8.457,32.465l0,-0.016 0,0zM0,44.934")!

        let startPoint = CGPoint(x: -0.017, y: 0.984)
        let endPoint = CGPoint(x: 0.796, y: -0.137)
        let colors = [UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor, UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_22.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector23() {
        vector_23 = ShapeView(frame: CGRect(x: 56.07, y: 0, width: 62.63, height: 52.03))
        vector_23.backgroundColor = UIColor.clear
        vector_23.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_23.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_23.layer.borderColor = UIColor.clear.cgColor
        vector_23.layer.name = "vector_23"
        vector_23.layer.shadowColor = UIColor.clear.cgColor
        vector_23.layer.shadowOpacity = 1
        vector_23.layer.position = CGPoint(x: 56.07, y: 0)
        vector_23.layer.bounds = CGRect(x: 0, y: 0, width: 62.63, height: 52.03)
        vector_23.layer.masksToBounds = false
        vector_23.shapeLayer.name = "vector_23.shapeLayer"
        vector_23.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_23.shapeLayer.fillColor = nil
        vector_23.shapeLayer.miterLimit = 4
        vector_23.shapeLayer.lineDashPattern = []
        vector_23.shapeLayer.lineDashPhase = 0
        vector_23.shapeLayer.lineWidth = 1
        vector_23.shapeLayer.path = CGPathCreateWithSVGString("M62.568,51.999c0,0,-4.796,-22.865,-27.647,-27.793 -23.125,-4.983,-33.668,-13.046,-34.908,-20.224 -0.667,-3.839,23.746,-8.345,43.472,4.701 13.58,8.964,19.844,28.859,19.083,43.347l0,-0.031 0,0zM62.568,51.999")!

        let startPoint = CGPoint(x: 128.443, y: 114.493)
        let endPoint = CGPoint(x: 216.95, y: 135.82)
        let colors = [UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor, UIColor(red: 0.561, green: 0.827, blue: 0.6, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_23.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVectorstroke1() {
        vectorstroke_1 = ShapeView(frame: CGRect(x: 34.35, y: 70.71, width: 3.54, height: 5.56))
        vectorstroke_1.backgroundColor = UIColor.clear
        vectorstroke_1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke_1.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke_1.layer.borderColor = UIColor.clear.cgColor
        vectorstroke_1.layer.name = "vectorstroke_1"
        vectorstroke_1.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke_1.layer.shadowOpacity = 1
        vectorstroke_1.layer.position = CGPoint(x: 34.35, y: 70.71)
        vectorstroke_1.layer.bounds = CGRect(x: 0, y: 0, width: 3.54, height: 5.56)
        vectorstroke_1.layer.masksToBounds = false
        vectorstroke_1.shapeLayer.name = "vectorstroke_1.shapeLayer"
        vectorstroke_1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke_1.shapeLayer.fillColor = UIColor.white.cgColor
        vectorstroke_1.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vectorstroke_1.shapeLayer.lineDashPattern = []
        vectorstroke_1.shapeLayer.lineDashPhase = 0
        vectorstroke_1.shapeLayer.lineWidth = 2
        vectorstroke_1.shapeLayer.path = CGPathCreateWithSVGString("M0.184,0.361c0.297,-0.406,0.849,-0.48,1.233,-0.166 0.64,0.524,1.162,1.191,1.529,1.953 0.367,0.762,0.57,1.601,0.594,2.456 0.014,0.513,-0.367,0.941,-0.853,0.956 -0.485,0.015,-0.89,-0.389,-0.905,-0.902 -0.016,-0.58,-0.154,-1.15,-0.403,-1.667 -0.249,-0.518,-0.604,-0.97,-1.038,-1.326 -0.384,-0.314,-0.454,-0.898,-0.157,-1.304l0,0zM0.184,0.361")!


    }

    private func createVector24() {
        vector_24 = ShapeView(frame: CGRect(x: 0, y: 23.23, width: 50.51, height: 43.44))
        vector_24.backgroundColor = UIColor.clear
        vector_24.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_24.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_24.layer.borderColor = UIColor.clear.cgColor
        vector_24.layer.name = "vector_24"
        vector_24.layer.shadowColor = UIColor.clear.cgColor
        vector_24.layer.shadowOpacity = 1
        vector_24.layer.position = CGPoint(x: 0, y: 23.23)
        vector_24.layer.bounds = CGRect(x: 0, y: 0, width: 50.51, height: 43.44)
        vector_24.layer.masksToBounds = false
        vector_24.shapeLayer.name = "vector_24.shapeLayer"
        vector_24.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_24.shapeLayer.fillColor = nil
        vector_24.shapeLayer.miterLimit = 4
        vector_24.shapeLayer.lineDashPattern = []
        vector_24.shapeLayer.lineDashPhase = 0
        vector_24.shapeLayer.lineWidth = 1
        vector_24.shapeLayer.path = CGPathCreateWithSVGString("M0,43.164c0,0,24.77,3.125,33.42,-11.663 7.993,-13.655,5.139,-22.225,17.09,-31.146 0,-0.687,-24.379,-2.265,-31.848,16.765 -5.475,13.905,-6.859,19.874,-18.662,26.045l0,0zM0,43.164")!

        let startPoint = CGPoint(x: 0.12, y: 1.107)
        let endPoint = CGPoint(x: 0.933, y: -0.056)
        let colors = [UIColor(red: 0.957, green: 0.792, blue: 0.216, alpha: 0.2).cgColor, UIColor(red: 0.957, green: 0.792, blue: 0.216, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_24.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVector25() {
        vector_25 = ShapeView(frame: CGRect(x: 56.07, y: 3.54, width: 62.63, height: 48.49))
        vector_25.backgroundColor = UIColor.clear
        vector_25.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vector_25.layer.shadowOffset = CGSize(width: 0, height: 0)
        vector_25.layer.borderColor = UIColor.clear.cgColor
        vector_25.layer.name = "vector_25"
        vector_25.layer.shadowColor = UIColor.clear.cgColor
        vector_25.layer.shadowOpacity = 1
        vector_25.layer.position = CGPoint(x: 56.07, y: 3.54)
        vector_25.layer.bounds = CGRect(x: 0, y: 0, width: 62.63, height: 48.49)
        vector_25.layer.masksToBounds = false
        vector_25.shapeLayer.name = "vector_25.shapeLayer"
        vector_25.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vector_25.shapeLayer.fillColor = nil
        vector_25.shapeLayer.miterLimit = 4
        vector_25.shapeLayer.lineDashPattern = []
        vector_25.shapeLayer.lineDashPhase = 0
        vector_25.shapeLayer.lineWidth = 1
        vector_25.shapeLayer.path = CGPathCreateWithSVGString("M0,1.426c0,0,1.265,27.384,26.955,34.197 24.018,6.368,33.227,4.172,35.664,12.86 0.148,0.524,-0.781,-28.97,-26.228,-37.22 -16.731,-5.469,-30.173,-2.195,-35.929,-11.258 0,0,0,-0.078,-0.187,0.43 -0.12,0.322,-0.212,0.654,-0.273,0.992l0,0zM0,1.426")!

        let startPoint = CGPoint(x: 0.973, y: 0.46)
        let endPoint = CGPoint(x: 0.026, y: 0.541)
        let colors = [UIColor(red: 1, green: 0.792, blue: 0, alpha: 0.6).cgColor, UIColor(red: 1, green: 0.792, blue: 0, alpha: 0.2).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .axial
        vector_25.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVectorstroke2() {
        vectorstroke_2 = ShapeView(frame: CGRect(x: 47.98, y: 78.8, width: 14.14, height: 15.66))
        vectorstroke_2.backgroundColor = UIColor.clear
        vectorstroke_2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke_2.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke_2.layer.borderColor = UIColor.clear.cgColor
        vectorstroke_2.layer.name = "vectorstroke_2"
        vectorstroke_2.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke_2.layer.shadowOpacity = 1
        vectorstroke_2.layer.position = CGPoint(x: 47.98, y: 78.8)
        vectorstroke_2.layer.bounds = CGRect(x: 0, y: 0, width: 14.14, height: 15.66)
        vectorstroke_2.layer.masksToBounds = false
        vectorstroke_2.shapeLayer.name = "vectorstroke_2.shapeLayer"
        vectorstroke_2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke_2.shapeLayer.fillColor = nil
        vectorstroke_2.shapeLayer.lineDashPattern = []
        vectorstroke_2.shapeLayer.lineDashPhase = 0
        vectorstroke_2.shapeLayer.lineWidth = 4
        vectorstroke_2.shapeLayer.path = CGPathCreateWithSVGString("M7.07,3.748c-1.618,0,-3.334,1.588,-3.334,4.082 0,2.494,1.717,4.082,3.334,4.082 1.618,0,3.334,-1.588,3.334,-4.082 0,-2.494,-1.717,-4.082,-3.334,-4.082l0,0zM0,7.83c0,-4.085,2.942,-7.83,7.07,-7.83 4.128,0,7.07,3.745,7.07,7.83 0,4.085,-2.942,7.83,-7.07,7.83 -4.128,0,-7.07,-3.745,-7.07,-7.83l0,0zM0,7.83")!

        let startPoint = CGPoint(x: 107.861, y: 122.97)
        let endPoint = CGPoint(x: 114.724, y: 129.607)
        let colors = [UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor, UIColor(red: 1, green: 0.322, blue: 0.353, alpha: 1).cgColor]
        let locations = [NSNumber(value: 0), NSNumber(value: 1)]
        let stops = zip(colors, locations).map { $0 }
        let type: CAGradientLayerType = .radial
        vectorstroke_2.addGradient(type: type, startPoint: startPoint, endPoint: endPoint, stops: stops)

    }

    private func createVectorstroke3() {
        vectorstroke_3 = ShapeView(frame: CGRect(x: 53.04, y: 79.81, width: 6.57, height: 2.53))
        vectorstroke_3.backgroundColor = UIColor.clear
        vectorstroke_3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        vectorstroke_3.layer.shadowOffset = CGSize(width: 0, height: 0)
        vectorstroke_3.layer.borderColor = UIColor.clear.cgColor
        vectorstroke_3.layer.name = "vectorstroke_3"
        vectorstroke_3.layer.shadowColor = UIColor.clear.cgColor
        vectorstroke_3.layer.shadowOpacity = 1
        vectorstroke_3.layer.position = CGPoint(x: 53.04, y: 79.81)
        vectorstroke_3.layer.bounds = CGRect(x: 0, y: 0, width: 6.57, height: 2.53)
        vectorstroke_3.layer.masksToBounds = false
        vectorstroke_3.shapeLayer.name = "vectorstroke_3.shapeLayer"
        vectorstroke_3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        vectorstroke_3.shapeLayer.fillColor = UIColor.white.cgColor
        vectorstroke_3.shapeLayer.lineCap = CAShapeLayerLineCap(rawValue: "round")
        vectorstroke_3.shapeLayer.lineDashPattern = []
        vectorstroke_3.shapeLayer.lineDashPhase = 0
        vectorstroke_3.shapeLayer.lineWidth = 1
        vectorstroke_3.shapeLayer.path = CGPathCreateWithSVGString("M2.154,0l0,0c1.595,0.012,3.124,0.624,4.268,1.71 0.193,0.184,0.198,0.486,0.01,0.675 -0.188,0.189,-0.497,0.194,-0.69,0.01 -0.963,-0.914,-2.25,-1.43,-3.592,-1.441 -0.514,0.002,-1.025,0.08,-1.516,0.23 -0.257,0.079,-0.531,-0.061,-0.611,-0.313 -0.08,-0.252,0.063,-0.519,0.32,-0.598 0.585,-0.179,1.193,-0.271,1.806,-0.274l0.006,-0 0,0zM2.154,0")!


    }

    private func addSubviews() {
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
        addSubview(lill)
        addSubview(explorePlants)
        addSubview(iphone480k)
        addSubview(grad)
        addSubview(cataloge)
        addSubview(photo)
        addSubview(name)
    }
}
