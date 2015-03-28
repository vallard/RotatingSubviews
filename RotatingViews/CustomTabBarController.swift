//
//  CustomTabBarController.swift
//  RotatingViews
//
//  Created by Vallard Benincosa on 3/24/15.
//  Copyright (c) 2015 Vallard Benincosa. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    
    override func shouldAutorotate() -> Bool {
        if (self.selectedIndex == 0){
            return false
        }
        return true
    }


    /*
    override func supportedInterfaceOrientations() -> Int {
        if (self.selectedIndex == 0){
            NSNotificationCenter.defaultCenter().postNotificationName("orientationWillChange", object: nil)
            return Int(UIInterfaceOrientationMask.Portrait.rawValue)
        }
        return Int(UIInterfaceOrientationMask.All.rawValue)
        
    } */
    
    /*
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        
        let transitionToWide = size.width > size.height
        println("Rotation!")
        
    } */
    
    /*
    // Get this from https://developer.apple.com/library/ios/featuredarticles/ViewControllerPGforiPhoneOS/RespondingtoDeviceOrientationChanges/RespondingtoDeviceOrientationChanges.html
    
    // Old way to transition.
    // 1.  Get setup.  This gets forwarded to contained interfaces.
    override func willRotateToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
        // This method is called first.
    }
    
    // 2. Will layout subviews
    override func viewWillLayoutSubviews() {
        // window adjusts the bounds of view controller's view has been done so this is triggered. 
        // Get statusbar to see the orientation:
        let orientation : UIInterfaceOrientation = UIApplication.sharedApplication().statusBarOrientation
        println("Orientation: \(orientation)")
        
    }
    
    // 3. Will animate is called. 
    override func willAnimateRotationToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
        // this is called and performs the animation.
    }
    
    // 4.  Done animating. 
    override func didRotateFromInterfaceOrientation(fromInterfaceOrientation: UIInterfaceOrientation) {
        // this is called to show that its done rotating.
    }
    */

}
