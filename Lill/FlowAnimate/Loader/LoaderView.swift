// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

//@IBDesignable
public class LoaderView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 100, height: 100)
        public static let backgroundColor = UIColor.clear
    }

    public var collom1: ShapeView!
    public var collom2: ShapeView!
    public var collom3: ShapeView!
    public var collom4: ShapeView!
    public var leaf: ShapeView!

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
            createCollom1()
            createCollom2()
            createCollom3()
            createCollom4()
            createLeaf()
        }
    }

    private func createCollom1() {
        collom1 = ShapeView(frame: CGRect(x: 19, y: 60, width: 12.5, height: 12.5))
        collom1.backgroundColor = UIColor.clear
        collom1.layer.anchorPoint = CGPoint(x: 0, y: 0)
        collom1.layer.shadowOffset = CGSize(width: 0, height: 0)
        collom1.layer.borderColor = UIColor.clear.cgColor
        collom1.layer.name = "collom1"
        collom1.layer.shadowColor = UIColor.clear.cgColor
        collom1.layer.shadowOpacity = 1
        collom1.layer.position = CGPoint(x: 19, y: 60)
        collom1.layer.bounds = CGRect(x: 0, y: 0, width: 12.5, height: 12.5)
        collom1.layer.masksToBounds = false
        collom1.shapeLayer.name = "collom1.shapeLayer"
        collom1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        collom1.shapeLayer.fillColor = UIColor(red: 0.976, green: 0.38, blue: 0.38, alpha: 1).cgColor
        collom1.shapeLayer.miterLimit = 4
        collom1.shapeLayer.lineDashPattern = []
        collom1.shapeLayer.lineDashPhase = 0
        collom1.shapeLayer.lineWidth = 1
        collom1.shapeLayer.path = CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -1.726,0,-3.288,-0.7,-4.419,-1.831 -1.131,-1.131,-1.831,-2.694,-1.831,-4.419l0,0zM0,6.25")!


    }

    private func createCollom2() {
        collom2 = ShapeView(frame: CGRect(x: 35.5, y: 60, width: 12.5, height: 12.5))
        collom2.backgroundColor = UIColor.clear
        collom2.layer.anchorPoint = CGPoint(x: 0, y: 0)
        collom2.layer.shadowOffset = CGSize(width: 0, height: 0)
        collom2.layer.borderColor = UIColor.clear.cgColor
        collom2.layer.name = "collom2"
        collom2.layer.shadowColor = UIColor.clear.cgColor
        collom2.layer.shadowOpacity = 1
        collom2.layer.position = CGPoint(x: 35.5, y: 60)
        collom2.layer.bounds = CGRect(x: 0, y: 0, width: 12.5, height: 12.5)
        collom2.layer.masksToBounds = false
        collom2.shapeLayer.name = "collom2.shapeLayer"
        collom2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        collom2.shapeLayer.fillColor = UIColor(red: 0.976, green: 0.38, blue: 0.38, alpha: 1).cgColor
        collom2.shapeLayer.miterLimit = 4
        collom2.shapeLayer.lineDashPattern = []
        collom2.shapeLayer.lineDashPhase = 0
        collom2.shapeLayer.lineWidth = 1
        collom2.shapeLayer.path = CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,0 0,0zM0,6.25")!


    }

    private func createCollom3() {
        collom3 = ShapeView(frame: CGRect(x: 52, y: 60, width: 12.5, height: 12.5))
        collom3.backgroundColor = UIColor.clear
        collom3.layer.anchorPoint = CGPoint(x: 0, y: 0)
        collom3.layer.shadowOffset = CGSize(width: 0, height: 0)
        collom3.layer.borderColor = UIColor.clear.cgColor
        collom3.layer.name = "collom3"
        collom3.layer.shadowColor = UIColor.clear.cgColor
        collom3.layer.shadowOpacity = 1
        collom3.layer.position = CGPoint(x: 52, y: 60)
        collom3.layer.bounds = CGRect(x: 0, y: 0, width: 12.5, height: 12.5)
        collom3.layer.masksToBounds = false
        collom3.shapeLayer.name = "collom3.shapeLayer"
        collom3.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        collom3.shapeLayer.fillColor = UIColor(red: 0.976, green: 0.38, blue: 0.38, alpha: 1).cgColor
        collom3.shapeLayer.miterLimit = 4
        collom3.shapeLayer.lineDashPattern = []
        collom3.shapeLayer.lineDashPhase = 0
        collom3.shapeLayer.lineWidth = 1
        collom3.shapeLayer.path = CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,0 0,0zM0,6.25")!


    }

    private func createCollom4() {
        collom4 = ShapeView(frame: CGRect(x: 68.5, y: 60, width: 12.5, height: 12.5))
        collom4.backgroundColor = UIColor.clear
        collom4.layer.anchorPoint = CGPoint(x: 0, y: 0)
        collom4.layer.shadowOffset = CGSize(width: 0, height: 0)
        collom4.layer.borderColor = UIColor.clear.cgColor
        collom4.layer.name = "collom4"
        collom4.layer.shadowColor = UIColor.clear.cgColor
        collom4.layer.shadowOpacity = 1
        collom4.layer.position = CGPoint(x: 68.5, y: 60)
        collom4.layer.bounds = CGRect(x: 0, y: 0, width: 12.5, height: 12.5)
        collom4.layer.masksToBounds = false
        collom4.shapeLayer.name = "collom4.shapeLayer"
        collom4.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        collom4.shapeLayer.fillColor = UIColor(red: 0.976, green: 0.38, blue: 0.38, alpha: 1).cgColor
        collom4.shapeLayer.miterLimit = 4
        collom4.shapeLayer.lineDashPattern = []
        collom4.shapeLayer.lineDashPhase = 0
        collom4.shapeLayer.lineWidth = 1
        collom4.shapeLayer.path = CGPathCreateWithSVGString("M0,6.25c0,-3.452,2.798,-6.25,6.25,-6.25 1.726,0,3.288,0.7,4.419,1.831 1.131,1.131,1.831,2.694,1.831,4.419 0,3.452,-2.798,6.25,-6.25,6.25 -3.452,0,-6.25,-2.798,-6.25,-6.25l0,0 0,0zM0,6.25")!


    }

    private func createLeaf() {
        leaf = ShapeView(frame: CGRect(x: 35.5, y: 44, width: 15, height: 20.5))
        leaf.backgroundColor = UIColor.clear
        leaf.layer.anchorPoint = CGPoint(x: 0, y: 1)
        leaf.alpha = 0
        leaf.layer.shadowOffset = CGSize(width: 0, height: 0)
        leaf.layer.borderColor = UIColor.clear.cgColor
        leaf.layer.name = "leaf"
        leaf.layer.shadowColor = UIColor.clear.cgColor
        leaf.layer.shadowOpacity = 1
        leaf.layer.position = CGPoint(x: 35.5, y: 44)
        leaf.layer.bounds = CGRect(x: 0, y: 0, width: 15, height: 20.5)
        leaf.layer.masksToBounds = false
        leaf.shapeLayer.name = "leaf.shapeLayer"
        leaf.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        leaf.shapeLayer.fillColor = UIColor(red: 0.486, green: 0.855, blue: 0.639, alpha: 1).cgColor
        leaf.shapeLayer.miterLimit = 4
        leaf.shapeLayer.lineDashPattern = []
        leaf.shapeLayer.lineDashPhase = 0
        leaf.shapeLayer.lineWidth = 1
        leaf.shapeLayer.path = CGPathCreateWithSVGString("M1.907,20.385c0,0,-4.292,-6.182,0,-12.559 4.292,-6.377,12.777,-7.826,12.777,-7.826 0,0,1.659,8.598,-2.633,15.168 -4.292,6.57,-10.144,5.217,-10.144,5.217l0,0zM1.907,20.385")!


    }

    private func addSubviews() {
        addSubview(collom1)
        addSubview(collom2)
        addSubview(collom3)
        addSubview(collom4)
        addSubview(leaf)
    }
}
