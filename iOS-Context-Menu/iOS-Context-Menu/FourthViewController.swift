//
//  FourthViewController.swift
//  iOS-Context-Menu
//
//  Created by Chen Su on 3/31/18.
//  Copyright © 2018 Chen Su. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    var webView: CustomWKWebView!
    
    override func loadView() {
        webView = CustomWKWebView(frame: .zero)
        self.view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "example2", ofType: "html")
        let url = URL(fileURLWithPath: path!)
        let request = URLRequest(url: url)
        webView.load(request)
    }

}


