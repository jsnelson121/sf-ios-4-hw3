//
//  SecondViewController.swift
//  Homework3
//
//  Created by James Nelson on 1/4/16.
//  Copyright © 2016 James Nelson. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var SumLabel: UILabel!
    
    @IBOutlet var Integer1: UITextField!
    
    @IBOutlet var Integer2: UITextField!
    
    @IBAction func AdditionOfInteger1AndInteger2(sender: AnyObject) {
        
        // default to 0 in case user inputs no number
        if Integer1.text == "" {
            Integer1.text = "0"
        }
        
        // default to 0 in case user inputs no number
        if Integer2.text == "" {
            Integer2.text = "0"
        }
        
        SumLabel.text! = "\(Int(Integer1.text!)! + Int(Integer2.text!)!)"
        
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
