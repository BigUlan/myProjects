//
//  DrawningControl.swift
//  My_App
//
//  Created by Ulan Beishenkulov on 25/6/22.
//

import UIKit

@IBDesignable

class DrawningControl: UIControl {


    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        super.draw(rect)
        
        let colorOne: CGColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        
        
        guard let context = UIGraphicsGetCurrentContext() else { return }

        context.setFillColor(colorOne)
        
        context.saveGState()
        
        let rectangelGreen = CGRect(x: rect.width / 2, y: rect.height / 2, width: rect.width / 4, height: rect.height / 4)

        context.fill(rectangelGreen)

        context.move(to: CGPoint(x: rect.width / 2, y: 0))
        context.addLine(to: CGPoint(x: rect.width / 2, y: rect.width / 2))
        context.addLine(to: CGPoint(x: 0, y: rect.width / 2))
        context.closePath()

        context.setStrokeColor(UIColor.blue.cgColor)

        context.strokePath()

        context.restoreGState()

        let triangle = UIBezierPath()

        triangle.move(to: CGPoint(x: 0, y: rect.width / 2))
        triangle.addLine(to: CGPoint(x: 0, y: rect.height))
        triangle.addLine(to: CGPoint(x: rect.width / 2, y: rect.width))
        triangle.close()

        context.addPath(triangle.cgPath)
        context.fillPath()
    }


}
