//
//  DashboardView.swift
//  JournalApp
//
//  Created by Goran Saric on 03.08.25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            DashboardView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Dashboard")
                }
            EntriesView()
                .tabItem{
                    Image(systemName: "square.and.pencil")
                    Text("Entries")
                }
            MoodTrackerView()
                .tabItem{
                    Image(systemName: "face.smiling.inverse")
                    Text("Mood Tracker")
                }
            GoalsView()
                .tabItem{
                    Image(systemName: "target")
                    Text("Goals")
                }
            SettingsView()
                .tabItem{
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
        .navigationBarBackButtonHidden(true)
        .tint(.black)
    }
}

#Preview {
    MainView()
}
