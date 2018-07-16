//
//  infoPUBG_method.swift
//  myPUBG3
//
//  Created by 엄태형 on 2017. 12. 6..
//  Copyright © 2017년 엄태형. All rights reserved.
//

import Foundation
import UIKit

class infoPUBG_method: NSObject {
    
    static func selectSection(row: Int) -> Array<String> {
        var section: Array<String> = []
        if row == 0 {
            section = ["HG","SMG","AR","SR","LMG","SG","BOW","MELEE","THRWOABLES"]
        }else if row == 1 {
            section = ["총구","손잡이","조준경","탄창","개머리판"]
        }else if row == 2 {
            section = ["탄약"]
        }else if row == 3 {
            section = ["방어구"]
        }else if row == 4 {
            section = ["소모품"]
        }else {
            section = ["탈 것"]
        }
        return section
    }
    static func selectSectionItem(row: Int) -> [[String]] {
        var sectionItem: [[String]] = []
        if row == 0 {
            sectionItem = [["P18C","P1911","P92","R1895"],["micro UZI","Tommy Gun","UMP9","Vector"],["AKM","Groza","M16A4","M416","SCAR-L"],["AWM","Kar98k","M24","Mk14","SKS","VSS","Mini14"],["M249"],["S12K","S1897","S686"],["석궁"],["빠루","마체테","프라이팬","낫"],["수류탄","화염병","연막탄","섬광탄"]]
        }else if row == 1 {
            sectionItem = [["산탄총 쵸크","보정기(AR,S12K)","보정기(SMG)","보정기(SR)","소염기(AR,S12K)","소염기(SMG)","소염기(SR)","소음기(AR,S12K)","소음기(권총)","소음기(SMG)","소음기(SR)"],["앵글 수직 손잡이(AR,SMG,DMR)","석궁용 화살통","수직 손잡이(AR,SMG,DMR)"],["15배율 스코프","2배율 스코프","4배율 스코프","8배율 스코프","홀로그램 조준기","레드 도트 사이트"],["대용량 탄창(AR,S12K)","대용량 탄창(SMG)","대용량 탄창(권총)","대용량 탄창(SR)","대용량 퀵 드로우 탄창(AR,S12K)","대용량 퀵 드로우 탄창(SMG)","대용량 퀵 드로우 탄창(자동권총)","대용량 퀵 드로우 탄창(SR)","퀵드로우 탄창(AR,S12K)","퀵드로우 탄창(SMG)","퀵드로우 탄창(자동권총)","퀵드로우 탄창(SR)"],["탄띠(Kar98k)","탄띠(산탄총)","칙패드(SR)","개머리판(micro UZI)","전술 개머리판(M416M,Vector)"]]
        }else if row == 2 {
            sectionItem = [[".300 매그넘",".45 ACP","12 게이지","5.56mm","7.62mm","9mm","석궁용 볼트"]]
        }else if row == 3 {
            sectionItem = [["배낭(Level 1)","배낭(Level 1-1)","배낭(Level 2)","배낭(Level 2-1)","배낭(Level 3)","배낭(Level 3-1)","오토바이 헬멧(회색)(Level 1)","오토바이 헬멧(녹색)(Level 1)","군용 헬멧(삼림지대 위장)(Level 2)","군용 헬멧(사막용 위장)(Level 2)","스페츠나츠 헬멧(Level 3)","경찰 조끼(Level 1)","경찰 조끼(Level 2)","군용 조끼(Level 3)","유틸리티 벨트"]]
        }else if row == 4 {
            sectionItem = [["아드레날린 주사기","붕대","에너지 드링크","구급 상자","연료통","의료용 키트","진통제"]]
        }else {
            sectionItem = [["버기","다시아","오토바이","오토바이 & 사이드카","UAZ(Open Top)","UAZ(Closed Top)","보트"]]
        }
        return sectionItem
    }
    static func sectionImage(row: Int) -> [[UIImage]] {
        var sectionImage: [[UIImage]] = []
        if row == 0 {
            sectionImage = [[UIImage(named: "P18C.png")!,UIImage(named: "P1911.png")!,UIImage(named: "P92.png")!,UIImage(named: "R1895.png")!],[UIImage(named: "UZI.png")!,UIImage(named: "tommygun.png")!,UIImage(named: "ump9.png")!,UIImage(named: "vector.png")!],[UIImage(named: "akm.png")!,UIImage(named: "groza.png")!,UIImage(named: "m16a4.png")!,UIImage(named: "m416.png")!,UIImage(named: "scar.png")!],[UIImage(named: "awm.png")!,UIImage(named: "kar98k.png")!,UIImage(named: "m24.png")!,UIImage(named: "mk14.png")!,UIImage(named: "sks.png")!,UIImage(named: "vss.png")!,UIImage(named: "mini14")!],[UIImage(named: "m249.png")!],[UIImage(named: "s12k.png")!,UIImage(named: "s1897.png")!,UIImage(named: "s686.png")!],[UIImage(named: "bow.png")!],[UIImage(named: "bbaru.png")!,UIImage(named: "machete.png")!,UIImage(named: "fripan.png")!,UIImage(named: "cutter.png")!],[UIImage(named: "bomb.png")!,UIImage(named: "firebottle.png")!,UIImage(named: "smog.png")!,UIImage(named: "flash.png")!]]
        }else if row == 1 {
            sectionImage = [[UIImage(named: "choke.png")!,UIImage(named: "compenAR.png")!,UIImage(named: "compenSMG.png")!,UIImage(named: "compenSR.png")!,UIImage(named: "fireAR.png")!,UIImage(named: "fireSMG.png")!,UIImage(named: "fireSR.png")!,UIImage(named: "soundAR.png")!,UIImage(named: "soundHG.png")!,UIImage(named: "soundSMG.png")!,UIImage(named: "soundSR.png")!],[UIImage(named: "angle.png")!,UIImage(named: "bowbag.png")!,UIImage(named: "perpen.png")!],[UIImage(named: "15big.png")!,UIImage(named: "2big.png")!,UIImage(named: "4big.png")!,UIImage(named: "8big.png")!,UIImage(named: "holo.png")!,UIImage(named: "reddot.png")!],[UIImage(named: "manyAR.png")!,UIImage(named: "manySMG.png")!,UIImage(named: "manyHG.png")!,UIImage(named: "manySR.png")!,UIImage(named: "manyfastAR.png")!,UIImage(named: "manyfastSMG.png")!,UIImage(named: "manyfastHG.png")!,UIImage(named: "manyfastSR.png")!,UIImage(named: "fastAR.png")!,UIImage(named: "fastSMG.png")!,UIImage(named: "fastHG.png")!,UIImage(named: "fastSR.png")!],[UIImage(named: "beltSR.png")!,UIImage(named: "beltSG.png")!,UIImage(named: "padSR.png")!,UIImage(named: "panUZI.png")!,UIImage(named: "panM4.png")!]]
        }else if row == 2 {
            sectionImage = [[UIImage(named: "300magnum.png")!,UIImage(named: "45acp.png")!,UIImage(named: "12gauge.png")!,UIImage(named: "5mm.png")!,UIImage(named: "7mm.png")!,UIImage(named: "9mm.png")!,UIImage(named: "bowmm.png")!]]
        }else if row == 3 {
            sectionImage = [[UIImage(named: "bag1.png")!,UIImage(named: "bag11.png")!,UIImage(named: "bag2.png")!,UIImage(named: "bag22.png")!,UIImage(named: "bag3.png")!,UIImage(named: "bag33.png")!,UIImage(named: "helmet1.png")!,UIImage(named: "helmet11.png")!,UIImage(named: "helmet2.png")!,UIImage(named: "helmet22.png")!,UIImage(named: "helmet3.png")!,UIImage(named: "vest1.png")!,UIImage(named: "vest2.png")!,UIImage(named: "vest3.png")!,UIImage(named: "belt.png")!]]
        }else if row == 4 {
            sectionImage = [[UIImage(named: "adre.png")!,UIImage(named: "band.png")!,UIImage(named: "drink.png")!,UIImage(named: "box.png")!,UIImage(named: "fuel.png")!,UIImage(named: "kit.png")!,UIImage(named: "painkiller.png")!]]
        }else {
            sectionImage = [[UIImage(named: "buggy.png")!,UIImage(named: "dasia.png")!,UIImage(named: "bike.png")!,UIImage(named: "bikeside.png")!,UIImage(named: "uazOpen.png")!,UIImage(named: "uazClose.png")!,UIImage(named: "boat.png")!]]
        }
        return sectionImage
    }
    
    static func detailSection(kind: String) -> [String] {
        var sectionItem: [String] = []
        if kind == "무기(Weapon)" {
            sectionItem = ["이름","데미지","저지력","모드","탄약","부착물","용량","분류","탄속","유효 사거리","연사 간격","장탄수","재장전","희귀도"]
        }else {
            sectionItem = ["이름","내구도","분류","용량"]
        }
        return sectionItem
    }
    
    static func detailImage(name: String) -> UIImage {
        var imageD = UIImage()
        if name == "P18C" {
            imageD =  UIImage(named: "P18Cd.png")!
        }else if name == "P1911" {
            imageD = UIImage(named: "P1911d.png")!
        }else if name == "P92" {
            imageD = UIImage(named: "P92d.png")!
        }
        else if name == "R1895" {
            imageD = UIImage(named: "R1895d.png")!
        }
        else if name == "micro UZI" {
            imageD = UIImage(named: "UZId.png")!
        }
        else if name == "Tommy Gun" {
            imageD = UIImage(named: "tommygund.png")!
        }
        else if name == "UMP9" {
            imageD = UIImage(named: "ump9d.png")!
        }
        else if name == "Vector" {
            imageD = UIImage(named: "vectord.png")!
        }else if name == "AKM" {
            imageD = UIImage(named: "akmd.png")!
        }
        else if name == "Groza" {
            imageD = UIImage(named: "grozad.png")!
        }
        else if name == "M16A4" {
            imageD = UIImage(named: "m16a4d.png")!
        }
        else if name == "M416" {
            imageD = UIImage(named: "m416d.png")!
        }
        else if name == "SCAR-L" {
            imageD = UIImage(named: "scard.png")!
        }
        else if name == "AWM" {
            imageD = UIImage(named: "awmd.png")!
        }
        else if name == "Kar98k" {
            imageD = UIImage(named: "kar98kd.png")!
        }else if name == "M24" {
            imageD = UIImage(named: "m24d.png")!
        }
        else if name == "Mk14" {
            imageD = UIImage(named: "mk14d.png")!
        }
        else if name == "SKS" {
            imageD = UIImage(named: "sksd.png")!
        }
        else if name == "VSS" {
            imageD = UIImage(named: "vssd.png")!
        }
        else if name == "Mini14" {
            imageD = UIImage(named: "mini14d.png")!
        }
        else if name == "M249" {
            imageD = UIImage(named: "m249d.png")!
        }
        else if name == "S12K" {
            imageD = UIImage(named: "s12kd.png")!
        }else if name == "S1897" {
            imageD = UIImage(named: "s1897d.png")!
        }
        else if name == "S686" {
            imageD = UIImage(named: "s686d.png")!
        }
        else if name == "석궁" {
            imageD = UIImage(named: "bowd.png")!
        }
        else if name == "빠루" {
            imageD = UIImage(named: "bbarud.png")!
        }
        else if name == "마체테" {
            imageD = UIImage(named: "macheted.png")!
        }
        else if name == "프라이팬" {
            imageD = UIImage(named: "fripand.png")!
        }
        else if name == "낫" {
            imageD = UIImage(named: "cutterd.png")!
        }
        else if name == "수류탄" {
            imageD = UIImage(named: "bombd.png")!
        }
        else if name == "화염병" {
            imageD = UIImage(named: "firebottled.png")!
        }
        else if name == "연막탄" {
            imageD = UIImage(named: "smogd.png")!
        }
        else if name == "섬광탄" {
            imageD = UIImage(named: "flashd.png")!
        }
        else if name == "산탄총 쵸크" {
            imageD = UIImage(named: "choked.png")!
        }
        else if name == "보정기(AR,S12K)" {
            imageD = UIImage(named: "compenARd.png")!
        }
        else if name == "보정기(SMG)" {
            imageD = UIImage(named: "compenSMGd.png")!
        }
        else if name == "보정기(SR)" {
            imageD = UIImage(named: "compenSRd.png")!
        }
        else if name == "소염기(AR,S12K)" {
            imageD = UIImage(named: "fireARd.png")!
        }
        else if name == "소염기(SMG)" {
            imageD = UIImage(named: "fireSMGd.png")!
        }
        else if name == "소염기(SR)" {
            imageD = UIImage(named: "fireSRd.png")!
        }
        else if name == "소음기(AR,S12K)" {
            imageD = UIImage(named: "soundARd.png")!
        }
        else if name == "소음기(권총)" {
            imageD = UIImage(named: "soundHGd.png")!
        }
        else if name == "소음기(SMG)" {
            imageD = UIImage(named: "soundSMGd.png")!
        }
        else if name == "소음기(SR)" {
            imageD = UIImage(named: "soundSRd.png")!
        }
        else if name == "앵글 수직 손잡이(AR,SMG,DMR)" {
            imageD = UIImage(named: "angled.png")!
        }
        else if name == "석궁용 화살통" {
            imageD = UIImage(named: "bowtongd.png")!
        }
        else if name == "수직 손잡이(AR,SMG,DMR)" {
            imageD = UIImage(named: "perpend.png")!
        }
        else if name == "15배율 스코프" {
            imageD = UIImage(named: "15d.png")!
        }
        else if name == "2배율 스코프" {
            imageD = UIImage(named: "2d.png")!
        }
        else if name == "4배율 스코프" {
            imageD = UIImage(named: "4d.png")!
        }
        else if name == "8배율 스코프" {
            imageD = UIImage(named: "8d.png")!
        }
        else if name == "홀로그램 조준기" {
            imageD = UIImage(named: "holod.png")!
        }
        else if name == "레드 도트 사이트" {
            imageD = UIImage(named: "reddotd.png")!
        }
        else if name == "대용량 탄창(AR,S12K)" {
            imageD = UIImage(named: "manyARd.png")!
        }
        else if name == "대용량 탄창(SMG)" {
            imageD = UIImage(named: "manySMGd.png")!
        }
        else if name == "대용량 탄창(권총)" {
            imageD = UIImage(named: "manyHGd.png")!
        }
        else if name == "대용량 탄창(SR)" {
            imageD = UIImage(named: "manySRd.png")!
        }
        else if name == "대용량 퀵 드로우 탄창(AR,S12K)" {
            imageD = UIImage(named: "manyfastARd.png")!
        }
        else if name == "대용량 퀵 드로우 탄창(SMG)" {
            imageD = UIImage(named: "manyfastSMGd.png")!
        }
        else if name == "대용량 퀵 드로우 탄창(권총)" {
            imageD = UIImage(named: "manyfastHGd.png")!
        }
        else if name == "대용량 퀵 드로우 탄창(SR)" {
            imageD = UIImage(named: "manyfastSRd.png")!
        }
        else if name == "퀵드로우 탄창(AR,S12K)" {
            imageD = UIImage(named: "fastARd.png")!
        }
        else if name == "퀵드로우 탄창(SMG)" {
            imageD = UIImage(named: "fastSMGd.png")!
        }
        else if name == "퀵드로우 탄창(권총)" {
            imageD = UIImage(named: "fastHGd.png")!
        }
        else if name == "퀵드로우 탄창(SR)" {
            imageD = UIImage(named: "fastSRd.png")!
        }
        else if name == "탄띠(Kar98k)" {
            imageD = UIImage(named: "beltSRd.png")!
        }
        else if name == "탄띠(산탄총)" {
            imageD = UIImage(named: "beltSGd.png")!
        }
        else if name == "칙패드(SR)" {
            imageD = UIImage(named: "padSRd.png")!
        }
        else if name == "개머리판(micro UZI)" {
            imageD = UIImage(named: "panUZId.png")!
        }
        else if name == "전술 개머리판(M416M,Vector)" {
            imageD = UIImage(named: "panM4d.png")!
        }
        else if name == ".300 매그넘" {
            imageD = UIImage(named: "300d.png")!
        }
        else if name == ".45 ACP" {
            imageD = UIImage(named: "45d.png")!
        }
        else if name == "12 게이지" {
            imageD = UIImage(named: "12d.png")!
        }
        else if name == "5.56mm" {
            imageD = UIImage(named: "5d.png")!
        }
        else if name == "7.62mm" {
            imageD = UIImage(named: "7d.png")!
        }
        else if name == "9mm" {
            imageD = UIImage(named: "9d.png")!
        }
        else if name == "석궁용 볼트" {
            imageD = UIImage(named: "boltd.png")!
        }
        else if name == "배낭(Level 1)" {
            imageD = UIImage(named: "bag1d.png")!
        }
        else if name == "배낭(Level 1-1)" {
            imageD = UIImage(named: "bag11d.png")!
        }
        else if name == "배낭(Level 2)" {
            imageD = UIImage(named: "bag2d.png")!
        }
        else if name == "배낭(Level 2-1)" {
            imageD = UIImage(named: "bag22d.png")!
        }
        else if name == "배낭(Level 3)" {
            imageD = UIImage(named: "bag3d.png")!
        }
        else if name == "배낭(Level 3-1)" {
            imageD = UIImage(named: "bag33d.png")!
        }
        else if name == "오토바이 헬멧(회색)(Level 1)" {
            imageD = UIImage(named: "helmet1d.png")!
        }
        else if name == "오토바이 헬멧(녹색)(Level 1)" {
            imageD = UIImage(named: "helmet11d.png")!
        }
        else if name == "군용 헬멧(삼림지대 위장)(Level 2)" {
            imageD = UIImage(named: "helmet2d.png")!
        }
        else if name == "군용 헬멧(사막용 위장)(Level 2)" {
            imageD = UIImage(named: "helmet22d.png")!
        }
        else if name == "스페츠나츠 헬멧(Level 3)" {
            imageD = UIImage(named: "helmet3d.png")!
        }
        else if name == "경찰 조끼(Level 1)" {
            imageD = UIImage(named: "vest1d.png")!
        }
        else if name == "경찰 조끼(Level 2)" {
            imageD = UIImage(named: "vest2d.png")!
        }
        else if name == "군용 조끼(Level 3)" {
            imageD = UIImage(named: "vest3d.png")!
        }
        else if name == "유틸리티 벨트" {
            imageD = UIImage(named: "beltd.png")!
        }
        else if name == "아드레날린 주사기" {
            imageD = UIImage(named: "adred.png")!
        }
        else if name == "붕대" {
            imageD = UIImage(named: "bandd.png")!
        }
        else if name == "에너지 드링크" {
            imageD = UIImage(named: "drinkd.png")!
        }
        else if name == "구급 상자" {
            imageD = UIImage(named: "boxd.png")!
        }
        else if name == "연료통" {
            imageD = UIImage(named: "fueld.png")!
        }
        else if name == "의료용 키트" {
            imageD = UIImage(named: "kitd.png")!
        }
        else if name == "진통제" {
            imageD = UIImage(named: "painkillerd.png")!
        }
        else if name == "버기" {
            imageD = UIImage(named: "buggydd.png")!
        }
        else if name == "다시아" {
            imageD = UIImage(named: "dasiad.png")!
        }
        else if name == "오토바이" {
            imageD = UIImage(named: "cycled.png")!
        }
        else if name == "오토바이 & 사이드카" {
            imageD = UIImage(named: "cyclesided.png")!
        }
        else if name == "UAZ(Open Top)" {
            imageD = UIImage(named: "openuazd.png")!
        }
        else if name == "UAZ(Closed Top)" {
            imageD = UIImage(named: "closeuazd.png")!
        }
        else if name == "보트" {
            imageD = UIImage(named: "boatd.png")!
        }
        
        return imageD
    }
    
    static func detailContents(name: String) -> [String] {
        //["SCAL-L","41","9,000","단발,연사","5.56mm","총구/손잡이/조준경/탄창","500","AR(돌격소총)","870m/s","100 - 600 m","0.096초","일반:30,대용량:40","일반:2.20초,퀵드로우:1.54초","Uncommon"]
        var contents: [String] = []
        if name == "P18C" {
            contents =  ["P18C","19","7,000","단발,연사","9mm","총구/조준경/탄창","100","HG(권총)","375m/s","25 - 25m","0.060초","일반:17,대용량:25","일반:2.00초,퀵드로우:1.40초","Uncommon"]
        }else if name == "P1911" {
            contents = ["P1911","35","6,000","단발",".45ACP","총구/조준경/탄창","100","HG(권총)","250m/s","25 - 25m","0.110초","일반:7,대용량:12","일반:2.10초,퀵드로우:1.47초","Common"]
        }else if name == "P92" {
            contents = ["P92","29","7,000","단발","9mm","총구/조준경/탄창","100","HG(권총)","380m/s","25 - 25m","0.090초","일반:15,대용량:20","일반:2.00초,퀵드로우:1.40초","Common"]
        }
        else if name == "R1895" {
            contents = ["R1895","46","8,000","단발","7.62mm","총구","80","HG(권총)","330m/s","25 - 25m","0.400초","일반:7","일반:6.25초","Common"]
        }
        else if name == "micro UZI" {
            contents = ["Micro UZI","23","5,000","단발,연사","9mm","총구/탄창/개머리판","500","SMG(기관단총)","350m/s","100 - 200m","0.048초","일반:25,대용량:35","일반:3.10초,퀵드로우:2.17초","Common"]
       }
        else if name == "Tommy Gun" {
            contents = ["Tommy Gun","38","7,000","단발,연사",".45ACP","총구/손잡이/탄창","500","SMG(기관단총)","280m/s","100 - 200m","0.086초","일반:30,대용량:50","일반:3.45초,퀵드로우:2.41초","Uncommon"]
        }
        else if name == "UMP9" {
            contents = ["UMP9","35","7,000","단발,점사,연사","9mm","총구/손잡이/조준경/탄창","500","SMG(기관단총)","400m/s","100 - 300m","0.092초","일반:30,대용량:50","일반:3.10초,퀵드로우:2.17초","Common  "]
        }
        else if name == "Vector" {
            contents = ["Vector","31","7,000","단발,점사,연사",".45ACP","총구/손잡이/조준경/탄창/개머리판","500","SMG(기관단총)","300m/s","50 - 50m","0.055초","일반:13,대용량:25","일반:2.20초,퀵드로우:1.54초","Uncommon"]
        }else if name == "AKM" {
            contents = ["AKM","48","10,000","단발,연사","7.62mm","총구/조준경/탄창","500","AR(돌격소총)","715m/s","100 - 400m","0.100초","일반:30,대용량40","일반:2.90초,퀵드로우:2.03초","Uncommon"]
        }
        else if name == "Groza" {
            contents = ["Groza","48","10,000","단발,연사","7.62mm","총구/조준경/탄창","500","AR(돌격소총)","715m/s","100 - 400m","0.080초","일반:30,대용량:40","일반:3.00초,퀵드로우:2.10초","보급전용"]
        }
        else if name == "M16A4" {
            contents = ["M16A4","41","단발,점사","5.56mm","총구/조준경/탄창","500","AR(돌격소총)","900m/s","100 - 500m","0.075초","일반:30,대용량:40","일반:2.20초,퀵드로우:1.54초","Uncommon"]
        }
        else if name == "M416" {
            contents = ["M416","41","3,500","단발,연사","5.56mm","총구/조준경/탄창/손잡이/개머리판","500","AR(돌격소총)","880m/s","100 - 600m","0.086초","일반:30,대용량40","일반:2.10초,퀵드로우:1.47초","Uncommon"]
        }
        else if name == "SCAR-L" {
            contents = ["SCAR-L","41","9,000","단발,연사","5.56mm","총구/손잡이/조준경/탄창","500","AR(돌격소총)","870m/s","100 - 600m","0.096초","일반:30,대용량:40","일반:2.20초,퀵드로우:1.54초","Uncommon"]
        }
        else if name == "AWM" {
            contents = ["AWM","132","40,000","단발",".300 매그넘","총구/조준경/탄창/개머리판","500","SR(저격소총)","910m/s","100 - 1000m","1.850초","일반:5,대용량:7","일반:2.90초,퀵드로우:2.03초","보급전용"]
        }
        else if name == "Kar98k" {
            contents = ["Kar98k","72","16,000","단발","7.62mm","총구/조준경/개머리판","500","SR(저격소총)","760m/s","100 - 600m","1.900초","일반:5","일반:1.69초","Uncommon"]
        }else if name == "M24" {
            contents = ["M24","84","20,000","단발","7.62mm","총구/조준경/탄창/개머리판","500","SR(저격소총)","790m/s","100 - 800m","1.800초","일반:5,대용량:7","일반:4.2초,퀵드로우:2.94초","보급전용"]
        }
        else if name == "Mk14" {
            contents = ["Mk14","60","20,000","단발,연사","7.62mm","총구/조준경/탄창/개머리판","500","SR(저격소총)","853m/s","100 - 800m","0.090초","일반:10,대용량:20","일반:3.68초,퀵드로우:2.57초","보급전용"]
        }
        else if name == "SKS" {
            contents = ["SKS","55","20,000","단발","7.62mm","총구/손잡이/조준경/탄창/개머리판","500","SR(저격소총)","800m/s","100 - 800m","0.090초","일반:10,대용량:20","일반:4.55초,퀵드로우:3.18초","Uncommon"]
        }
        else if name == "VSS" {
            contents = ["VSS","38","20,000","단발,연사","9mm","탄창,개머리판","500","SR(저격소총)","330m/s","100 - 100m","0.086초","일반:10,대용량:20","일반:4.55초,퀵드로우:3.18초","Uncommon"]
        }
        else if name == "Mini14" {
            contents = ["Mini14","44","10,000","단발","5.56mm","총구/조준경/탄창","500","SR(저격소총)","990m/s","100 - 600m","0.100초","일반:20,대용량:30","일반:3.60초,퀵드로우:2.52초","Uncommon"]
        }
        else if name == "M249" {
            contents = ["M249","44","10,000","연사","5.56mm","조준경","500","LMG(경기관총)","915m/s","100 - 500m","0.075초","일반:100","일반:8.20초","보급전용"]
        }
        else if name == "S12K" {
            contents = ["S12K","198","5,000","단발","12게이지","총구/조준경/탄창","500","SG(산탄총)","350m/s","25 - 25m","0.250초","일반:5,대용량:8","일반:3.00초,퀵드로우:2.10초","Common"]
        }else if name == "S1897" {
            contents = ["S1897","225","5,000","단발","12게이지","총구/개머리판","500","SG(산탄총)","360m/s","25 - 25m","0.750초","일반:5","일반:4.21초,탄띠:1.86초","Common"]
        }
        else if name == "S686" {
            contents = ["S686","225","5,000","단발","12게이지","총구/개머리판","500","SG(산탄총)","370m/s","25 - 25m","0.200초","일반:2","일반:3.00초,탄띠:2.10초","Common"]
        }
        else if name == "석궁" {
            contents = ["석궁","105","8,000","단발","석궁용 볼트","조준경/손잡이","500","Bow(활)","160m/s","25 - 25m","0.075초","일반:1","일반:3.54초,화살통:2.48초","Common"]
        }
        else if name == "빠루" {
            contents = ["빠루","60","-","-"," ","-","120","Melee(근접)","-","-","-","-","-","-"]
        }
        else if name == "마체테" {
            contents = ["마체테","60","-","-"," ","-","120","Melee(근접)","-","-","-","-","-","-"]
        }
        else if name == "프라이팬" {
            contents = ["프라이팬","80","-","-"," ","-","120","Melee(근접)","-","-","-","-","-","-"]
        }
        else if name == "낫" {
            contents = ["낫","60","-","-"," ","-","120","Melee(근접)","-","-","-","-","-","-"]
        }
        else if name == "수류탄" {
            contents = ["수류탄","-","-","-"," ","-","12","Throwables(투척)","-","-","-","-","-","-"]
        }
        else if name == "화염병" {
            contents = ["화염병","-","-","-"," ","-","18","Throwables(투척)","-","-","-","-","-","-"]
        }
        else if name == "연막탄" {
            contents = ["연막탄","-","-","-"," ","-","16","Throwables(투척)","-","-","-","-","-","-"]
        }
        else if name == "섬광탄" {
            contents = ["섬광탄","-","-","-"," ","-","14","Throwables(투척)","-","-","-","-","-","-"]
        }
        else if name == "산탄총 쵸크" {
            contents = [name,"-","부착물","5"]
        }
        else if name == "보정기(AR,S12K)" {
            contents = [name,"-","부착물","10"]
        }
        else if name == "보정기(SMG)" {
            contents = [name,"-","부착물","8"]
        }
        else if name == "보정기(SR)" {
            contents = [name,"-","부착물","12"]
        }
        else if name == "소염기(AR,S12K)" {
            contents = [name,"-","부착물","10"]
        }
        else if name == "소염기(SMG)" {
            contents = [name,"-","부착물","8"]
        }
        else if name == "소염기(SR)" {
            contents = [name,"-","부착물","12"]
        }
        else if name == "소음기(AR,S12K)" {
            contents = [name,"-","부착물","20"]
        }
        else if name == "소음기(권총)" {
            contents = [name,"-","부착물","10"]
        }
        else if name == "소음기(SMG)" {
            contents = [name,"-","부착물","15"]
        }
        else if name == "소음기(SR)" {
            contents = [name,"-","부착물","23"]
        }
        else if name == "앵글 수직 손잡이(AR,SMG,DMR)" {
            contents = [name,"-","부착물","10"]
        }
        else if name == "석궁용 화살통" {
            contents = [name,"-","부착물","14"]
        }
        else if name == "수직 손잡이(AR,SMG,DMR)" {
            contents = [name,"-","부착물","10"]
        }
        else if name == "15배율 스코프" {
            contents = [name,"-","부착물","20"]
        }
        else if name == "2배율 스코프" {
            contents = [name,"-","부착물","15"]
        }
        else if name == "4배율 스코프" {
            contents = [name,"-","부착물","15"]
        }
        else if name == "8배율 스코프" {
            contents = [name,"-","부착물","20"]
        }
        else if name == "홀로그램 조준기" {
            contents = [name,"-","부착물","10"]
        }
        else if name == "레드 도트 사이트" {
            contents = [name,"-","부착물","10"]
        }
        else if name == "대용량 탄창(AR,S12K)" {
            contents = [name,"-","부착물","15"]
        }
        else if name == "대용량 탄창(SMG)" {
            contents = [name,"-","부착물","10"]
        }
        else if name == "대용량 탄창(권총)" {
            contents = [name,"-","부착물","13"]
        }
        else if name == "대용량 탄창(SR)" {
            contents = [name,"-","부착물","17"]
        }
        else if name == "대용량 퀵 드로우 탄창(AR,S12K)" {
            contents = [name,"-","부착물","20"]
        }
        else if name == "대용량 퀵 드로우 탄창(SMG)" {
            contents = [name,"-","부착물","13"]
        }
        else if name == "대용량 퀵 드로우 탄창(권총)" {
            contents = [name,"-","부착물","17"]
        }
        else if name == "대용량 퀵 드로우 탄창(SR)" {
            contents = [name,"-","부착물","23"]
        }
        else if name == "퀵드로우 탄창(AR,S12K)" {
            contents = [name,"-","부착물","14"]
        }
        else if name == "퀵드로우 탄창(SMG)" {
            contents = [name,"-","부착물","9"]
        }
        else if name == "퀵드로우 탄창(권총)" {
            contents = [name,"-","부착물","12"]
        }
        else if name == "퀵드로우 탄창(SR)" {
            contents = [name,"-","부착물","16"]
        }
        else if name == "탄띠(Kar98k)" {
            contents = [name,"-","부착물","15"]
        }
        else if name == "탄띠(산탄총)" {
            contents = [name,"-","부착물","15"]
        }
        else if name == "칙패드(SR)" {
            contents = [name,"-","부착물","17"]
        }
        else if name == "개머리판(micro UZI)" {
            contents = [name,"-","부착물","10"]
        }
        else if name == "전술 개머리판(M416M,Vector)" {
            contents = [name,"-","부착물","12"]
        }
        else if name == ".300 매그넘" {
            contents = [name,"-","탄약","-"]
        }
        else if name == ".45 ACP" {
            contents = [name,"-","탄약","-"]
        }
        else if name == "12 게이지" {
            contents = [name,"-","탄약","-"]
        }
        else if name == "5.56mm" {
            contents = [name,"-","탄약","-"]
        }
        else if name == "7.62mm" {
            contents = [name,"-","탄약","-"]
        }
        else if name == "9mm" {
            contents = [name,"-","탄약","-"]
        }
        else if name == "석궁용 볼트" {
            contents = [name,"-","탄약","-"]
        }
        else if name == "배낭(Level 1)" {
            contents = [name,"-","방어구","170"]
        }
        else if name == "배낭(Level 1-1)" {
            contents = [name,"-","방어구","170"]
        }
        else if name == "배낭(Level 2)" {
            contents = [name,"-","방어구","220"]
        }
        else if name == "배낭(Level 2-1)" {
            contents = [name,"-","방어구","220"]
        }
        else if name == "배낭(Level 3)" {
            contents = [name,"-","방어구","270"]
        }
        else if name == "배낭(Level 3-1)" {
            contents = [name,"-","방어구","270"]
        }
        else if name == "오토바이 헬멧(회색)(Level 1)" {
            contents = [name,"-","방어구","80"]
        }
        else if name == "오토바이 헬멧(녹색)(Level 1)" {
            contents = [name,"-","방어구","80"]
        }
        else if name == "군용 헬멧(삼림지대 위장)(Level 2)" {
            contents = [name,"-","방어구","150"]
        }
        else if name == "군용 헬멧(사막용 위장)(Level 2)" {
            contents = [name,"-","방어구","150"]
        }
        else if name == "스페츠나츠 헬멧(Level 3)" {
            contents = [name,"-","방어구","230"]
        }
        else if name == "경찰 조끼(Level 1)" {
            contents = [name,"-","방어구","70"]
        }
        else if name == "경찰 조끼(Level 2)" {
            contents = [name,"-","방어구","70"]
        }
        else if name == "군용 조끼(Level 3)" {
            contents = [name,"-","방어구","70"]
        }
        else if name == "유틸리티 벨트" {
            contents = [name,"-","방어구","70"]
        }
        else if name == "아드레날린 주사기" {
            contents = [name,"-","소모품","20"]
        }
        else if name == "붕대" {
            contents = [name,"-","소모품","2"]
        }
        else if name == "에너지 드링크" {
            contents = [name,"-","소모품","4"]
        }
        else if name == "구급 상자" {
            contents = [name,"-","소모품","10"]
        }
        else if name == "연료통" {
            contents = [name,"-","소모품","20"]
        }
        else if name == "의료용 키트" {
            contents = [name,"-","소모품","20"]
        }
        else if name == "진통제" {
            contents = [name,"-","소모품","10"]
        }
        else if name == "버기" {
            contents = [name,"-","탈것","-"]
        }
        else if name == "다시아" {
            contents = [name,"-","탈것","-"]
        }
        else if name == "오토바이" {
            contents = [name,"-","탈것","-"]
        }
        else if name == "오토바이 & 사이드카" {
            contents = [name,"-","탈것","-"]
        }
        else if name == "UAZ(Open Top)" {
            contents = [name,"-","탈것","-"]
        }
        else if name == "UAZ(Closed Top)" {
            contents = [name,"-","탈것","-"]
        }
        else if name == "보트" {
            contents = [name,"-","탈것","-"]
        }
        return contents
    }
    
}
