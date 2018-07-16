//
//  useAPI.swift
//  myPUBG3
//
//  Created by 엄태형 on 2017. 12. 6..
//  Copyright © 2017년 엄태형. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import UIKit

class useAPI: NSObject {
    static func searchSoloLog(name: String, region: String, season: String, success: @escaping ((Array<Any>) -> (Void))) {
        var info: [String] = []
        let PUBGURL = "https://api.pubgtracker.com/v2/profile/pc/\(name)"
        let appKey = "f563aa1e-e464-4235-9b2c-f55eeb1513e3"
        
        var headers = [String: String]()
        headers.updateValue(appKey, forKey: "TRN-Api-Key")
        var parameters1 = [String: String]()
         parameters1.updateValue(region,forKey:"region")
         parameters1.updateValue(season,forKey:"season")
        
        Alamofire.request(PUBGURL, method: .get, parameters: parameters1, headers: headers)
            .validate().responseData{ response in
                switch response.result{
                case .success:
                    if let data = response.data {
                        var json = JSON(data)
                        print("solo api success")
                        for i in 0..<json["stats"].count{
                            if json["stats"][i]["region"].string == region && json["stats"][i]["season"].string == season
                              {
                                if json["stats"][i]["mode"] == "solo" {
                                    let soloLating6 = json["stats"][i]["stats"][9]["value"].stringValue//레이팅
                                    let soloKd6 = json["stats"][i]["stats"][0]["value"].stringValue//kd
                                    let soloWinper6 = json["stats"][i]["stats"][1]["value"].stringValue//승률
                                    let soloTopper6 = json["stats"][i]["stats"][7]["value"].stringValue//탑텐퍼센트
                                    let soloGrade6 = json["stats"][i]["stats"][9]["rank"].stringValue//랭킹몇등
                                    //var soloGradeper6 = json["stats"][i]["stats"][9]["percentile"].stringValue//점수상위몇퍼
                                    let numberOfPlaces = 2.0
                                    let multiplier = pow(10.0, numberOfPlaces)
                                    let num = json["stats"][i]["stats"][9]["percentile"].doubleValue
                                    let rounded = round(num * multiplier) / multiplier
                                    var soloGradeper6 = String(rounded)
                                    
                                    if soloGradeper6.isEmpty {
                                        soloGradeper6 = json["stats"][i]["stats"][9]["rank"].stringValue//솔로3489605
                                    }
                                    let soloWinCount6 = json["stats"][i]["stats"][4]["value"].stringValue//우승횟수
                                    //let soloTopCount6 = json["stats"][i]["stats"][6]["value"].stringValue//탑텐횟수
                                    //let soloLoseCount6 = json["stats"][i]["stats"][8]["value"].stringValue//패배횟수
                                    let WinCount = json["stats"][i]["stats"][4]["value"].intValue//우승횟수
                                    let TopCount = json["stats"][i]["stats"][6]["value"].intValue//탑텐횟수
                                    let LoseCount = json["stats"][i]["stats"][8]["value"].intValue//패배횟수
                                    
                                    let TopCount6 = TopCount - WinCount
                                    let LoseCount6 = LoseCount - TopCount6
                                    
                                    let soloTopCount6 = String(TopCount6)
                                    let soloLoseCount6 = String(LoseCount6)
                                    
                                    let soloDmgCount6 = json["stats"][i]["stats"][12]["value"].stringValue//평균딜량
                                    let soloHead6 = json["stats"][i]["stats"][14]["value"].stringValue//헤드%
                                    let soloMostkill6 = json["stats"][i]["stats"][32]["value"].stringValue//최다킬
                                    let soloSurvive6 = json["stats"][i]["stats"][38]["value"].stringValue//평균생존시간
                                    let soloSniper6 = json["stats"][i]["stats"][45]["value"].stringValue//최장저격거리
                                    
                                    info = [soloWinCount6,soloTopCount6,soloLoseCount6,soloLating6,soloGradeper6,soloWinper6,soloKd6,soloHead6,soloTopper6,soloDmgCount6,soloMostkill6,soloSurvive6,soloSniper6,soloGradeper6]
                                    //print("soloinfo=\(info)")
                                    //print("solo info yes")
                                    success(info)
                                    break
                                }else {
                                    let soloLating6 = "0"
                                    let soloKd6 = "0"
                                    let soloWinper6 = "0"
                                    let soloTopper6 = "0"
                                    let soloGrade6 = "0"
                                    let soloGradeper6 = "100"
                                    let soloWinCount6 = "0"
                                    let soloTopCount6 = "0"
                                    let soloLoseCount6 = "0"
                                    let soloDmgCount6 = "0"
                                    let soloHead6 = "0"
                                    let soloMostkill6 = "0"
                                    let soloSurvive6 = "0"
                                    let soloSniper6 = "0"
                                    
                                    info = [soloWinCount6,soloTopCount6,soloLoseCount6,soloLating6,soloGradeper6,soloWinper6,soloKd6,soloHead6,soloTopper6,soloDmgCount6,soloMostkill6,soloSurvive6,soloSniper6,soloGradeper6]
                                    //print("info=\(info)")
                                    success(info)
                                }
                            }
                        }
                    }
                case .failure(_):
                    print("error : \(response.error!)")
                }
        }
    }
    //duo
    static func searchDuoLog(name: String, region: String, season: String, success: @escaping ((Array<Any>) -> (Void))) {
        var info: [String] = []
        let PUBGURL = "https://api.pubgtracker.com/v2/profile/pc/\(name)"
        let appKey = "f563aa1e-e464-4235-9b2c-f55eeb1513e3"
        
        var headers = [String: String]()
        headers.updateValue(appKey, forKey: "TRN-Api-Key")
        var parameters1 = [String: String]()
        parameters1.updateValue(region,forKey:"region")
        parameters1.updateValue(season,forKey:"season")
        
        Alamofire.request(PUBGURL, method: .get, parameters: parameters1, headers: headers)
            .validate().responseData{ response in
                switch response.result{
                case .success:
                    if let data = response.data {
                        var json = JSON(data)
                        print("duo api success")
                        //print(json)
                        for i in 0..<json["stats"].count{
                            if json["stats"][i]["region"].string == region && json["stats"][i]["season"].string == season
                                 {
                                    if json["stats"][i]["mode"] == "duo" {
                                        let duoLating6 = json["stats"][i]["stats"][9]["value"].stringValue//레이팅
                                        let duoKd6 = json["stats"][i]["stats"][0]["value"].stringValue//kd
                                        let duoWinper6 = json["stats"][i]["stats"][1]["value"].stringValue//승률
                                        let duoTopper6 = json["stats"][i]["stats"][7]["value"].stringValue//탑텐퍼센트
                                        let duoGrade6 = json["stats"][i]["stats"][9]["rank"].stringValue//랭킹몇등
                                        //var duoGradeper6 = json["stats"][i]["stats"][9]["percentile"].stringValue//점수상위몇퍼
                                        let numberOfPlaces = 2.0
                                        let multiplier = pow(10.0, numberOfPlaces)
                                        let num = json["stats"][i]["stats"][9]["percentile"].doubleValue
                                        let rounded = round(num * multiplier) / multiplier
                                        var duoGradeper6 = String(rounded)
                                        if duoGradeper6.isEmpty {//2236084
                                             duoGradeper6 = json["stats"][i]["stats"][9]["rank"].stringValue//
                                        }
                                        let duoWinCount6 = json["stats"][i]["stats"][4]["value"].stringValue//우승횟수
                                        //let soloTopCount6 = json["stats"][i]["stats"][6]["value"].stringValue//탑텐횟수
                                        //let soloLoseCount6 = json["stats"][i]["stats"][8]["value"].stringValue//패배횟수
                                        let WinCount = json["stats"][i]["stats"][4]["value"].intValue//우승횟수
                                        let TopCount = json["stats"][i]["stats"][6]["value"].intValue//탑텐횟수
                                        let LoseCount = json["stats"][i]["stats"][8]["value"].intValue//패배횟수
                                        
                                        let TopCount6 = TopCount - WinCount
                                        let LoseCount6 = LoseCount - TopCount6
                                        
                                        let duoTopCount6 = String(TopCount6)
                                        let duoLoseCount6 = String(LoseCount6)
                                        let duoDmgCount6 = json["stats"][i]["stats"][12]["value"].stringValue//평균딜량
                                        let duoHead6 = json["stats"][i]["stats"][14]["value"].stringValue//헤드%
                                        let duoMostkill6 = json["stats"][i]["stats"][32]["value"].stringValue//최다킬
                                        let duoSurvive6 = json["stats"][i]["stats"][38]["value"].stringValue//평균생존시간
                                        let duoSniper6 = json["stats"][i]["stats"][45]["value"].stringValue//최장저격거리
                                        
                                        info = [duoWinCount6,duoTopCount6,duoLoseCount6,duoLating6,duoGradeper6,duoWinper6,duoKd6,duoHead6,duoTopper6,duoDmgCount6,duoMostkill6,duoSurvive6,duoSniper6,duoGradeper6]
                                        //print("duoinfo=\(info)")
                                        success(info)
                                        break
                                    }else {
                                        let duoLating6 = "0"
                                        let duoKd6 = "0"
                                        let duoWinper6 = "0"
                                        let duoTopper6 = "0"
                                        let duoGrade6 = "0"
                                        let duoGradeper6 = "100"
                                        let duoWinCount6 = "0"
                                        let duoTopCount6 = "0"
                                        let duoLoseCount6 = "0"
                                        let duoDmgCount6 = "0"
                                        let duoHead6 = "0"
                                        let duoMostkill6 = "0"
                                        let duoSurvive6 = "0"
                                        let duoSniper6 = "0"
                                        
                                        info = [duoWinCount6,duoTopCount6,duoLoseCount6,duoLating6,duoGradeper6,duoWinper6,duoKd6,duoHead6,duoTopper6,duoDmgCount6,duoMostkill6,duoSurvive6,duoSniper6,duoGradeper6]
                                        //print("info=\(info)")
                                        success(info)
                                    }
                            }
                        }
                    }
                case .failure(_):
                    print("error : \(response.error!)")
                }
        }
    }
    //squad
    static func searchSquadLog(name: String, region: String, season: String, success: @escaping ((Array<Any>) -> (Void))) {
        var info: [String] = []
        let PUBGURL = "https://api.pubgtracker.com/v2/profile/pc/\(name)"
        let appKey = "f563aa1e-e464-4235-9b2c-f55eeb1513e3"
        
        var headers = [String: String]()
        headers.updateValue(appKey, forKey: "TRN-Api-Key")
        var parameters1 = [String: String]()
        parameters1.updateValue(region,forKey:"region")
        parameters1.updateValue(season,forKey:"season")
        
        Alamofire.request(PUBGURL, method: .get, parameters: parameters1, headers: headers)
            .validate().responseData{ response in
                switch response.result{
                case .success:
                    if let data = response.data {
                        var json = JSON(data)
                        print("squad api success")
                        print(json)
                        if json["error"] != nil {
                            info = ["aa"]
                            success(info)
                        }else {
                            for i in 0..<json["stats"].count{
                                if json["stats"][i]["region"].string == region && json["stats"][i]["season"].string == season
                                {
                                    if json["stats"][i]["mode"] == "squad" {
                                        print("aa")
                                        let squadLating6 = json["stats"][i]["stats"][9]["value"].stringValue//레이팅
                                        let squadKd6 = json["stats"][i]["stats"][0]["value"].stringValue//kd
                                        let squadWinper6 = json["stats"][i]["stats"][1]["value"].stringValue//승률
                                        let squadTopper6 = json["stats"][i]["stats"][7]["value"].stringValue//탑텐퍼센트
                                        //var squadGradeper6 = json["stats"][i]["stats"][9]["percentile"].stringValue//점수상위몇퍼
                                        let numberOfPlaces = 2.0
                                        let multiplier = pow(10.0, numberOfPlaces)
                                        let num = json["stats"][i]["stats"][9]["percentile"].doubleValue
                                        let rounded = round(num * multiplier) / multiplier
                                        var squadGradeper6 = String(rounded)
                                        if squadGradeper6.isEmpty {//3039373
                                            squadGradeper6 = json["stats"][i]["stats"][9]["rank"].stringValue//솔로3489605
                                        }
                                        let squadWinCount6 = json["stats"][i]["stats"][4]["value"].stringValue//우승횟수
                                        //let soloTopCount6 = json["stats"][i]["stats"][6]["value"].stringValue//탑텐횟수
                                        //let soloLoseCount6 = json["stats"][i]["stats"][8]["value"].stringValue//패배횟수
                                        let WinCount = json["stats"][i]["stats"][4]["value"].intValue//우승횟수
                                        let TopCount = json["stats"][i]["stats"][6]["value"].intValue//탑텐횟수
                                        let LoseCount = json["stats"][i]["stats"][8]["value"].intValue//패배횟수
                                        let TopCount6 = TopCount - WinCount
                                        let LoseCount6 = LoseCount - TopCount6
                                        let squadTopCount6 = String(TopCount6)
                                        let squadLoseCount6 = String(LoseCount6)
                                        let squadDmgCount6 = json["stats"][i]["stats"][12]["value"].stringValue//평균딜량
                                        let squadHead6 = json["stats"][i]["stats"][14]["value"].stringValue//헤드%
                                        let squadMostkill6 = json["stats"][i]["stats"][32]["value"].stringValue//최다킬
                                        let squadSurvive6 = json["stats"][i]["stats"][38]["value"].stringValue//평균생존시간
                                        let squadSniper6 = json["stats"][i]["stats"][45]["value"].stringValue//최장저격거리
                                        info = [squadWinCount6,squadTopCount6,squadLoseCount6,squadLating6,squadGradeper6,squadWinper6,squadKd6,squadHead6,squadTopper6,squadDmgCount6,squadMostkill6,squadSurvive6,squadSniper6,squadGradeper6]
                                        success(info)
                                        break
                                    }else {
                                        let squadLating6 = "0"
                                        let squadKd6 = "0"
                                        let squadWinper6 = "0"
                                        let squadTopper6 = "0"
                                        let squadGrade6 = "0"
                                        let squadGradeper6 = "100"
                                        let squadWinCount6 = "0"
                                        let squadTopCount6 = "0"
                                        let squadLoseCount6 = "0"
                                        let squadDmgCount6 = "0"
                                        let squadHead6 = "0"
                                        let squadMostkill6 = "0"
                                        let squadSurvive6 = "0"
                                        let squadSniper6 = "0"
                                        print("zz")
                                        info = [squadWinCount6,squadTopCount6,squadLoseCount6,squadLating6,squadGradeper6,squadWinper6,squadKd6,squadHead6,squadTopper6,squadDmgCount6,squadMostkill6,squadSurvive6,squadSniper6,squadGradeper6]
                                        //print("info=\(info)")
                                        success(info)
                                        
                                    }
                                }
                            }
                        }
                        
                    }
                case .failure(_):
                    print("error : \(response.error!)")
                    info = ["aa"]
                    success(info)
                    
                }
        }
    }
}

