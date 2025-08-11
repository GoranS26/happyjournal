//
//  FirstOnBoardingScreen.swift
//  JournalApp
//
//  Created by Goran Saric on 03.08.25.
//

import SwiftUI

struct FirstOnBoardingScreen: View {

    var body: some View {
        
            VStack{
                Text("Welcome to Journaly")
                    .foregroundStyle(.primary)
                    .font(.bangers(size: 46))
                    .padding()
                Text("Capture your moods, thoughts, feelings and productivity all in one place.")
                    .foregroundStyle(.primary)
                    .font(.bangers(size: 30))
                    .padding(.horizontal)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Image("firstonboardingscreen")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350)
                    .background(Circle().fill(Color.gray.opacity(0.2)))
                Spacer()
            }
    }
}

#Preview {
    FirstOnBoardingScreen()
//        .preferredColorScheme(.dark)
}
