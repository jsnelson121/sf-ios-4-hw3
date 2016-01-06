//
//  ViewController.swift
//  Homework3
//
//  Created by James Nelson on 1/4/16.
//  Copyright © 2016 James Nelson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var HelloLabel: UILabel!
    
    @IBOutlet var NameLabel: UITextField!
    
    @IBOutlet var AgeLabel: UITextField!
    
    @IBOutlet var AdditionalInfo: UILabel!
    
    @IBAction func Activate(sender: AnyObject) {
        
        //HelloLabel.text = "Hello World"
        
        //HelloLabel populated
        if NameLabel.text == "" && AgeLabel.text == "" {
            
            HelloLabel.text = "Sorry, you forgot both your name and age"
            
        } else if NameLabel.text == "" {
            
            HelloLabel.text = "Sorry, you forgot your name"
            
        } else if AgeLabel.text == "" {
            
            HelloLabel.text = "Sorry, you forgot your age"
            
        } else {
        
            HelloLabel.text = "Hello \(NameLabel!.text!), you are \(AgeLabel!.text!) years old!"
            
        }
        
        //Additional Info populated
    /*
        if Int(AgeLabel.text!) >= 21 {
            
            AdditionalInfo.text = "You can drink"
            
        } else if Int(AgeLabel.text!) >= 18 {
            
            AdditionalInfo.text = "You can vote"
            
        } else if Int(AgeLabel.text!) >= 16 {
            
            AdditionalInfo.text = "You can drive'"
            
        }
*/

        
        // set the label to “you can drive” if the user is above 16 but below 18, “You can drive and vote” if the user is above 18 but below 21, and if user is above 21, show “you can drive, vote and drink (but not at the same time!)”
        
        if Int(AgeLabel.text!) >= 21 {
            
            AdditionalInfo.text = "you can drive, vote and drink (but not at the same time!)"
            
        } else if Int(AgeLabel.text!) >= 16 && Int(AgeLabel.text!) < 18 {
            
            AdditionalInfo.text = "You can drive"
            
        } else if Int(AgeLabel.text!) < 21 && Int(AgeLabel.text!) >= 18 {
            
            AdditionalInfo.text = "You can drive and vote"
            
        } else {
            
            AdditionalInfo.text = "You are too young to do anything"
            
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

