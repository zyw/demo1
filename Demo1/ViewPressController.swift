//
//  ViewPressController.swift
//  Demo1
//
//  Created by zxf on 15/4/30.
//  Copyright (c) 2015年 v5cn. All rights reserved.
//

import UIKit

class ViewPressController: UIViewController {
    
    @IBOutlet weak var myIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var myProgress: UIProgressView!
    
    var myTimer:NSTimer?
    
    @IBAction func controlIndicator(sender: AnyObject) {
        if myIndicator.isAnimating() {
            myIndicator.stopAnimating()
        } else {
            myIndicator.startAnimating()
        }
    }
    
    @IBAction func startjdt(sender: AnyObject) {
        myProgress.progress = 0
        
        myTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "header", userInfo: nil, repeats: true)
    }
    
    func header(){
        myProgress.progress += 0.1
        if myProgress.progress == 1.0 {
            myTimer?.invalidate()
            myTimer = nil
            
            let alert = UIAlertView(title: "提示", message: "完成加载", delegate: nil, cancelButtonTitle: "关闭")
            alert.show()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
