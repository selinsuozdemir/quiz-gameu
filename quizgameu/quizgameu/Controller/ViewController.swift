//
//  ViewController.swift
//  quizgameu
//
//  Created by Selin Su Özdemir on 27.07.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionTitle: UILabel!
    @IBOutlet weak var firstAnswer: UIButton!
    @IBOutlet weak var secondAnswer: UIButton!
    @IBOutlet weak var thirdAnswer: UIButton!
    
    var quizBrain = QuestionBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        questionTitle.text = quizBrain.getQuestion()
        firstAnswer.setTitle(quizBrain.getQuestionTitleOne(), for: .normal)
        secondAnswer.setTitle(quizBrain.getQuestionTitleTwo(), for: .normal)
        thirdAnswer.setTitle(quizBrain.getQuestionTitleThree(), for: .normal)
    }
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let isCorrect = quizBrain.checkAnswer(userAnswer)
        
        if isCorrect {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        quizBrain.nextQuestion()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.updateUI()
            sender.backgroundColor = .clear
        }
        
        
        
    
        
        
    }
    
}
