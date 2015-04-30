//
//  ViewWebViewController.swift
//  Demo1
//
//  Created by zxf on 15/4/29.
//  Copyright (c) 2015年 v5cn. All rights reserved.
//

import UIKit

class ViewWebViewController: UIViewController,UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBAction func stringClick(sender: AnyObject) {
        let htmlUrl = NSBundle.mainBundle().pathForResource("table", ofType: "html")
        
        let bundleUrl = NSURL.fileURLWithPath(NSBundle.mainBundle().bundlePath)
        
        var err:NSError?
        
        let htmlString = String(contentsOfFile: htmlUrl!, encoding: NSUTF8StringEncoding, error: &err)
        
        if err == nil {
            self.webView.loadHTMLString(htmlString!, baseURL: bundleUrl!)
        }
    }
    
    @IBAction func erjinzhiClick(sender: AnyObject) {
        let htmlUrl = NSBundle.mainBundle().pathForResource("table", ofType: "html")
        
        let bundleUrl = NSURL.fileURLWithPath(NSBundle.mainBundle().bundlePath)
        
        let htmlData = NSData(contentsOfFile: htmlUrl!)
        
        webView.loadData(htmlData, MIMEType: "text/html", textEncodingName: "UTF-8", baseURL: bundleUrl)
    }
    
    @IBAction func yibuClick(sender: AnyObject) {
        let htmlUrl = NSURL(string: "http://www.ghostchina.com/")
        let request = NSURLRequest(URL: htmlUrl!)
        webView.loadRequest(request)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //UIWebViewDelegate委托方法调用
    func webViewDidFinishLoad(webView: UIWebView) {
        println("成功加载。")
    }
    func webView(webView: UIWebView, didFailLoadWithError error: NSError) {
        println("加载失败！")
    }
}
