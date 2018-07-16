//
//  searchPUBG_main.swift
//  myPUBG3
//
//  Created by 엄태형 on 2017. 12. 6..
//  Copyright © 2017년 엄태형. All rights reserved.
//

import UIKit

class searchPUBG_main: UIViewController, UIScrollViewDelegate {//뷰 663
    @IBOutlet weak var krjp: buttonDesign!
    @IBOutlet weak var asia: buttonDesign!
    @IBOutlet weak var pre6: buttonDesign!
    @IBOutlet weak var newSeason: buttonDesign!
    @IBOutlet weak var dropDown: UIPickerView!
    
    //솔로
    @IBOutlet weak var totalCount: UILabel!
    @IBOutlet weak var soloRating: UILabel!
    @IBOutlet weak var soloGradeper: UILabel!
   // @IBOutlet weak var soloGrade: UILabel!
    @IBOutlet weak var soloWinper: UILabel!
    @IBOutlet weak var soloKd: UILabel!
    @IBOutlet weak var soloHead: UILabel!
    @IBOutlet weak var soloTopper: UILabel!
    @IBOutlet weak var soloDmgcount: UILabel!
    @IBOutlet weak var soloMostkill: UILabel!
    @IBOutlet weak var soloSurvive: UILabel!
    @IBOutlet weak var soloSniper: UILabel!
    @IBOutlet weak var soloRankpic: UIImageView!
    //듀오
    @IBOutlet weak var totalCount2: UILabel!
    @IBOutlet weak var duoRating: UILabel!
    //@IBOutlet weak var duoGrade: UILabel!
    @IBOutlet weak var duoGradeper: UILabel!
    @IBOutlet weak var duoWinper: UILabel!
    @IBOutlet weak var duoKd: UILabel!
    @IBOutlet weak var duoHead: UILabel!
    @IBOutlet weak var duoTopper: UILabel!
    @IBOutlet weak var duoDmgcount: UILabel!
    @IBOutlet weak var duoMostkill: UILabel!
    @IBOutlet weak var duoSurvive: UILabel!
    @IBOutlet weak var duoSniper: UILabel!
    @IBOutlet weak var duoRankpic: UIImageView!
    //스쿼드
    @IBOutlet weak var totalCount3: UILabel!
    @IBOutlet weak var squadRating: UILabel!
    //@IBOutlet weak var squadGrade: UILabel!
    @IBOutlet weak var squadGradeper: UILabel!
    @IBOutlet weak var squadWinper: UILabel!
    @IBOutlet weak var squadKd: UILabel!
    @IBOutlet weak var squadHead: UILabel!
    @IBOutlet weak var squadTopper: UILabel!
    @IBOutlet weak var squadDmgcount: UILabel!
    @IBOutlet weak var squadMostkill: UILabel!
    @IBOutlet weak var squadSurvive: UILabel!
    @IBOutlet weak var squadSniper: UILabel!
    @IBOutlet weak var squadRankpic: UIImageView!
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var spinnerView: UIView!
    
    var aa = String()
    var bb = String()
    var cc = String()
    var searchId = String()
    var season = String()
    var region = String()
    var dropList = ["a","b","c"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //UIApplication.shared.beginIgnoringInteractionEvents()//터치방지(스쿼드 정보가져오면 비활성화 품)
        self.navigationItem.title = searchId
        spinnerView.layer.cornerRadius = 15
        krjp.backgroundColor = UIColor(red: 255/255, green: 132/255, blue: 102/255, alpha: 1)
        krjp.tintColor = UIColor.white
        //newSeason.backgroundColor = UIColor(red: 255/255, green: 132/255, blue: 102/255, alpha: 1)
        //newSeason.tintColor = UIColor.white
        useAPI.searchSoloLog(name: searchId, region: region, season: season) { (aa) -> (Void) in
            //self.spinner.startAnimating()
            //솔로부분
           // let soloranking = Int(aa[0] as! String)!
            //self.soloGrade.text = "\(aa[0] as! String)등"
            self.totalCount.text = "\(aa[0] as! String)승\(aa[1] as! String)탑\(aa[2] as! String)패"
            self.soloRating.text = " \(aa[3] as! String)"
            self.soloGradeper.text = "상위\(aa[4] as! String)%"
            self.soloWinper.text = "\(aa[5] as! String)%"
            self.soloKd.text = "\(aa[6] as! String)"
            self.soloHead.text = "\(aa[7] as! String)%"
            self.soloTopper.text = "\(aa[8] as! String)%"
            var soloDmg = aa[9] as! String
            var soloDmgg = soloDmg.components(separatedBy: ".")
            self.soloDmgcount.text = soloDmgg[0]
            self.soloMostkill.text = "\(aa[10] as! String)"
            var soloTime = aa[11] as! String
            let soloTimee = soloTime.components(separatedBy: ".")
            var soloTimeee = Int(soloTimee[0])!
            self.soloSurvive.text = searchMethod.timeShape(time: soloTimeee)
            self.soloSniper.text = "\(aa[12] as! String)m"
            //if soloranking <= 500 {
              //  self.soloRankpic.image = UIImage(named: "top500.png")
           // }else {
                self.soloRankpic.image = searchMethod.rankImage(rank: Double(aa[13] as! String)!)
            //}
        }
        useAPI.searchDuoLog(name: searchId, region: region, season: season) { (bb) -> (Void) in
            //듀오부분
            //var duoranking = Int(aa[15] as! String)!
            //self.duoGrade.text = "\(aa[15] as! String)등"
            self.totalCount2.text = "\(bb[0] as! String)승\(bb[1] as! String)탑\(bb[2] as! String)패"
            self.duoRating.text = " \((bb[3] as! String))"
            self.duoGradeper.text = "상위\(bb[4] as! String)%"
            self.duoWinper.text = "\(bb[5] as! String)%"
            self.duoKd.text = "\(bb[6] as! String)"
            self.duoHead.text = "\(bb[7] as! String)%"
            self.duoTopper.text = "\(bb[8] as! String)%"
            var duoDmg = bb[9] as! String
            var duoDmgg = duoDmg.components(separatedBy: ".")
            self.duoDmgcount.text = duoDmgg[0]
            self.duoMostkill.text = "\(bb[10] as! String)"
            var duoTime = bb[11] as! String
            let duoTimee = duoTime.components(separatedBy: ".")
            var duoTimeee = Int(duoTimee[0])!
            self.duoSurvive.text = searchMethod.timeShape(time: duoTimeee)
            self.duoSniper.text = "\(bb[12] as! String)m"
            //if duoranking <= 500 {
            //    self.duoRankpic.image = UIImage(named: "top500.png")
            //}else {
            self.duoRankpic.image = searchMethod.rankImage(rank: Double(bb[13] as! String)!)
            //}
        }
        useAPI.searchSquadLog(name: searchId, region: region, season: season) { (cc) -> (Void) in
            //스쿼드
            //var squadranking = Int(aa[30] as! String)!
            //self.squadGrade.text = "\(aa[30] as! String)등"
            if cc[0] as! String == "aa" {
                let alertmsg = UIAlertController(title: "알림", message: "현재 검색서버가 불안정합니다.\n 잠시후 다시 검색해주세요.", preferredStyle: UIAlertControllerStyle.alert)
                let alertaction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:  { (action) in
                    self.navigationController?.popViewController(animated: true)
                })
                alertmsg.addAction(alertaction)
                self.present(alertmsg, animated: true, completion: {})
            }else {
                self.totalCount3.text = "\(cc[0] as! String)승\(cc[1] as! String)탑\(cc[2] as! String)패"
                self.squadRating.text = " \(cc[3] as! String)"
                self.squadGradeper.text = "상위\(cc[4] as! String)%"
                self.squadWinper.text = "\(cc[5] as! String)%"
                self.squadKd.text = "\(cc[6] as! String)"
                self.squadHead.text = "\(cc[7] as! String)%"
                self.squadTopper.text = "\(cc[8] as! String)%"
                var squadDmg = cc[9] as! String
                var squadDmgg = squadDmg.components(separatedBy: ".")
                self.squadDmgcount.text = squadDmgg[0]
                self.squadMostkill.text = "\(cc[10] as! String)"
                var squadTime = cc[11] as! String
                let squadTimee = squadTime.components(separatedBy: ".")
                var squadTimeee = Int(squadTimee[0])!
                self.squadSurvive.text = searchMethod.timeShape(time: squadTimeee)
                self.squadSniper.text = "\(cc[12] as! String)m"
                // if squadranking <= 500 {
                //   self.squadRankpic.image = UIImage(named: "top500.png")
                //}else {
                self.squadRankpic.image = searchMethod.rankImage(rank: Double(cc[13] as! String)!)
                self.spinnerView.isHidden = true
                self.spinner.isHidden = true
                //UIApplication.shared.endIgnoringInteractionEvents()
            }
            
        }
   
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    @IBAction func krjpClick(_ sender: Any) {
        //UIApplication.shared.beginIgnoringInteractionEvents()//터치방지(스쿼드 정보가져오면 비활성화 품)
        krjp.backgroundColor = UIColor(red: 255/255, green: 132/255, blue: 102/255, alpha: 1)
        krjp.tintColor = UIColor.white
        asia.backgroundColor = UIColor.white
        asia.tintColor = UIColor(red: 1/255, green: 162/255, blue: 232/255, alpha: 1)
        region = "krjp"
        self.spinnerView.isHidden = false
        self.spinner.isHidden = false
        useAPI.searchSoloLog(name: searchId, region: region, season: season) { (aa) -> (Void) in
            //self.spinner.startAnimating()
            //솔로부분
            // let soloranking = Int(aa[0] as! String)!
            //self.soloGrade.text = "\(aa[0] as! String)등"
            self.totalCount.text = "\(aa[0] as! String)승\(aa[1] as! String)탑\(aa[2] as! String)패"
            self.soloRating.text = " \(aa[3] as! String)"
            self.soloGradeper.text = "상위\(aa[4] as! String)%"
            self.soloWinper.text = "\(aa[5] as! String)%"
            self.soloKd.text = "\(aa[6] as! String)"
            self.soloHead.text = "\(aa[7] as! String)%"
            self.soloTopper.text = "\(aa[8] as! String)%"
            var soloDmg = aa[9] as! String
            var soloDmgg = soloDmg.components(separatedBy: ".")
            self.soloDmgcount.text = soloDmgg[0]
            self.soloMostkill.text = "\(aa[10] as! String)"
            var soloTime = aa[11] as! String
            let soloTimee = soloTime.components(separatedBy: ".")
            var soloTimeee = Int(soloTimee[0])!
            self.soloSurvive.text = searchMethod.timeShape(time: soloTimeee)
            self.soloSniper.text = "\(aa[12] as! String)m"
            //if soloranking <= 500 {
            //  self.soloRankpic.image = UIImage(named: "top500.png")
            // }else {
            self.soloRankpic.image = searchMethod.rankImage(rank: Double(aa[13] as! String)!)
            //}
        }
        useAPI.searchDuoLog(name: searchId, region: region, season: season) { (bb) -> (Void) in
            //듀오부분
            //var duoranking = Int(aa[15] as! String)!
            //self.duoGrade.text = "\(aa[15] as! String)등"
            self.totalCount2.text = "\(bb[0] as! String)승\(bb[1] as! String)탑\(bb[2] as! String)패"
            self.duoRating.text = " \(bb[3] as! String)"
            self.duoGradeper.text = "상위\(bb[4] as! String)%"
            self.duoWinper.text = "\(bb[5] as! String)%"
            self.duoKd.text = "\(bb[6] as! String)"
            self.duoHead.text = "\(bb[7] as! String)%"
            self.duoTopper.text = "\(bb[8] as! String)%"
            var duoDmg = bb[9] as! String
            var duoDmgg = duoDmg.components(separatedBy: ".")
            self.duoDmgcount.text = duoDmgg[0]
            self.duoMostkill.text = "\(bb[10] as! String)"
            var duoTime = bb[11] as! String
            let duoTimee = duoTime.components(separatedBy: ".")
            var duoTimeee = Int(duoTimee[0])!
            self.duoSurvive.text = searchMethod.timeShape(time: duoTimeee)
            self.duoSniper.text = "\(bb[12] as! String)m"
            //if duoranking <= 500 {
            //    self.duoRankpic.image = UIImage(named: "top500.png")
            //}else {
            self.duoRankpic.image = searchMethod.rankImage(rank: Double(bb[13] as! String)!)
            //}
        }
        useAPI.searchSquadLog(name: searchId, region: region, season: season) { (cc) -> (Void) in
            //스쿼드
            //var squadranking = Int(aa[30] as! String)!
            //self.squadGrade.text = "\(aa[30] as! String)등"
            if cc[0] as! String == "aa" {
                let alertmsg = UIAlertController(title: "알림", message: "현재 검색서버가 불안정합니다.\n 잠시후 다시 검색해주세요.", preferredStyle: UIAlertControllerStyle.alert)
                let alertaction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:  { (action) in
                    self.navigationController?.popViewController(animated: true)
                })
                alertmsg.addAction(alertaction)
                self.present(alertmsg, animated: true, completion: {})
            }else {
                self.totalCount3.text = "\(cc[0] as! String)승\(cc[1] as! String)탑\(cc[2] as! String)패"
                self.squadRating.text = " \(cc[3] as! String)"
                self.squadGradeper.text = "상위\(cc[4] as! String)%"
                self.squadWinper.text = "\(cc[5] as! String)%"
                self.squadKd.text = "\(cc[6] as! String)"
                self.squadHead.text = "\(cc[7] as! String)%"
                self.squadTopper.text = "\(cc[8] as! String)%"
                var squadDmg = cc[9] as! String
                var squadDmgg = squadDmg.components(separatedBy: ".")
                self.squadDmgcount.text = squadDmgg[0]
                self.squadMostkill.text = "\(cc[10] as! String)"
                var squadTime = cc[11] as! String
                let squadTimee = squadTime.components(separatedBy: ".")
                var squadTimeee = Int(squadTimee[0])!
                self.squadSurvive.text = searchMethod.timeShape(time: squadTimeee)
                self.squadSniper.text = "\(cc[12] as! String)m"
                // if squadranking <= 500 {
                //   self.squadRankpic.image = UIImage(named: "top500.png")
                //}else {
                self.squadRankpic.image = searchMethod.rankImage(rank: Double(cc[13] as! String)!)
                self.spinnerView.isHidden = true
                self.spinner.isHidden = true
                //UIApplication.shared.endIgnoringInteractionEvents()
            }
            
        }
    }
    @IBAction func asiaClick(_ sender: Any) {
        //UIApplication.shared.beginIgnoringInteractionEvents()//터치방지(스쿼드 정보가져오면 비활성화 품)
        asia.backgroundColor = UIColor(red: 255/255, green: 132/255, blue: 102/255, alpha: 1)
        asia.tintColor = UIColor.white
        krjp.backgroundColor = UIColor.white
        krjp.tintColor = UIColor(red: 1/255, green: 162/255, blue: 232/255, alpha: 1)
        region = "as"
        self.spinnerView.isHidden = false
        self.spinner.isHidden = false
        useAPI.searchSoloLog(name: searchId, region: region, season: season) { (aa) -> (Void) in
            //self.spinner.startAnimating()
            //솔로부분
            // let soloranking = Int(aa[0] as! String)!
            //self.soloGrade.text = "\(aa[0] as! String)등"
            self.totalCount.text = "\(aa[0] as! String)승\(aa[1] as! String)탑\(aa[2] as! String)패"
            self.soloRating.text = " \(aa[3] as! String)"
            self.soloGradeper.text = "상위\(aa[4] as! String)%"
            self.soloWinper.text = "\(aa[5] as! String)%"
            self.soloKd.text = "\(aa[6] as! String)"
            self.soloHead.text = "\(aa[7] as! String)%"
            self.soloTopper.text = "\(aa[8] as! String)%"
            var soloDmg = aa[9] as! String
            var soloDmgg = soloDmg.components(separatedBy: ".")
            self.soloDmgcount.text = soloDmgg[0]
            self.soloMostkill.text = "\(aa[10] as! String)"
            var soloTime = aa[11] as! String
            let soloTimee = soloTime.components(separatedBy: ".")
            var soloTimeee = Int(soloTimee[0])!
            self.soloSurvive.text = searchMethod.timeShape(time: soloTimeee)
            self.soloSniper.text = "\(aa[12] as! String)m"
            //if soloranking <= 500 {
            //  self.soloRankpic.image = UIImage(named: "top500.png")
            // }else {
            self.soloRankpic.image = searchMethod.rankImage(rank: Double(aa[13] as! String)!)
            //}
        }
        useAPI.searchDuoLog(name: searchId, region: region, season: season) { (bb) -> (Void) in
            //듀오부분
            //var duoranking = Int(aa[15] as! String)!
            //self.duoGrade.text = "\(aa[15] as! String)등"
            self.totalCount2.text = "\(bb[0] as! String)승\(bb[1] as! String)탑\(bb[2] as! String)패"
            self.duoRating.text = " \(bb[3] as! String)"
            self.duoGradeper.text = "상위\(bb[4] as! String)%"
            self.duoWinper.text = "\(bb[5] as! String)%"
            self.duoKd.text = "\(bb[6] as! String)"
            self.duoHead.text = "\(bb[7] as! String)%"
            self.duoTopper.text = "\(bb[8] as! String)%"
            var duoDmg = bb[9] as! String
            var duoDmgg = duoDmg.components(separatedBy: ".")
            self.duoDmgcount.text = duoDmgg[0]
            self.duoMostkill.text = "\(bb[10] as! String)"
            var duoTime = bb[11] as! String
            let duoTimee = duoTime.components(separatedBy: ".")
            var duoTimeee = Int(duoTimee[0])!
            self.duoSurvive.text = searchMethod.timeShape(time: duoTimeee)
            self.duoSniper.text = "\(bb[12] as! String)m"
            //if duoranking <= 500 {
            //    self.duoRankpic.image = UIImage(named: "top500.png")
            //}else {
            self.duoRankpic.image = searchMethod.rankImage(rank: Double(bb[13] as! String)!)
            //}
        }
        useAPI.searchSquadLog(name: searchId, region: region, season: season) { (cc) -> (Void) in
            //스쿼드
            //var squadranking = Int(aa[30] as! String)!
            //self.squadGrade.text = "\(aa[30] as! String)등"
            if cc[0] as! String == "aa" {
                let alertmsg = UIAlertController(title: "알림", message: "현재 검색서버가 불안정합니다.\n 잠시후 다시 검색해주세요.", preferredStyle: UIAlertControllerStyle.alert)
                let alertaction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:  { (action) in
                    //self.navigationController?.popViewController(animated: true)
                    self.dismiss(animated: true, completion: nil)
                })
                alertmsg.addAction(alertaction)
                self.present(alertmsg, animated: true, completion: {})
            }else {
                self.totalCount3.text = "\(cc[0] as! String)승\(cc[1] as! String)탑\(cc[2] as! String)패"
                self.squadRating.text = " \(cc[3] as! String)"
                self.squadGradeper.text = "상위\(cc[4] as! String)%"
                self.squadWinper.text = "\(cc[5] as! String)%"
                self.squadKd.text = "\(cc[6] as! String)"
                self.squadHead.text = "\(cc[7] as! String)%"
                self.squadTopper.text = "\(cc[8] as! String)%"
                var squadDmg = cc[9] as! String
                var squadDmgg = squadDmg.components(separatedBy: ".")
                self.squadDmgcount.text = squadDmgg[0]
                self.squadMostkill.text = "\(cc[10] as! String)"
                var squadTime = cc[11] as! String
                let squadTimee = squadTime.components(separatedBy: ".")
                var squadTimeee = Int(squadTimee[0])!
                self.squadSurvive.text = searchMethod.timeShape(time: squadTimeee)
                self.squadSniper.text = "\(cc[12] as! String)m"
                // if squadranking <= 500 {
                //   self.squadRankpic.image = UIImage(named: "top500.png")
                //}else {
                self.squadRankpic.image = searchMethod.rankImage(rank: Double(cc[13] as! String)!)
                self.spinnerView.isHidden = true
                self.spinner.isHidden = true
                //UIApplication.shared.endIgnoringInteractionEvents()
            }
            
        }
    }
    @IBAction func newVersion(_ sender: Any) {
    }
    
}
