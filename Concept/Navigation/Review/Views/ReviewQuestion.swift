//
//  ReviewQuestion.swift
//  Concept
//
//  Created by Tyler Torres on 1/1/24.
//

import SwiftUI

struct ReviewQuestion: View {
    @EnvironmentObject var navigationStore: ReviewNavigationStore

    var body: some View {
        Text("Review Question")
            .onTapGesture {
                navigationStore.navigate(to: .result)
            }
    }
}

#Preview {
    ReviewQuestion()
        .environmentObject(ReviewNavigationStore())
}
