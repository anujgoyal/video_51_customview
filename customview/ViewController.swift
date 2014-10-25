//
//  ViewController.swift
//  customview
//
//  Created by Anuj Goyal on 10/20/14.
//  Copyright (c) 2014 TXT2LRN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var progress: Float = 0
    var progressView: ProgressView!
    @IBOutlet var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        progressView = ProgressView(frame: CGRect(x:10, y:100, width:300, height:1))
//        progressView.backgroundColor = UIColor.clearColor()
//        self.view.addSubview(progressView)
//        
//        // 18:00, video 5
//        NSTimer.scheduledTimerWithTimeInterval(0.05, target: self, selector: "onTimer:", userInfo: nil, repeats: true)
        
//        // 36:30, video 5
//        var nib = UINib(nibName: "CustomNib", bundle: nil)
//        var objs = nib.instantiateWithOwner(self, options: nil)
//        
//        
//        // add views
//        var view1 = objs[0] as UIView
//        view.addSubview(view1)
//        
//        var view2 = objs[1] as UIView
//        view2.frame.origin.y += 200
//        view.addSubview(view2)
//
//        var view3 = objs[2] as UIView
//        view3.frame.origin.y += 300
//        view.addSubview(view3)
//        
//        myLabel.text = "I was here! dude"
     
        // 58:29
        var profileHeaderView = UserProfileView(frame: CGRect(x: 0, y: 0, width: 320, height: 300))
        view.addSubview(profileHeaderView)
        
    }

    func onTimer(timer: NSTimer) {
        self.progress += 0.01
        
        progressView.progress = self.progress
        // never call drawRect(), layoutSubViews() directly
        // progressView.setNeedsDisplay() // 21:47, video 5
        
        if self.progress >= 1 {
            timer.invalidate()
        }
        println("progress: \(progress)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

