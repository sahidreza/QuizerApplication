//
//  ViewController.swift
//  Quizer Application
//
//  Created by Sahid Reza on 11/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var totalRightAnswer: UILabel!
    
    
    
   var quizBrain = QuizBrain()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.titleLabel?.text
        let userGotit =  quizBrain.checkAnswer(userAnswer: userAnswer!)
        
        if userGotit {
            
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red

        }
        
        quizBrain.nextQuestion()
        
      
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
      
       
    }
    
 @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        totalRightAnswer.text = "Score:\(quizBrain.gettingRightAnswer())"
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
        let progressValue = quizBrain.getProgresspercentage()
        progressBar.progress = progressValue
    }
    
}

