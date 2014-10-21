//
//  ViewController.swift
//  customview
//
//  Created by Anuj Goyal on 10/20/14.
//  Copyright (c) 2014 TXT2LRN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var progressView = ProgressView(frame: CGRect(x:10, y:100, width:300, height:1))
        self.view.addSubview(progressView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

