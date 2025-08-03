//
//  WelcomeScreen.swift
//  JournalApp
//
//  Created by Goran Saric on 03.08.25.
//

import SwiftUI

struct WelcomeScreen: View {
    
    @State private var animate = false

    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundColor()
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    // Animated Icon
                    Image(systemName: "list.bullet.clipboard.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.white, .white.opacity(0.5)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .scaleEffect(animate ? 1.0 : 0.6)
                        .opacity(animate ? 1.0 : 0)
                        .animation(.easeOut(duration: 0.6).delay(0.2), value: animate)
                    
                    // Animated Title
                    Text("Journaly")
                        .foregroundStyle(.white)
                        .font(.system(size: 50))
                        .fontDesign(.rounded)
                        .fontWeight(.heavy)
                        .opacity(animate ? 1.0 : 0)
                        .offset(y: animate ? 0 : 20)
                        .animation(.easeOut(duration: 0.6).delay(0.4), value: animate)
                    
                    Spacer()
                    
                    // Animated Button
                    NavigationLink(destination: OnboardingView()) {
                        Text("Get Started")
                            .textCase(.uppercase)
                            .frame(width: 220, height: 55)
                            .background(.white)
                            .foregroundColor(.blue)
                            .font(.system(size: 20, weight: .bold))
                            .clipShape(Capsule())
                            .shadow(color: .white.opacity(0.3), radius: 10, x: 0, y: 5)
                    }
                    .opacity(animate ? 1.0 : 0)
                    .offset(y: animate ? 0 : 30)
                    .animation(.easeOut(duration: 0.6).delay(0.6), value: animate)
                    .padding(.bottom, 40)
                }
                .padding()
            }
            .onAppear {
                animate = true
            }
        }
        
    }
}

#Preview {
    WelcomeScreen()
}

