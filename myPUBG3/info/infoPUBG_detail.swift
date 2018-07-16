//
//  infoPUBG_detail.swift
//  myPUBG3
//
//  Created by 엄태형 on 2017. 12. 6..
//  Copyright © 2017년 엄태형. All rights reserved.
//

import UIKit

class infoPUBG_detail: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var detailView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    var kind = String()
    
    var name = String()
    //var leftList: Array<String> = ["이름","데미지","저지력","모드","탄약","부착물","용량","분류","탄속","유효 사거리","연사 간격","장탄수","재장전","희귀도"]
    
    var rightContents: Array<String> = ["SCAL-L","41","9,000","단발,연사","5.56mm","총구/손잡이/조준경/탄창","500","AR(돌격소총)","870m/s","100 - 600 m","0.096초","일반:30,대용량:40","일반:2.20초,퀵드로우:1.54초","Uncommon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = name
        detailView.image = infoPUBG_method.detailImage(name: name)
        // Do any additional setup after loading the view.
        
        tableView.delegate = self as UITableViewDelegate
        tableView.dataSource = self as UITableViewDataSource
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoPUBG_method.detailSection(kind: kind).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        cell.lists.text = infoPUBG_method.detailSection(kind: kind)[indexPath.row]
        cell.contents.text = infoPUBG_method.detailContents(name: name)[indexPath.row]
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
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
