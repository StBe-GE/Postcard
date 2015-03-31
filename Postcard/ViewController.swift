//
//  ViewController.swift
//  Postcard
//
//  Created by STEFAN BEHRENDT on 30.03.15.
//  Copyright (c) 2015 DSP-Partners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextfield: UITextField!

    @IBOutlet weak var enterMessageTextfield: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    // Challenge 1: connect nameLabel
    @IBOutlet weak var nameLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: AnyObject) {
    
        //Code will evaluate
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextfield.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextfield.text = ""
        enterMessageTextfield.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        // Challenge 1: added functions for nameLabel
        nameLabel.hidden = false
        nameLabel.text = enterNameTextfield.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextfield.text = ""
        
    
    }

}

