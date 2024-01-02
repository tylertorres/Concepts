//
//  ReviewNavigationStore.swift
//  Concept
//
//  Created by Tyler Torres on 1/1/24.
//

import Foundation
import SwiftUI

class ReviewFactory {
    
    func setDestinationView(_ destination: ReviewNavigation) -> AnyView {
        
        switch destination {
        case .singleQuestion:
            return AnyView(ReviewQuestion())
        case .result:
            return AnyView(ReviewResult())
        }
    }
}


@MainActor
class ReviewNavigationStore: ObservableObject {
    
    @Published var reviewPath: NavigationPath
    
    private let factory: ReviewFactory
    
    init(reviewPath: NavigationPath = NavigationPath(), factory: ReviewFactory = ReviewFactory()) {
        self.reviewPath = NavigationPath()
        self.factory = ReviewFactory()
    }
    
    private var count: Int {
        reviewPath.count
    }
    
    func navigate(to destination: ReviewNavigation) {
        reviewPath.append(destination)
    }
    
    func navigateBack() {
        reviewPath.removeLast()
    }
    
    func navigateBackToRoot() {
        reviewPath.removeLast(count)
    }
    
    func createRequestedView(_ destination: ReviewNavigation) -> AnyView {
        return factory.setDestinationView(destination)
    }
    
}
