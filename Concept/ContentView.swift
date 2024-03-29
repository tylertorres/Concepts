//
//  ContentView.swift
//  Concept
//
//  Created by Tyler Torres on 12/30/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
//            QuestionHeaderView(currentQuestion: $navigationStore.currentQuestion)
//                .frame(maxWidth: .infinity, alignment: .leading)
        
            Spacer()
            Button("Next Question") {
                withAnimation(.linear(duration: 0.35)) {
                }
            }
            .frame(maxWidth: .infinity, alignment: .bottom)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding()
    }
}

#Preview {
    ContentView()
}
