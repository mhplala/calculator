//
//  ViewController.swift
//  swiftTest
//
//  Created by 王金鑫 on 2017/7/27.
//  Copyright © 2017年 王金鑫. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    
    var thisIsTheFirstInput = false
    @IBAction func Sender(_ sender: UIButton) {
        let buttonNumber = sender.currentTitle!
        if thisIsTheFirstInput {
            let preDigit = display!.text
            display!.text = preDigit! + buttonNumber
        }else{
             display!.text = buttonNumber
        }
        thisIsTheFirstInput = true
    }
    

    @IBAction func thisIsNotANumber(_ sender: UIButton) {
        thisIsTheFirstInput =  false
        if let thisIsMath = sender.currentTitle{
            if thisIsMath == "π"{
            display!.text =  String(Double.pi)}
            else if thisIsMath == "√"{
                let numer  = display.text
                let numberdig = Double(numer!)
                display!.text = String(sqrt(numberdig!))
            }
            
        }
    }
 
}

