//
//  QuestionHeaderView.swift
//  Concept
//
//  Created by Tyler Torres on 12/31/23.
//

import SwiftUI

struct QuestionHeaderView: View {
    
    @Binding var currentQuestion: Int
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16) {
            Text("Question \(currentQuestion + 1) out of \(NavigationStore.sampleData.count)")
            Text("\(NavigationStore.sampleData[currentQuestion].0)")
                .font(.title3.bold())
        }
        .id(UUID())
        .transition(
            AnyTransition
                .opacity
                .combined(with: .move(edge: .leading))
        )
    }
}

#Preview {
    QuestionHeaderView(currentQuestion: .constant(0))
}
