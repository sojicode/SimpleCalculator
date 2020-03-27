//
//  ViewController.swift
//  Syang_SimpleCalculator
//
//  Created by Sojeong Yang on 1/26/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    
    var num1 = 0
    var num2 = 0
    
    var isNumBefore = false
    var op: String! = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonPlusPressed(_ sender: UIButton) {
        
        isNumBefore = false
        
        if let numInput = Int(result.text!) {
            num1 = numInput
        } else {
            num1 = 0
        }
        
        op = sender.currentTitle
     
        print("Plus button pressed")
    }
    
    @IBAction func buttonEqualPressed(_ sender: UIButton) {
        
        if let numInput = Int(result.text!) {
            num2 = numInput
            
        } else {
            num2 = 0
            
        }
        
        result.text = "\(num1 + num2)"
        
        isNumBefore = false
        
        print("Equal button pressed")
    }
    
    
    
    @IBAction func buttonInputPressed(_ sender: UIButton) {
        
//        if let numInput = sender.currentTitle {
//            result.text = "\(numInput)"
//        }
        
        let strNum = sender.currentTitle!
        
        if isNumBefore {
            
            if let numInput = Int("\(result.text!)\(strNum)") {
                result.text = "\(numInput)"
            } else {
                result.text = "CAN\'T CALCULATE!"
            }
        
        } else {
            result.text = strNum
            isNumBefore = true
        }
        
        print("numInput button pressed")
        
    }
    
    
}

