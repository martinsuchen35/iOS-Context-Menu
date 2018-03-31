//
//  CustomWKWebView.swift
//  iOS-Context-Menu
//
//  Created by Chen Su on 3/31/18.
//  Copyright © 2018 Chen Su. All rights reserved.
//

import WebKit

class CustomWKWebView: WKWebView {
    
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        switch (action) {
        case #selector(cut(_:)), #selector(copy(_:)), #selector(paste(_:)):
            return super.canPerformAction(action, withSender: sender)
        default:
            return false
        }
    }
    
    override func cut(_ sender: Any?) {
        super.cut(sender)
        print("on cut")
    }
    
    override func copy(_ sender: Any?) {
        super.copy(sender)
        print("on copy")
    }
    
    override func paste(_ sender: Any?) {
        super.paste(sender)
        print("on paste")
    }

}
