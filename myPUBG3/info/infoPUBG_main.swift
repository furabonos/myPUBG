//
//  infoPUBG_main.swift
//  myPUBG3
//
//  Created by 엄태형 on 2017. 12. 6..
//  Copyright © 2017년 엄태형. All rights reserved.
//

import UIKit

class infoPUBG_main: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var value:Int = 0
    
    var infoList: Array<String> = ["무기(Weapon)","부착물(Attachments)","탄약(Ammunition)","방어구(Equipment)","소모품(Items)","탈 것(Vehicles)"]
    var imageInfoList = [UIImage(named: "weapon.png"),UIImage(named: "attachments.png"),UIImage(named: "ammunition.png"),UIImage(named: "equipment.png"),UIImage(named: "items.png"),UIImage(named: "vehicles.png")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self as UITableViewDelegate
        tableView.dataSource = self as UITableViewDataSource
 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 실제 셀에 데이터를 반환하는 메소드, (필수)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let row: Int = indexPath.row
        cell.textLabel?.text = infoList[indexPath.row]
        cell.imageView?.image = imageInfoList[indexPath.row]
        return cell
    }
    
    // 해당 테이블에 섹션이 몇 개가 있는지?, (필수)
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // 행의 개수(세로로 나열되는)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoList.count
    }
    
    /*func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { 셀을 클릭했을때
     value = indexPath.row
     print("value=\(value)")
     //print(ssibal)
     //print(infoList[indexPath.row])
     //performSegue(withIdentifier: "infoPUBG_kind", sender: self)
     
     /*  let kind = infoPUBG_kind()
     self.navigationController?.pushViewController(kind, animated: true)
     kind.value2 = indexPath.row*/
     
     }*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! infoPUBG_kind
        //vc.value2 = value
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for: cell)
        vc.kindTitle = infoList[(indexPath?.row)!]//내가누른 cell의 text
        vc.kindRow = (indexPath?.row)!//내가누른 cell의 row값
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
