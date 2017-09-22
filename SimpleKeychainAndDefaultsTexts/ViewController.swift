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
    let key = "Robert"
    override func viewDidLoad() {
        super.viewDidLoad()
        logView.text = ""
        
        let retrieved = KeychainWrapper.standard.string(forKey: key)
        logText("Retrieve successful? \(retrieved)")
        
        
        let saveSuccessful: Bool = KeychainWrapper.standard.set("What is the point of all of this?", forKey: key)
        logText("Save successful? \(saveSuccessful)")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func logText(_ textIn: String) {
        var text = textIn
        if !logView.text.isEmpty {
            text = "\n" + text
        }
        logView.text = logView.text + text
        logView.scrollRangeToVisible(NSRange.init(location: 100000, length: 0))
    
    }

}

