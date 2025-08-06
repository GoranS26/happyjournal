//
//  EntriesView.swift
//  JournalApp
//
//  Created by Goran Saric on 05.08.25.
//

import SwiftUI

struct EntriesView: View {
    var body: some View {
        NavigationStack{
            VStack{
                ToolbarButton()
            }
            .navigationTitle("Entries")
        }
    }
}

#Preview {
    EntriesView()
}
