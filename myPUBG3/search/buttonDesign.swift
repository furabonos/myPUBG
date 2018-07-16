//
//  buttonDesign.swift
//  myPUBG3
//
//  Created by 엄태형 on 2017. 12. 7..
//  Copyright © 2017년 엄태형. All rights reserved.
//

import UIKit

class buttonDesign: UIButton{
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 5.0;
        
    }
}
