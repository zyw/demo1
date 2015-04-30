//
//  ViewPressController.swift
//  Demo1
//
//  Created by zxf on 15/4/30.
//  Copyright (c) 2015年 v5cn. All rights reserved.
//

import UIKit

class ViewPressController: ViewController {
    
    @IBOutlet weak var myIndicator: UIActivityIndicatorView!
    
    @IBAction func controlIndicator(sender: AnyObject) {
        if myIndicator.isAnimating() {
            myIndicator.stopAnimating()
        } else {
            myIndicator.startAnimating()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
