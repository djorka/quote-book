//
//  QuoteViewController.swift
//  Founding Fathers Quote Book
//
//  Created by Andrew Schirmer on 9/12/18.
//  Copyright © 2018 Andrew Schirmer. All rights reserved.
//

import UIKit
import WebKit

class QuoteViewController : UIViewController {
   
   @IBOutlet var webView: WKWebView!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      webView.loadHTMLString("""
                              <!DOCTYPE html>
                              <html>
                              <head>
                              <title>Quote of the Day</title>
                              <meta name="viewport" content="initial-scale=1.0">
                              <style>
                                 body {
                                    padding: 1em;
                                    font-size: 24pt;
                                 }
                                 .quote {
                                    font-style: italic;
                                 }
                                 .speaker {
                                    text-align: right;
                                    padding-top: 1em;
                                 }
                                 .speaker::before {
                                    content: "- ";
                                 }
                              </style>
                              </head>
                              <body>
                              <div class="quote"> Do you want to know who you are? Dont ask. Act! Action will delineate and define you.</div>
                              <div class="speaker">Thomas Jefferson</div>
                              </body>
                              </html>
                              """, baseURL: nil)
   }
}
