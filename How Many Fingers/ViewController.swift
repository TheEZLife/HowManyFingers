//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Eli Zafrani on 4/12/16.
//  Copyright (c) 2016 Eli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var guess: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
        
        var randomNumber = arc4random_uniform(6)
        
        var guessInt = guess.text.toInt()
        
        if guessInt != nil {
            
            if Int(randomNumber) == guessInt {
                
                resultLabel.text = "You got it right!"
            
        } else {
                
        resultLabel.text = "Wrong! It was \(randomNumber)"
                
            }
            
        } else {
            resultLabel.text = "Please enter a number 0 - 5"
        }
        
        println(guess.text)
        
    
        
        
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

