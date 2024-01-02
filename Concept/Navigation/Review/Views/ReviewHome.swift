//
//  ReviewHome.swift
//  Concept
//
//  Created by Tyler Torres on 1/1/24.
//

import SwiftUI

struct ReviewHome: View {
    @EnvironmentObject var navigationStore: ReviewNavigationStore
    
    var body: some View {
        NavigationStack(path: $navigationStore.reviewPath) {
            VStack {
                Button("Navigate To Question") {
                    navigationStore.navigate(to: .singleQuestion)
                }
            }
            .navigationDestination(for: ReviewNavigation.self) { destination in
                navigationStore.createRequestedView(destination)
            }
            
        }
    }
}

#Preview {
    ReviewHome()
        .environmentObject(ReviewNavigationStore())
}
