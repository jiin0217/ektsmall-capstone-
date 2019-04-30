//
//  ViewController.swift
//  hard
//
//  Created by apple on 2019. 4. 30..
//  Copyright © 2019년 apple. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate,WKNavigationDelegate {
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var settingB: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://ktsmall.co.kr")
        let request = URLRequest(url: url!)
        webView.load(request)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func openSetting(_ sender:Any){
        performSegue(withIdentifier:"showSetting", sender: nil)
    }
   
}


// 중복적으로 리로드 방지
public func webViewWebContentProcessDidTerminate(_ webView: WKWebView) {
    
    webView.reload()
}
