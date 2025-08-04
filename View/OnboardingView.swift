//
//  OnboardingView.swift
//  JournalApp
//
//  Created by Goran Saric on 03.08.25.
//

import SwiftUI

struct OnboardingView: View {
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.black
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.lightGray
    }

    @State private var selectedPage = 0
    @State private var currentPage = 0
    
    var body: some View {
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
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .animation(.spring, value: selectedPage)
            .tint(.black)
            .navigationBarBackButtonHidden(true)
            
    }
}

#Preview {
        OnboardingView()
}
