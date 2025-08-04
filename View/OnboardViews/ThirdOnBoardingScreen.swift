//
//  ThirdOnBoardingScreen.swift
//  JournalApp
//
//  Created by Goran Saric on 03.08.25.
//

import SwiftUI

struct ThirdOnBoardingScreen: View {
    var body: some View {
 
            VStack{
                Text("Track your moods")
                    .foregroundStyle(.black)
                    .font(.system(size: 35, weight: .bold, design: .rounded))
                    .padding()
                Text("Reflect on your emotions and gain insights into your well being.")
                    .foregroundStyle(.black)
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                    .padding(.horizontal)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Image("thirdonboardingscreen")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350)
                    .background(Ellipse().fill(Color.gray.opacity(0.2)).frame(width: 150, height: 16).offset(x: 105, y: 175))
                    .background(Circle().fill(Color.gray.opacity(0.1)))
                Spacer()
            }
    }
}

#Preview {
    ThirdOnBoardingScreen()
}
