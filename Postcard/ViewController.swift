//
//  ViewController.swift
//  Postcard
//
//  Created by Andre Wollenweber on 12.09.14.
//  Copyright (c) 2014 Andre Wollenweber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton)
    {
        // Code will evaulate when we press the button
        // Adding a Comment here to test Gid
        messageLabel.hidden = false
        nameLabel.hidden = false
        nameLabel.text = enterMessageTextField.text
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        mailButton.setTitle("Mail Send", forState: UIControlState.Normal)
    }

}

