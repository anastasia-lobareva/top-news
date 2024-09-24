//
//  WebViewController.swift
//  TopNews
//
//  Created by Anastasia Lobareva on 30/07/2024.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate {
    
    var webView = WKWebView()
    var newsURL: String?
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let selectedURL = URL(string: newsURL!)
        let selectedUrlRequest = URLRequest(url: selectedURL!)
        webView.load(selectedUrlRequest)
    }
}
