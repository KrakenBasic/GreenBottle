//
//  BeerPorcentView.swift
//  GreenBottle
//
//  Created by Fernando De La Rosa on 10/20/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class BeerPorcentView: UIView {
    
    var totalPorcent: Int = 0
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(frame.height)
        context?.setStrokeColor(UIColor.green.cgColor)
        context?.move(to: CGPoint(x: 0, y: 0))
        context?.addLine(to: CGPoint(x: frame.width * (CGFloat(totalPorcent) * CGFloat(0.01)), y: CGFloat(0)))
        context?.strokePath()
    }
    

}
