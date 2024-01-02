//
//  ConceptApp.swift
//  Concept
//
//  Created by Tyler Torres on 12/30/23.
//

import SwiftUI


@main
struct ConceptApp: App {
    
    @StateObject private var navigationStore = ReviewNavigationStore()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                ReviewHome()
                    .tabItem {
                        Label("Review", systemImage: "square.and.pencil")
                    }
                    .environmentObject(navigationStore)
            }
            
        }
    }
}
