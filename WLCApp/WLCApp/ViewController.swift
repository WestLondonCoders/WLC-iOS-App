//
//  ViewController.swift
//  WLCApp
//
//  Created by Ade Adegoke on 05/08/2017.
//  Copyright © 2017 WLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let authorizationURL = URL(string:"http://westlondoncoders.com/")
        let request = URLRequest(url: authorizationURL!)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

