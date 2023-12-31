//
//  EngineFlow.swift
//  Concept
//
//  Created by Tyler Torres on 12/31/23.
//

import Foundation

protocol EngineDelegate {
    
}

class EngineFlow {
    
    let delegate: EngineDelegate
    let questions: [String]
    
    init(delegate: EngineDelegate, questions: [String]) {
        self.delegate = delegate
        self.questions = questions
    }
    
    func start() {
        
    }
    
}
