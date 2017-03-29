//
//  ViewController.swift
//  Calculate
//
//  Created by 上海海洋大学 on 17/3/29.
//  Copyright © 2017年 上海海洋大学. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var display: UILabel?
    var userIsInTheMiddleOfTyping : Bool = false

    @IBAction func touchDitgit(_ sender: UIButton) {
        
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping{
            let textCurrentlyInDisplay = display!.text!
            display!.text = textCurrentlyInDisplay + digit
            
            }
        else {
            display!.text = digit
            userIsInTheMiddleOfTyping = true
        }
       
    }
    
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle{
            switch mathematicalSymbol {
                case "pi":
                display!.text = "3.1415926"
            default :
                break
            }
        }
    }
    
    
}

