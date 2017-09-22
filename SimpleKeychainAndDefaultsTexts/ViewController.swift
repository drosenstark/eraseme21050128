//
//  ViewController.swift
//  SimpleKeychainAndDefaultsTexts
//
//  Created by Dan on 9/22/17.
//  Copyright © 2017 ShopKeep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        log(text: "one")
        log(text: "one")
        log(text: "one")
        log(text: "one")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func log(text textIn: String) {
        var text = textIn
        if !logView.text.isEmpty {
            text = "\n" + text
        }
        logView.text = logView.text + text
        logView.scrollRangeToVisible(NSRange.init(location: 100000, length: 0))
    
    }

}

