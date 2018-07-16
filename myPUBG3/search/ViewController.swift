//
//  ViewController.swift
//  myPUBG3
//
//  Created by 엄태형 on 2017. 12. 6..
//  Copyright © 2017년 엄태형. All rights reserved.
//

import UIKit
import Realm
import RealmSwift

class Todo: Object {
    @objc dynamic var ids : String!
}

class ViewController: UIViewController  {
    var checkId = String()
    var realm : Realm!
    var idList: Results<Todo> { // [2]
        get {
            return realm.objects(Todo.self)
        }
    }
    @IBOutlet weak var searched0: UIButton!
    @IBOutlet weak var searched1: UIButton!
    @IBOutlet weak var searched2: UIButton!
    @IBOutlet weak var searched3: UIButton!
    @IBOutlet weak var searched4: UIButton!
    @IBOutlet weak var searchedClear: UIButton!
    @IBOutlet weak var myid: UITextField!
    var searchedArr : Array<UIButton> = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view, typically from a nib.
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "camo6.jpg")?.draw(in: self.view.bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        //DB
        realm = try! Realm()
        //myid.text = idList[0].ids
        //var idcnt = realm.objects(Todo.self)
        //let idcnt = realm.objects(Todo.self).filter("조건")
        print("count=\(idList.count)")
        searchedArr = [searched0,searched1,searched2,searched3,searched4]
        for i in 0..<idList.count{
            //searchedArr[i].text = idcnt[i].ids
            searchedArr[i].setTitle(idList[i].ids, for: .normal)
        }
        searchMethod.hiddenBtn(count: idList.count, btn0: searched0, btn1: searched1, btn2: searched2, btn3: searched3, btn4: searched4, clearBtn: searchedClear )
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "searchPUBG_main"{
        let vc = segue.destination as! searchPUBG_main
        checkId = myid.text!
        if checkId.StringCount() > 0 {
            vc.searchId = myid.text!
            vc.season = "2018-01"
            vc.region = "krjp"
        }else{
            self.present(Method.altMSG(), animated: true, completion: nil)
        }
            if idList.count == 5 && checkId.StringCount() > 0{
                if idList[0].ids != checkId && idList[1].ids != checkId && idList[2].ids != checkId && idList[3].ids != checkId && idList[4].ids != checkId {
                    delete()
                    add(addids: checkId)
                }
            }else if idList.count == 4 && checkId.StringCount() > 0 {
                if idList[0].ids != checkId && idList[1].ids != checkId && idList[2].ids != checkId && idList[3].ids != checkId {
                    add(addids: checkId)
                }
            }else if idList.count == 3 && checkId.StringCount() > 0 {
                if idList[0].ids != checkId && idList[1].ids != checkId && idList[2].ids != checkId {
                    add(addids: checkId)
                }
            }else if idList.count == 2 && checkId.StringCount() > 0 {
                if idList[0].ids != checkId && idList[1].ids != checkId {
                    add(addids: checkId)
                }
            }else if idList.count == 1 && checkId.StringCount() > 0 {
                if idList[0].ids != checkId {
                    add(addids: checkId)
                }
            }else if idList.count == 0 && checkId.StringCount() > 0 {
                add(addids: checkId)
            }
        }else if segue.identifier == "btn0"{
            let vc = segue.destination as! searchPUBG_main
                vc.searchId = idList[0].ids
                vc.season = "2018-01"
                vc.region = "krjp"
        }else if segue.identifier == "btn1"{
            let vc = segue.destination as! searchPUBG_main
            vc.searchId = idList[1].ids
            vc.season = "2018-01"
            vc.region = "krjp"
        }else if segue.identifier == "btn2"{
            let vc = segue.destination as! searchPUBG_main
            vc.searchId = idList[2].ids
            vc.season = "2018-01"
            vc.region = "krjp"
        }else if segue.identifier == "btn3"{
            let vc = segue.destination as! searchPUBG_main
            vc.searchId = idList[3].ids
            vc.season = "2018-01"
            vc.region = "krjp"
        }else if segue.identifier == "btn4"{
            let vc = segue.destination as! searchPUBG_main
            vc.searchId = idList[4].ids
            vc.season = "2018-01"
            vc.region = "krjp"
        }
    }
    
    func add(addids: String) {
        let todo = Todo()
        todo.ids = addids
        try! realm.write{
            realm.add(todo)
        }
    }
    func delete() {
        //let todo = Todo()
        //realm.objects(Todo.self).first = delids
        try! realm.write{
            realm.delete(realm.objects(Todo.self).first!)
        }
    }
    func allClear() {
        try! realm.write{
            realm.delete(realm.objects(Todo.self))
        }
    }    
    @IBAction func searchedClearClick(_ sender: Any) {
        allClear()
        searched0.isHidden = true
        searched1.isHidden = true
        searched2.isHidden = true
        searched3.isHidden = true
        searched4.isHidden = true
        searchedClear.isHidden = true
    }
    //view이동후
    override func viewDidDisappear(_ animated: Bool) {
        searchedArr = [searched0,searched1,searched2,searched3,searched4]
    searchMethod.unHiddenBtn(count: idList.count, btn0: searched0, btn1: searched1, btn2: searched2, btn3: searched3, btn4: searched4, clearBtn: searchedClear)
        for i in 0..<idList.count{
            searchedArr[i].setTitle(idList[i].ids, for: .normal)
        }
    }
}

