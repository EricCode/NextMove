//
//  ViewController1-Right.swift
//  selection
//
//  Created by EricYang on 2016/7/27.
//  Copyright © 2016年 EricYang. All rights reserved.
//

import UIKit

class ViewController1_Right: UIViewController {

    let id_String = "Right"
    @IBOutlet weak var NavigationItem: UINavigationItem!
    
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textfield.text = RightWay
        NavigationItem.title = RightWay
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func edit(_ sender: AnyObject) {
       
        self.performSegue(withIdentifier: "Rto2", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as! ViewController2
        controller.from = id_String
        controller.labelText = label.text!
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
