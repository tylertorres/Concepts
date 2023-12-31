//
//  EngineFlowTests.swift
//  ConceptTests
//
//  Created by Tyler Torres on 12/31/23.
//

import XCTest
@testable import Concept

final class EngineFlowTests: XCTestCase {
    func test_start_engineWithZeroQuestions() {
        let delegate = EngineDelegateSpy()
        let sut = EngineFlow(delegate: delegate, questions: [])
        
        sut.start()
        
        XCTAssertEqual(delegate.questionsAsked, 0)
    }

}

class EngineDelegateSpy: EngineDelegate {
    var questionsAsked: Int = 0
}
