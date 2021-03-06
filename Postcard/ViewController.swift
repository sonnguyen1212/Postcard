//
//  ViewController.swift
//  Postcard
//
//  Created by Son Nguyen on 2015-03-10.
//  Copyright (c) 2015 Son Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var messageLabel01: UILabel!
    @IBOutlet weak var mailButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        // adding comment to test commit.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel01.hidden = false
        messageLabel.hidden = false
        messageLabel01.text = enterNameTextField.text
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        messageLabel01.textColor = UIColor.blueColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        enterNameTextField.hidden = true
        enterMessageTextField.hidden = true
        
    }
    

}

