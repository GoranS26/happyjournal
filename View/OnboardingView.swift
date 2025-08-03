//
//  OnboardingView.swift
//  JournalApp
//
//  Created by Goran Saric on 03.08.25.
//

import SwiftUI

struct OnboardingView: View {
    
   @State private var currentPage = 0
    
    var body: some View {
        ZStack{
            BackgroundColor()
            
            TabView(selection: $currentPage){
                FirstOnBoardingScreen()
                    .tag(0)
                SecondOnBoardingView()
                    .tag(1)
                ThirdOnBoardingScreen()
                    .tag(2)
                FourthOnBoardingScreen()
                    .tag(3)
                
            }
            
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    OnboardingView()
}
