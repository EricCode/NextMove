//
//  ViewController1-Left.swift
//  selection
//
//  Created by EricYang on 2016/7/27.
//  Copyright © 2016年 EricYang. All rights reserved.
//

import UIKit

class ViewController1_Left: UIViewController {
    
    let id_String = "Left"
    
    @IBOutlet weak var NavigationItem: UINavigationItem!
    
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var label: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textfield.text = LeftWay
        navigationItem.title = LeftWay
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func Edit(_ sender: AnyObject) {

        self.performSegue(withIdentifier: "Lto2", sender: nil)
        
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
