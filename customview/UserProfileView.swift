//
//  UserProfileView.swift
//  customview
//
//  Created by Anuj Goyal on 10/24/14.
//  Copyright (c) 2014 TXT2LRN. All rights reserved.
//

import UIKit

class UserProfileView: UIView {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        var nib = UINib(nibName: "UserProfileView", bundle: nil)
        nib.instantiateWithOwner(self, options: nil)
        
        //contentView.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height)
        contentView.frame = bounds  // same as the above line, 1:02:00
        self.addSubview(contentView)
    }
    
    // read swift book, section on initializers
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
