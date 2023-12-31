//
//  SimpleEvaluator.swift
//  Concept
//
//  Created by Tyler Torres on 12/31/23.
//

import Foundation


class SimpleEvaluator: Evaluator {
    
    func evaluate(concepts: [Concept]) -> Int {
        return concepts.count
    }
    
}
