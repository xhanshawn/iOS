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

    @IBOutlet weak var NameTF: UITextField!
    
    @IBAction func HellowPressed(sender: UIButton) {
        
        //let means constant
        
        // when state is normal get the title
//        let title = sender.titleForState(.Normal)!
        //var variable
        var name = self.NameTF.text
        if(name == ""){
            name = "buddy"
        }
        var hello = ""
        if(self.gender == 0){
            hello = "hello Mr " + name
        }else{
            hello = "hello Miss " + name
        }
        
        HWLabel.text = "say \(hello)"
        
        self.NameTF.resignFirstResponder()
        
    }
    
    //built in method
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)

    }
    
    @IBOutlet weak var AgeField: UILabel!

    var gender = 0
    
    
    @IBAction func setAge(sender: UISlider) {
        
        var pos = sender.value
        var age = lroundf(pos)
        AgeField.text = "age: \(age)"
        
    }
    
    @IBAction func chooseGender(sender: UISegmentedControl) {
        gender = sender.selectedSegmentIndex
    }
}

