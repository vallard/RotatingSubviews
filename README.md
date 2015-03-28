# Rotating Views

This demo shows how to rotate a view keeping it fixed while rotating
subviews when the phone moves.  

(sorry about the poor animated gif quality)
![Rotating View Gif](rs.gif)

If you look closely you'll see that the subviews (First Label) and the 'One'
and 'Two' rotate with the phone while the main view (Red with the white
stripe) stays the same. 

## More Explanation

This particular applicationion is launched with a UITabBarController so 
that only one view is static.  The other views in the tabbarcontroller 
will rotate as normal.  

The UITabBarController checks to see if the displayed view controller is
the static view controller.  If so, it doesn't allow rotation. 

We subscribe to the UIDeviceOrientationDidChangeNotification in the 
main application.  That way we can tell if the device has been rotated. 

From there we trigger another notification to alert the displayed view
that we are rotating.  

## Remaining Issue

The one problem I'm having still is what to do when the application is
initialized in landscape mode.  If that happens it doesn't automatically
change or send the correct notification.  
