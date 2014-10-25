//
//  ProgressView.swift
//  customview
//
//  Created by Anuj Goyal on 10/20/14.
//  Copyright (c) 2014 TXT2LRN. All rights reserved.
//

import UIKit

class ProgressView: UIView {

    var progress: Float = 0 {
        didSet {
           self.setNeedsDisplay()
        }
    }
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        // setup context
        var context = UIGraphicsGetCurrentContext()
        // pick the color
        CGContextSetStrokeColor(context, [1,0,0,1])
        // start drawing, like etch-a-sketch
        CGContextBeginPath(context)
        CGContextMoveToPoint(context, 0, 0)
        CGContextAddLineToPoint(context, rect.size.width * CGFloat(progress), 0)
        CGContextStrokePath(context)
    }

}
