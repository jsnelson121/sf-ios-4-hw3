//
//  ThirdViewController.swift
//  Homework3
//
//  Created by James Nelson on 1/5/16.
//  Copyright © 2016 James Nelson. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var NumberInput: UITextField!
    
    @IBOutlet var AnswerToIsEven: UILabel!
    
    @IBAction func IsEvenButton(sender: AnyObject) {
        
        // in event user inputs nothing, default to zero
        if NumberInput.text! == "" {
            
            NumberInput.text! = "0"
            
        }
        
        
        // even number must be divisible by 2 w/ zero remainder
        // button is set to only allow numbers, bc w/ text there is a crash
        if Int(NumberInput.text!)! % 2 > 0 {
     
            AnswerToIsEven.text = "This Number is Odd"
            
        } else {
            
            AnswerToIsEven.text = "This Number is Even"
            
        }
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
