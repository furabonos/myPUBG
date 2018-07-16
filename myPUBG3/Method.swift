//
//  Method.swift
//  myPUBG3
//
//  Created by 엄태형 on 2017. 12. 6..
//  Copyright © 2017년 엄태형. All rights reserved.
//

import Foundation
import UIKit

class Method: NSObject {
    static func altMSG() -> UIAlertController {
        let alertmsg = UIAlertController(title: "경고", message: "검색어를 한글자 이상 입력해주세요.", preferredStyle: UIAlertControllerStyle.alert)
        let alertaction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        alertmsg.addAction(alertaction)
        return alertmsg
    }
    static func altMSG2() -> UIAlertController {
        let alertmsg = UIAlertController(title: "경고", message: "현재 해당ID는 검색이 되지 않습니다.\n 다른ID를 검색해주세요.", preferredStyle: UIAlertControllerStyle.alert)
        let alertaction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        alertmsg.addAction(alertaction)
        return alertmsg
    }
    static func altMSG3() -> UIAlertController {
        let alertmsg = UIAlertController(title: "알림", message: "새시즌이 오픈된 후에 업데이트 됩니다.", preferredStyle: UIAlertControllerStyle.alert)
        let alertaction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        alertmsg.addAction(alertaction)
        return alertmsg
    }
    static func altMSG4() -> UIAlertController {
        let alertmsg = UIAlertController(title: "알림", message: "현재 해당ID는 검색이 되지 않습니다.\n 잠시후 다시 검색해주세요.", preferredStyle: UIAlertControllerStyle.alert)
        let alertaction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        alertmsg.addAction(alertaction)
        return alertmsg
    }
    static func altMSG5() -> UIAlertController {
        let alertmsg = UIAlertController(title: "알림", message: "현재 검색서버가 불안정합니다.\n 잠시후 다시 검색해주세요.", preferredStyle: UIAlertControllerStyle.alert)
        let alertaction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:  { (action) in
            
        })
        
        alertmsg.addAction(alertaction)
        return alertmsg
    }
    static func mapPopup() -> UIAlertController {
        let alertmsg = UIAlertController(title: "", message: "비행기의 시작점과 도착점을 터치하세요!", preferredStyle: UIAlertControllerStyle.alert)
        let alertaction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        alertmsg.addAction(alertaction)
        return alertmsg
    }
}
