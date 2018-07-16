//
//  mapPUBG_main.swift
//  myPUBG3
//
//  Created by 엄태형 on 2017. 12. 6..
//  Copyright © 2017년 엄태형. All rights reserved.
//

import UIKit

class mapPUBG_main: UIViewController {
    var tapGestureRecognizer: UITapGestureRecognizer!
    var firstPoint: CGPoint?
    var secondPoint: CGPoint?
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBOutlet weak var mapArea: UIImageView!
    
    override func viewDidLoad() {
        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        if launchedBefore
        {
            print("Not first launch.")
        }
        else
        {
            print("First launch")
            self.present(Method.mapPopup(), animated: true, completion: nil)
            UserDefaults.standard.set(true, forKey: "launchedBefore")
        }
        super.viewDidLoad()
        mySwitch.isOn = false
        mapArea.image = UIImage(named: "pubgmaps.jpeg")
        // Do any additional setup after loading the view.
        tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.showMoreActions(touch:)))
        tapGestureRecognizer.numberOfTapsRequired = 1
        view.addGestureRecognizer(tapGestureRecognizer)
        UIApplication.shared.isIdleTimerDisabled = true//화면안꺼지게하는기능.
    }
    
    
    @objc func showMoreActions(touch: UITapGestureRecognizer) {
        let touchPoint = touch.location(in: self.mapArea)
        guard let _ = firstPoint else {
            firstPoint = touchPoint
            return
        }
        guard let _  = secondPoint else {
            secondPoint = touchPoint
            addLine(fromPoint: firstPoint!, toPoint: secondPoint!)
            firstPoint = nil
            secondPoint = nil
            return
        }
    }
    
    func addLine(fromPoint start: CGPoint, toPoint end:CGPoint) {
        let line = CAShapeLayer()
        let linePath = UIBezierPath()
        linePath.move(to: start)
        linePath.addLine(to: end)
        line.path = linePath.cgPath
        line.strokeColor = UIColor.orange.cgColor
        line.lineWidth = 3
        line.lineJoin = kCALineJoinRound
        self.mapArea.layer.addSublayer(line)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ClearBtn(_ sender: Any) {
        self.mapArea.layer.sublayers = nil
    }
    
    
    @IBAction func switchClick(_ sender: Any) {
        if mySwitch.isOn {
            mapArea.image = UIImage(named: "mirima.jpeg")
        }else {
            mapArea.image = UIImage(named: "pubgmaps.jpeg")
        }
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
