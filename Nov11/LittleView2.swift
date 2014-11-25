//
//  LittleView2.swift
//  Nov11
//
//  Created by Feliks Leybovich on 11/20/14.
//  Copyright (c) 2014 Koursebook Inc. All rights reserved.
//

import UIKit

class LittleView2: UIView {
    
    //Called by class View.
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
        self.backgroundColor = UIColor.yellowColor();
    }
    
    //Never called, but required anyway.
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
        let s: String = "World!";
        let font: UIFont = UIFont.systemFontOfSize(32);
        let attributes: [NSObject: AnyObject] = [NSFontAttributeName: font];
        let size: CGSize = s.sizeWithAttributes(attributes);
        
        //Put upper left corner of label in upper left corner of application frame.
        //Make label just big enough to hold the string.
        let screen: UIScreen = UIScreen.mainScreen();
        let applicationFrame: CGRect = screen.applicationFrame;
        
        let f: CGRect = CGRectMake(
            applicationFrame.origin.x,
            applicationFrame.origin.y,
            size.width,
            size.height);
        //let font: UIFont = UIFont.systemFontOfSize(bounds.size.height / 3);
        //let attributes: [NSObject: AnyObject] = [NSFontAttributeName: font]; //a dictionary
        s.drawAtPoint(CGPointZero, withAttributes: attributes);
    }

    
}

