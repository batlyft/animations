//
//  ViewController.swift
//  Animations
//
//  Created by Bat Computer on 10/12/15.
//  Copyright © 2015 HardSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    
    var timer = NSTimer()
    
    var isAnimating = true

    @IBOutlet var homerImage: UIImageView!
    
    @IBAction func animateImage(sender: AnyObject) {
        
        if isAnimating == true {
            
            timer.invalidate()
            
            isAnimating = false
            
        } else {
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: ("doAnimation"), userInfo: nil, repeats: true)
            
            isAnimating = true
            
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: ("doAnimation"), userInfo: nil, repeats: true)
        
    }
    
    func doAnimation() {
        
        if counter == 29 {
            
            counter = 1
            
        } else {
            
            counter++
            
        }
        
        homerImage.image = UIImage(named: "frame\(counter).png")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    override func viewDidLayoutSubviews() {
        // animate in, this starts it off screen 
        
        /* homerImage.center = CGPointMake(homerImage.center.x - 400, homerImage.center.y) */
        
        // fade in, this starts it invisible
        
         /*   homerImage.alpha = 0  */
        
        // size change
        
            homerImage.frame = CGRectMake(100, 20, 0, 0)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1) { () -> Void in
          // animate in, this pulls it on screen 
            
            /* self.homerImage.center = CGPointMake(self.homerImage.center.x + 400, self.homerImage.center.y) */
            
            // fade in, this turns it visible
            
            /*   self.homerImage.alpha = 1  */
            
            // size change
            
            self.homerImage.frame = CGRectMake(100, 20, 200, 200)
            
            
        }
        
    }
*/


}

