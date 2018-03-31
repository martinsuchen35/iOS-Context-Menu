//
//  ThirdViewController.swift
//  iOS-Context-Menu
//
//  Created by Chen Su on 3/31/18.
//  Copyright © 2018 Chen Su. All rights reserved.
//

import UIKit
import WebKit

class ThirdViewController: UIViewController {
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView(frame: .zero)
        self.view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "example1", ofType: "html")
        let url = URL(fileURLWithPath: path!)
        let request = URLRequest(url: url)
        webView.load(request)
    }
}


