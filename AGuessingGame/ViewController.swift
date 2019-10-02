//
//  ViewController.swift
//  AGuessingGame
//
//  Created by Branton Hung on 2019-09-30.
//  Copyright © 2019 Branton Hung. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //MARK: properties
    let targetNumber = Int.random(in: 1...100)

    //Mark: Initializers
    
    
    //MARK: Methods (Functions)  - behaviours
    
    
    // Runs as soon as the vie becomes visable to the  user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Make an object named 'synthesizer' , which is an instance of the class 'AVSpeechSynthesizer'
        let synthesizer = AVSpeechSynthesizer()

        //make a string the computer wants to say
        let message = "I'm thinking of a number between 1 and 100. Guess what it is"
        
        //make an object named 'utterance' which is an instance of the class 'VSDpeechSynthesizer
        let utterance = AVSpeechUtterance(string: message)
        
        //Speak the message
        synthesizer.speak(utterance)
        
        
    }


}

