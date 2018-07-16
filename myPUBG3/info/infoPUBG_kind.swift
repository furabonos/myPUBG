//
//  infoPUBG_kind.swift
//  myPUBG3
//
//  Created by 엄태형 on 2017. 12. 6..
//  Copyright © 2017년 엄태형. All rights reserved.
//

import UIKit

class infoPUBG_kind: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    var kindTitle = String()
    var kindRow = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self as UITableViewDelegate
        tableView.dataSource = self as UITableViewDataSource
        self.navigationItem.title = kindTitle
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int{
        //return self.sections.count
        return infoPUBG_method.selectSection(row: kindRow).count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoPUBG_method.selectSectionItem(row: kindRow)[section].count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
        let row: Int = indexPath.row
        cell.textLabel?.text = infoPUBG_method.selectSectionItem(row: kindRow)[indexPath.section][indexPath.row]
        cell.imageView?.image = infoPUBG_method.sectionImage(row: kindRow)[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return infoPUBG_method.selectSection(row: kindRow)[section]
    }
    
    /* func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { //셀을 클릭했을때
     //self.performSegue(withIdentifier: "infoPUBG_detail", sender: tableView)
     print("ssibal")
     }*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! infoPUBG_detail
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for: cell)
        vc.name = infoPUBG_method.selectSectionItem(row: kindRow)[(indexPath?.section)!][(indexPath?.row)!]//내가누른 cell의 text
        // vc.kindRow = (indexPath?.row)!//내가누른 cell의 row값
        vc.kind = kindTitle
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
