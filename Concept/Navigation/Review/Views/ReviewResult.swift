//
//  ReviewResult.swift
//  Concept
//
//  Created by Tyler Torres on 1/1/24.
//

import SwiftUI

struct ReviewResult: View {
    @EnvironmentObject var navigationStore: ReviewNavigationStore

    var body: some View {
        Text("Review Result")
            .onTapGesture {
                navigationStore.navigateBackToRoot()
            }
    }
}
#Preview {
    ReviewResult()
        .environmentObject(ReviewNavigationStore())
}
