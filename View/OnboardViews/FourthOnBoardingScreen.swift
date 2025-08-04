//
//  FourthOnBoardingScreen.swift
//  JournalApp
//
//  Created by Goran Saric on 03.08.25.
//

import SwiftUI

struct FourthOnBoardingScreen: View {
    
    @AppStorage("hasSeenOnboarding") var hasSeenOnboarding: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Get Started")
                    .foregroundStyle(.black)
                    .font(.system(size: 35, weight: .bold, design: .rounded))
                    .padding()
                Text("Begin you journey towards a happier, clearer mind - one entry at the time.")
                    .foregroundStyle(.black)
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                    .padding(.horizontal)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Image("fourthonboardingscreen")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350)
                Spacer()
                NavigationLink(destination: DashboardView().onAppear{hasSeenOnboarding = true}){
                    Text("GET STARTED")
                        .foregroundStyle(.black)
                        .font(.system(size: 18, weight: .medium, design: .rounded))
                        .frame(maxWidth: 200, maxHeight: 50)
                        .background(Color.gray.opacity(0.4))
                        .clipShape(Capsule())
                }

                Spacer()
            }
        }
          
    }
}

#Preview {
    FourthOnBoardingScreen()
}
