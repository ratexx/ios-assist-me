//
//  ViewController.swift
//  assistMe
//
//  Created by ratexx on 11/1/18.
//  Copyright © 2018 ratexx. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        let webView = WKWebView()
        let htmlPath = Bundle.main.path(forResource: "index", ofType: "html")
        let folderPath = Bundle.main.bundlePath
        let baseUrl = URL(fileURLWithPath: folderPath, isDirectory: true)
        do {
            let htmlString = try NSString(contentsOfFile: htmlPath!, encoding: String.Encoding.utf8.rawValue)
            webView.loadHTMLString(htmlString as String, baseURL: baseUrl)
        } catch {
            // catch error
        }
        webView.navigationDelegate = self
        view = webView
    }
}


