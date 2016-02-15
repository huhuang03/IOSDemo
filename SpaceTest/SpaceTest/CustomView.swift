//
//  CustomView.swift
//  SpaceTest
//
//  Created by 文凡胡 on 1/17/16.
//  Copyright © 2016 Th. All rights reserved.
//

import UIKit

class CustomView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("width: \(self.frame.width), height: \(self.frame.height)")
    }

}
