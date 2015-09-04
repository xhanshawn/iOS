//
//  ViewController.swift
//  HelloWorld
//
//  Created by HanXu on 9/3/15.
//  Copyright (c) 2015 xhanshawn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HWLabel: UILabel!

    
    @IBAction func HellowPressed(sender: UIButton) {
        
        //let means constant
        
        // when state is normal get the title
//        let title = sender.titleForState(.Normal)!
        //var variable
        let hello = "hello buddy"
        HWLabel.text = "say \(hello)"
    }
}

