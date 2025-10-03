//
//  Question.swift
//  quizgameu
//
//  Created by Selin Su Özdemir on 27.07.2025.
//

import Foundation

struct Question {
    var question: String
    var answer: [String]
    var correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        question = q
        answer = a
        self.correctAnswer = correctAnswer
    }
    
    
    
}


