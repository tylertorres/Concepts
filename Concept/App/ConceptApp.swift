//
//  ConceptApp.swift
//  Concept
//
//  Created by Tyler Torres on 12/30/23.
//

import SwiftUI


@main
struct ConceptApp: App {
    
    @StateObject private var navigationStore = NavigationStore()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView(navigationStore: navigationStore)
        }
    }
}
