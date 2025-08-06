//
//  ToolbarButton.swift
//  JournalApp
//
//  Created by Goran Saric on 06.08.25.
//

import SwiftUI

struct ToolbarButton: View {
    var body: some View {
        NavigationStack{
            VStack{
            
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                            .foregroundStyle(.black)
                            .background(
                                Circle()
                                    .frame(width: 40, height: 40)
                                    .foregroundStyle(.white.opacity(0.9))
                                    .shadow(color: .black.opacity(0.5), radius: 5, x: 0, y: 0)
                            )
                            .padding(.horizontal)
                            .padding(.top, 90)
                            
                    }

                }
            }
        }
       
    }
}

#Preview {
    ToolbarButton()
}
