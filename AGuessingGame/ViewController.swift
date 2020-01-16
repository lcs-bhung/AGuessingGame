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
    @IBOutlet weak var submittedGuess: UITextField!
    
    
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
        
        //Report to the target number to the console for testing purpouses
        print("For testing puropuses, the random number is\(targetNumber)")
        
        
    }
    
    //This function will be used to check the guess
    @IBAction func CheckGuess(_ sender: Any) {
        
        //obtan the gues value from the text field
        let guessText = submittedGuess.text!
        let guessNumber = Int(guessText)!
        
        //For testing purpouses what was the guess?
        print("For testing purpouses, the random number is \(guessNumber)")
        
        //Give apropriate feedback to the user
        if guessNumber > targetNumber {
            print ("Guess lower next time")
            // Make an object named 'synthesizer' , which is an instance of the class 'AVSpeechSynthesizer'
            speak(this: "Guess Lower Next time")
            
        } else if guessNumber < targetNumber {
           speak(this: "Guess higher next time")
            
            
        } else{
            speak(this: "You are correct!")
            
            
        }
    }
    func speak(this message:String) {
        let synthesizer = AVSpeechSynthesizer()
        
        //make a string the computer wants to say
       
        //make an object named 'utterance' which is an instance of the class 'VSDpeechSynthesizer
        let utterance = AVSpeechUtterance(string: message)
        
        //Speak the message
        synthesizer.speak(utterance)
    }
}

