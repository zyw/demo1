//
//  View2Controller.swift
//  Demo1
//
//  Created by zxf on 15/4/29.
//  Copyright (c) 2015年 v5cn. All rights reserved.
//

import UIKit

class View2Controller : UIViewController{
    
    @IBOutlet weak var leftSwitch: UISwitch!
    
    @IBOutlet weak var rightSwitch: UISwitch!
    
    @IBOutlet weak var sliderValueLabel: UILabel!
    
    @IBAction func chengeSwitch(sender: AnyObject) {
        var switchObj = sender as! UISwitch
        var switchStatus = switchObj.on
        
        leftSwitch.setOn(switchStatus, animated: true)
        rightSwitch.setOn(switchStatus, animated: true)
    }
    
    @IBAction func segmentedChangeValue(sender: AnyObject) {
        if leftSwitch.hidden {
            leftSwitch.hidden = false
            rightSwitch.hidden = false
        } else {
            leftSwitch.hidden = true
            rightSwitch.hidden = true
        }
    }
    
    @IBAction func controlSwitch(sender: AnyObject) {
        let segObj = sender as! UISegmentedControl
        if segObj.selectedSegmentIndex == 0 {
            leftSwitch.setOn(true, animated: true)
            rightSwitch.setOn(true, animated: true)
        } else {
            leftSwitch.setOn(false, animated: true)
            rightSwitch.setOn(false, animated: true)
        }
    }
    
    @IBAction func sliderChangeValue(sender: AnyObject) {
        var sliderObj = sender as! UISlider
        
        let sliderValue:Int = Int(sliderObj.value * 100)
        
        sliderValueLabel.text = "\(sliderValue)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Switch"
        self.navigationController?.navigationBar.backgroundColor = UIColor.redColor()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
