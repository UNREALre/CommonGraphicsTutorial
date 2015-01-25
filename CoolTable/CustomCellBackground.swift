//
//  CustomCellBackground.swift
//  CoolTable
//
//  Created by Александр Подрабинович on 24/01/15.
//  Copyright (c) 2015 Alex Podrabinovich. All rights reserved.
//

import UIKit

class CustomCellBackground: UIView {


    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        let context = UIGraphicsGetCurrentContext()
        let whiteColor = UIColor.whiteColor()
        let lightGrayColor = UIColor.lightGrayColor()
        let redColor = UIColor.redColor()
        
        var paperRect: CGRect = self.bounds
        
        drawLinearGradient(context, paperRect, whiteColor.CGColor, lightGrayColor.CGColor)
        
        /*
        var strokeRect: CGRect = paperRect
        strokeRect.size.height -= 1
        strokeRect = rectFor1PxStroke(strokeRect)
        CGContextSetStrokeColorWithColor(context, whiteColor.CGColor)
        
        CGContextSetLineWidth(context, 1.0)
        CGContextStrokeRect(context, paperRect)
        */
    }

}
