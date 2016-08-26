//
//  ViewController.swift
//  ejercicio-url-scheme
//
//  Created by Edgar Aparicio Baeza on 25/08/16.
//  Copyright © 2016 Edgar Aparicio Baeza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewWillAppear(animated: Bool) {
        if let url = NSBundle.mainBundle().URLForResource("index", withExtension: "html", subdirectory: "web") {
            let fragUrl = NSURL(string: "#FRAG_URL", relativeToURL: url)!
            let request = NSURLRequest(URL: fragUrl)
            webView.delegate =  self
            webView.loadRequest(request)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

