//
//  ViewController2.swift
//  selection
//
//  Created by EricYang on 2016/7/27.
//  Copyright © 2016年 EricYang. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITextFieldDelegate {
    
    var from = ""
    var labelText = ""

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textfield.delegate = self

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if from == "Left"{
            imageview.image = UIImage(named: "女背景")
            textfield.text = LeftWay
            
        }else if from == "Right"{
            imageview.image = UIImage(named: "男背影")
            textfield.text = RightWay
        }
        textfield.becomeFirstResponder()
        label.text = labelText
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func done(_ sender: AnyObject) {
        
        self.view.endEditing(true)
        
        if from == "Left"{
            print("want to back Left")
            var message = ""
            if let m = textfield.text{
                message = m
            }
            LeftWay = message
            
        }
        else if from == "Right"{
             print("want to back Right")
            var message = ""
            if let m = textfield.text{
                message = m
            }
            RightWay = message
        
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
