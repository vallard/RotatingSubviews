//
//  FirstViewController.swift
//  RotatingViews
//
//  Created by Vallard Benincosa on 3/24/15.
//  Copyright (c) 2015 Vallard Benincosa. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.hidden = true
        // Add observer to listen for device rotation
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "orientationChanged:", name: "orientationWillChange", object: nil)
        
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        // kick off notification of current orientation.  
        appDelegate.getInitialOrientation()
    }
    
    override func viewWillDisappear(animated: Bool) {
        // Remove observer of self.
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        //
    }
    
    func orientationChanged(notification: NSNotification ){
        println("Recieved notification of orientation change")
        UIDevice.currentDevice().orientation
        if let info = notification.userInfo as? Dictionary<String,NSNumber> {
            if let ori = info["orientation"] {
                println("orientation: \(ori)")
                let newOr : UIDeviceOrientation = UIDeviceOrientation(rawValue: ori.integerValue)!
                rotateSubviewsForOrientation(newOr)
            }
        }
    }
    
    func rotateSubviewsForOrientation(orientation: UIDeviceOrientation) {
        // rotate the subviews.
        switch orientation {
        case UIDeviceOrientation.LandscapeLeft:
            // home buitton facing right
            subLabelTransform(CGFloat(M_PI_2 ))
        case UIDeviceOrientation.LandscapeRight:
            // home button facing left
            subLabelTransform(CGFloat(3 * M_PI_2))
        default:
            subLabelTransform(CGFloat(0))
        }
    }
    
    func subLabelTransform(f: CGFloat) {
        UIView.animateWithDuration(0.2, animations: { () -> Void in
            //
            self.label1.transform = CGAffineTransformMakeRotation(f)
            self.label2.transform = CGAffineTransformMakeRotation(f)
            self.mainLabel.transform = CGAffineTransformMakeRotation(f)
            
        }) { (Bool) -> Void in
            //println("Done")
        }
        
        
    }

}
