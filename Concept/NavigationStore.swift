//
//  NavigationStore.swift
//  Concept
//
//  Created by Tyler Torres on 12/31/23.
//

import Foundation

class NavigationStore: ObservableObject {
    
    @Published var currentQuestion: Int = 0
    
    
    @MainActor
    func moveToNextQuestion() {
        if currentQuestion < NavigationStore.sampleData.count - 1 {
            currentQuestion += 1
        }
    }
    
    

}

extension NavigationStore {
    
    static let sampleData: [(question: String, answer: String)] = [
        ("What keyword is used to define a constant in Swift?", "The 'let' keyword is used to define a constant in Swift."),
        ("How do you safely unwrap an optional in Swift?", "Optionals can be safely unwrapped using optional binding with 'if let' or 'guard let'."),
        ("What is a closure in Swift?", "A closure in Swift is a self-contained block of functionality that can be passed around and used in your code."),
        ("How can you create a custom protocol in Swift?", "A custom protocol can be created using the 'protocol' keyword followed by the protocol's name and the protocol body."),
        ("What is the purpose of the 'weak' keyword in Swift?", "The 'weak' keyword is used to create a weak reference, which helps in preventing retain cycles in closures and delegate patterns.")
    ]
}
