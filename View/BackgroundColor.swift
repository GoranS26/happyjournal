//
//  BackgroundColor.swift
//  JournalApp
//
//  Created by Goran Saric on 03.08.25.
//

import SwiftUI

struct BackgroundColor: View {
    var body: some View {
        LinearGradient(colors: [.indigo, .blue], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundColor()
}
