//
//  Question.swift
//  Quizer Application
//
//  Created by Sahid Reza on 13/12/22.
//

import Foundation

struct Question {
    
    let text : String
    let answer:String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
    
    
}
