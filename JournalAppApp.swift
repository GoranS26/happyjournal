//
//  JournalAppApp.swift
//  JournalApp
//
//  Created by Goran Saric on 03.08.25.
//

import SwiftUI

@main
struct JournalAppApp: App {
    
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding: Bool = false
    
    var body: some Scene {
        WindowGroup {
            ZStack{
                if hasSeenOnboarding{
                    DashboardView()
                        .transition(.move(edge: .trailing))
                } else {
                    WelcomeScreen()
                        .transition(.move(edge: .leading))
                }
            }
            .preferredColorScheme(.light)
            .animation(.easeInOut, value: hasSeenOnboarding)
        }
    }
}
