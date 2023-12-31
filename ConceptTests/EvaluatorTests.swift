//
//  EvaluatorTests.swift
//  ConceptTests
//
//  Created by Tyler Torres on 12/30/23.
//

import XCTest
@testable import Concept

final class EvaluatorTests: XCTestCase {
    
    // MARK: Setup
    private var sut: EvaluatorSpy!
    
    override func setUp() {
        sut = EvaluatorSpy()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    // MARK: Tests
    func test_evaluate_withAllSelectedConcepts_returnsTotalCount() {
        let concepts = buildConcepts(selectedCount: 3, unselectedCount: 0)
        XCTAssertEqual(sut.evaluate(concepts: concepts), 3)
    }

    func test_evaluate_withNoSelectedConcepts_returnsZero() {
        let concepts = buildConcepts(selectedCount: 0, unselectedCount: 3)
        XCTAssertEqual(sut.evaluate(concepts: concepts), 0)
    }

    func test_evaluate_withMixedSelectedAndUnselectedConcepts_returnsCorrectCount() {
        let concepts = buildConcepts(selectedCount: 2, unselectedCount: 2)
        XCTAssertEqual(sut.evaluate(concepts: concepts), 2)
    }

    func test_evaluate_withEmptyConceptsList_returnsZero() {
        XCTAssertEqual(sut.evaluate(concepts: []), 0)
    }

    func test_evaluate_withIndividualConceptEvaluation_checksEachConcept() {
        let concepts = buildConcepts(selectedCount: 1, unselectedCount: 1)
        
        XCTAssertEqual(sut.evaluate(concepts: [concepts[0]]), 1)
        XCTAssertEqual(sut.evaluate(concepts: [concepts[1]]), 0)
    }
    
    private func buildConcepts(selectedCount: Int, unselectedCount: Int) -> [Concept] {
        let selectedConcepts = (0..<selectedCount).map { _ in Concept(question: "Q", answer: "A", isSelected: true) }
        let unselectedConcepts = (0..<unselectedCount).map { _ in Concept(question: "Q", answer: "A", isSelected: false) }
        return selectedConcepts + unselectedConcepts
    }
}
