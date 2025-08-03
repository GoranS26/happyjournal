//
//  WelcomeScreen.swift
//  JournalApp
//
//  Created by Goran Saric on 03.08.25.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        NavigationStack{
            ZStack{
                BackgroundColor()
              
                VStack{
                    Spacer()
                    Image(systemName: "list.bullet.clipboard.fill")
                        .foregroundStyle(LinearGradient(colors: [.white, .white.opacity(1)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .font(.system(size: 100, weight: .bold))
                    Text("Happy Journal")
                        .foregroundStyle(.white)
                        .font(.system(size: 50))
                        .fontDesign(.rounded)
                        .fontWeight(.heavy)
                    Spacer()
                    NavigationLink(destination: DashboardView()){
                        Text("Get Started").textCase(.uppercase)
                            .frame(width: 200, height: 50)
                            .background(Color.white)
                            .font(.system(size: 20, weight: .bold))
                            .clipShape(Capsule())
                    }
                    .padding(.bottom)
                    
                }
            }
        }
         
    }
}

#Preview {
    WelcomeScreen()
}
