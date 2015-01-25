//
//  Common.swift
//  CoolTable
//
//  Created by Александр Подрабинович on 24/01/15.
//  Copyright (c) 2015 Alex Podrabinovich. All rights reserved.
//

import Foundation
import UIKit

func drawLinearGradient(context: CGContextRef, rect: CGRect, startColor: CGColorRef, endColor: CGColorRef) {
    var colorSpace: CGColorSpaceRef = CGColorSpaceCreateDeviceRGB()
    var locations: [CGFloat] = [0.0, 1.0]
    var colors: [CGColorRef] = [startColor, endColor]
    
    var gradient: CGGradientRef = CGGradientCreateWithColors(colorSpace, colors, locations)
    
    var startPoint: CGPoint = CGPointMake(CGRectGetMidX(rect), CGRectGetMinY(rect))
    var endPoint: CGPoint = CGPointMake(CGRectGetMidX(rect), CGRectGetMaxY(rect))
    
    CGContextSaveGState(context)
    CGContextAddRect(context, rect)
    CGContextClip(context)
    CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, 0)
    CGContextRestoreGState(context)
}

func rectFor1PxStroke(rect: CGRect) -> CGRect {
    return CGRectMake(rect.origin.x + 0.5, rect.origin.y + 0.5, rect.size.width - 1, rect.size.height - 1)
}

func draw1PxStroke (context: CGContextRef, startPoint: CGPoint, endPoint: CGPoint, color: CGColorRef) {
    CGContextSaveGState(context)
    CGContextSetLineCap(context, kCGLineCapSquare)
    CGContextSetStrokeColorWithColor(context, color)
    CGContextSetLineWidth(context, 1.0)
    CGContextMoveToPoint(context, startPoint.x + 0.5, startPoint.y + 0.5)
    CGContextAddLineToPoint(context, endPoint.x + 0.5, endPoint.y + 0.5)
    CGContextStrokePath(context)
    CGContextRestoreGState(context)
}