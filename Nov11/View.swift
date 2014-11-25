//
//  View.swift
//  Nov11
//
//  Created by Feliks Leybovich on 11/18/14.
//  Copyright (c) 2014 Koursebook Inc. All rights reserved.
//



import UIKit

class View: UIView {
    let littleView: LittleView;
    let littleView2: LittleView2;
    
    required init(coder aDecoder: NSCoder) {
        
        

        
        //Put upper left corner of label in upper left corner of application frame.
        //Make label just big enough to hold the string.
        let screen: UIScreen = UIScreen.mainScreen();
        let applicationFrame: CGRect = screen.applicationFrame;
        
        let f: CGRect = CGRectMake(
            applicationFrame.origin.x,
            applicationFrame.origin.y,
            90,
            40);
        let f2: CGRect = CGRectMake(
            applicationFrame.origin.x + applicationFrame.width - 90,
            applicationFrame.origin.y,
            90,
            40);
        
        
        
        littleView = LittleView(frame: f);
        littleView2 = LittleView2(frame: f2);
        //call init method of class LittleView
        super.init(coder: aDecoder)
        backgroundColor = UIColor.yellowColor();
        addSubview(littleView);
        addSubview(littleView2);
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        let touch: UITouch = touches.anyObject() as UITouch;
        let point: CGPoint = touch.locationInView(self);
       // var side: CGPoint = (point.x + 40);
        UIView.animateWithDuration(1.0,
            delay: 0.0,
            options:  UIViewAnimationOptions.CurveEaseInOut,
            animations: {
                //This block describes what the animation should do.
               // let f3: CGRect = CGRectMake(point.x - 40, point.y - 20, 80, 40);
                var pointmake2: CGPoint = CGPointMake(point.x - 40, point.y)
                var pointmake: CGPoint = CGPointMake(point.x + 40, point.y)
                self.littleView.center = pointmake2;
                self.littleView2.center = pointmake; //+ (f.bounds.width / 2));

                //these are all the things I tried to make the LittleView and LittleView2 copy themselves.
                //self.addSubview(self.littleView);	//Move the LittleView to a new location.
               // self.addSubview(LittleView2 (frameForAlignmentRect(frame: self.f)));
               // self.addSubview(self.LittleView(frame: f));
                
            },
            completion: nil
        );
    }
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
 
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
    }
    
    override func touchesCancelled(touches: NSSet, withEvent event: UIEvent) {
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
    // Drawing code
    }
    */
    
}