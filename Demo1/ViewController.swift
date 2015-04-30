//
//  ViewController.swift
//  Demo1
//
//  Created by zxf on 15/4/28.
//  Copyright (c) 2015年 v5cn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var demoText: UITextField!
    
    @IBAction func chengeText(sender: UIButton) {
        var content = demoText.text
        println(content)
    }
}