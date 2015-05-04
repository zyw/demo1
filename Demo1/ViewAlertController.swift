//
//  ViewAlertController.swift
//  Demo1
//
//  Created by zyw on 15/5/4.
//  Copyright (c) 2015年 v5cn. All rights reserved.
//

import UIKit

class ViewAlertController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func alertDemo(sender: AnyObject) {
        let alert = UIAlertView(title: "提示", message: "确定要删除吗？", delegate: nil, cancelButtonTitle: "关闭", otherButtonTitles: "确定")
        alert.show()
    }
    
    @IBAction func alertControllerDemo(sender: AnyObject) {
        let alert = UIAlertController(title: "提示", message: "确定要删除吗？", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "确定", style: UIAlertActionStyle.Cancel, handler:{(alert:UIAlertAction!) -> Void in
                println("点击了确定按钮。")
            }))
        alert.addAction(UIAlertAction(title: "取消", style: UIAlertActionStyle.Default, handler: {(alert:UIAlertAction!) -> Void in
            println("点击了取消按钮。")
        }))
        
        self.presentViewController(alert, animated: true, completion: {() ->Void in
            println("显示")
        })
    }
    
    
    @IBAction func sheetDemo(sender: AnyObject) {
        let sheet = UIActionSheet(title: "提示", delegate: nil, cancelButtonTitle: "取消", destructiveButtonTitle: "删除", otherButtonTitles: "分享", "链接")
        sheet.showInView(self.view)
    }
    
    @IBAction func sheetAlertController(sender: AnyObject) {
        let sheetAction = UIAlertController()
        sheetAction.addAction(UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler:{(alert:UIAlertAction!) -> Void in
            println("点击了确定按钮。")
        }))
        
        sheetAction.addAction(UIAlertAction(title: "删除账号", style: UIAlertActionStyle.Destructive, handler: {(alert:UIAlertAction!) -> Void in
            println("点击了取消按钮。")
        }))
        
        sheetAction.addAction(UIAlertAction(title: "新浪", style: UIAlertActionStyle.Default, handler: {(alert:UIAlertAction!) -> Void in
            println("点击了取消按钮。")
        }))
        
        self.presentViewController(sheetAction, animated: true, completion: {() ->Void in
            println("显示")
        })
    }
}
