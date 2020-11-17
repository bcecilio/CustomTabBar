//
//  CustomTabBar.swift
//  CustomTabBar
//
//  Created by Brendon Cecilio on 10/13/20.
//

import UIKit

@IBDesignable class CustomTabBar: UITabBar {
    
    private var shapeLayer: CALayer?
    
    override func draw(_ rect: CGRect) {
        self.addShape()
    }
    
    private func addShape() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = createPath()
        shapeLayer.strokeColor = UIColor.systemGray.cgColor
        shapeLayer.fillColor = UIColor.white.cgColor
        // shapeLayer.fillColor = UIColor.black.cgColor
        shapeLayer.lineWidth = 1.0
        
        if let oldShapeLayer = self.shapeLayer {
            self.layer.replaceSublayer(oldShapeLayer, with: shapeLayer)
        } else {
            self.layer.insertSublayer(shapeLayer, at: 0)
        }
        self.shapeLayer = shapeLayer
    }
    
    func createPath() -> CGPath {
        
        let height: CGFloat = 37.0
        let path = UIBezierPath()
        let centerWidth = self.frame.width / 2
        
        path.move(to: CGPoint(x: 0, y: 0)) // start top left of frame
        path.addLine(to: CGPoint(x: (centerWidth - height * 2), y: 0))
        // first curve down
        path.addCurve(to: CGPoint(x: centerWidth, y: height), controlPoint1: CGPoint(x: (centerWidth - 30), y: 0), controlPoint2: CGPoint(x: (centerWidth - 35), y: height))
        // second curve up
        path.addCurve(to: CGPoint(x: (centerWidth + height * 2), y: 0), controlPoint1: CGPoint(x: (centerWidth + 35), y: height), controlPoint2: CGPoint(x: (centerWidth + 30), y: 0))
        
        // complete rect
        path.addLine(to: CGPoint(x: self.frame.width, y: 0))
        path.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height))
        path.addLine(to: CGPoint(x: 0, y: self.frame.height))
        path.close()
        
        return path.cgPath
    }
    
    //    func colorOutline() -> CGPath {
    //        let height: CGFloat = 50.0
    //        let path = UIBezierPath()
    //        let centerWidth = self.frame.width / 2
    //
    //        path.move(to: CGPoint(x: 0, y: 0)) // start top left of frame
    //        path.addLine(to: CGPoint(x: (centerWidth - height * 2), y: 0))
    //        // first curve down
    //        path.addCurve(to: CGPoint(x: centerWidth, y: height), controlPoint1: CGPoint(x: (centerWidth - 30), y: 0), controlPoint2: CGPoint(x: (centerWidth - 35), y: height))
    //        path.close()
    //
    //        return path.cgPath
    //    }
}
