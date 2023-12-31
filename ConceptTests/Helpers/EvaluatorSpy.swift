//
//  EvaluatorSpy.swift
//  ConceptTests
//
//  Created by Tyler Torres on 12/30/23.
//

import Foundation
@testable import Concept

class EvaluatorSpy: Evaluator {
    
    func evaluate(concepts: [Concept]) -> Int {
        return concepts
            .filter { $0.isSelected }
            .count
    }
}
