//
//  SecondOnBoardingView.swift
//  JournalApp
//
//  Created by Goran Saric on 03.08.25.
//

import SwiftUI

struct SecondOnBoardingView: View {
    var body: some View {
    
            VStack{
                Text("Secure & Private")
                    .foregroundStyle(.black)
                    .font(.system(size: 35, weight: .bold, design: .rounded))
                    .padding()
                Text("Your journal entries are safe & accesssible only to you")
                    .foregroundStyle(.black)
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                    .padding(.horizontal)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Image("secondonboardingscreen")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350)
                Spacer()
            }
    }
}

#Preview {
    SecondOnBoardingView()
}
