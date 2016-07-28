//
//  ViewController.swift
//  selection
//
//  Created by EricYang on 2016/7/27.
//  Copyright © 2016年 EricYang. All rights reserved.
//

import UIKit

var LeftWay = "向左走"
var RightWay = "向右走"

class ViewController: UIViewController {

    @IBOutlet weak var leftWay: UIButton!
    @IBOutlet weak var rightWay: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let NotificationNameLeft = Notification.Name("LeftWay")
//        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.getMessageLeft(message:)), name: NotificationNameLeft, object: nil)
// 
//        
//        let NotificationNameRight = Notification.Name("RightWay")
//        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.getMessageRight(message:)), name: NotificationNameRight, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        leftWay.setTitle(LeftWay, for: [])
        rightWay.setTitle(RightWay, for: [])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getMessageLeft(message:Notification){
        let noti = message.userInfo!["way"] as! String
        leftWay.setTitle(noti, for: [])
    }
    
    func getMessageRight(message:Notification){
        let noti = message.userInfo!["way"] as! String
        rightWay.setTitle(noti, for: [])
    }



}

