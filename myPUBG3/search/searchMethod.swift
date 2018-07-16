//
//  searchMethod.swift
//  myPUBG3
//
//  Created by 엄태형 on 2017. 12. 11..
//  Copyright © 2017년 엄태형. All rights reserved.
//

import Foundation
import UIKit

class searchMethod: NSObject {
    static func rankImage(rank: Double) -> UIImage {
        var rankPic = UIImage()
        if rank >= 99.1 && rank <= 100 {
            rankPic = UIImage(named: "grandbronze.png")!
        }else if rank <= 99.0 && rank >= 93.1 {
            rankPic = UIImage(named: "bronze.png")!
        }else if rank <= 93.0 && rank >= 71.1 {
            rankPic = UIImage(named: "silver.png")!
        }else if rank <= 71.0 && rank >= 37.1 {
            rankPic = UIImage(named: "gold.png")!
        }else if rank <= 37.0 && rank >= 14.1 {
            rankPic = UIImage(named: "platinum.png")!
        }else if rank <= 14.0 && rank >= 4.1 {
            rankPic = UIImage(named: "diamond.png")!
        }else if rank <= 4.0 && rank >= 1.1 {
            rankPic = UIImage(named: "master.png")!
        }else if rank <= 1.0 && rank >= 0.1  {
            rankPic = UIImage(named: "grandmaster.png")!
        }else {
            rankPic = UIImage(named: "top500.png")!
        }
        return rankPic
    }
    static func timeShape(time: Int) -> String {
        let bun = time/60
        let cho = time%60
        return "\(bun)분 \(cho)초"
    }
    static func hiddenBtn(count: Int, btn0: UIButton, btn1: UIButton, btn2: UIButton, btn3: UIButton, btn4: UIButton, clearBtn: UIButton) {
         if count == 0 {
         btn0.isHidden = true
         btn1.isHidden = true
         btn2.isHidden = true
         btn3.isHidden = true
         btn4.isHidden = true
         clearBtn.isHidden = true
         }else if count == 1 {
         btn1.isHidden = true
         btn2.isHidden = true
         btn3.isHidden = true
         btn4.isHidden = true
         }else if count == 2 {
         btn2.isHidden = true
         btn3.isHidden = true
         btn4.isHidden = true
         }else if count == 3 {
         btn3.isHidden = true
         btn4.isHidden = true
         }else if count == 4 {
         btn4.isHidden = true
         }
    }
    static func unHiddenBtn(count: Int, btn0: UIButton, btn1: UIButton, btn2: UIButton, btn3: UIButton, btn4: UIButton, clearBtn: UIButton) {
        if count == 1 {
            btn0.isHidden = false
            clearBtn.isHidden = false
        }else if count == 2 {
            btn0.isHidden = false
            btn1.isHidden = false
        }else if count == 3 {
            btn0.isHidden = false
            btn1.isHidden = false
            btn2.isHidden = false
        }else if count == 4 {
            btn0.isHidden = false
            btn1.isHidden = false
            btn2.isHidden = false
            btn3.isHidden = false
        }else if count == 5 {
            btn0.isHidden = false
            btn1.isHidden = false
            btn2.isHidden = false
            btn3.isHidden = false
            btn4.isHidden = false
        }
    }
}
