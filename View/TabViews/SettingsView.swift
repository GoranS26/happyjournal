//
//  SettingsView.swift
//  JournalApp
//
//  Created by Goran Saric on 05.08.25.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack{
            VStack{
//                    Image(systemName: "plus")
//                        .overlay(
//                            Circle().frame(width: 50, height: 50)
//                                .foregroundColor(.white)
//                                .shadow(color: .black, radius: 5, x: 0, y: 0)
//                                .overlay(
//                                    Image(systemName: "plus")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .padding()
//                                )
//                        )
//                   Spacer()
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color.white)
                    .frame(width: 360, height: 180)
                    .shadow(color: .black, radius: 6, x: 0, y: 4)
                    .overlay(
                        VStack(){
                            Text("Account")
                                .font(.system(size: 25, weight: .semibold))
                                .padding()
                            
                            Spacer()
                            
                            HStack{
                                
                                Text("Journaly Pro")
                                Spacer()
                                Text("Active")
                                    .foregroundStyle(.green)
                                
                            }
                            .padding()
                            Spacer()
                            Button {
                                
                            } label: {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundStyle(.white)
                                    .frame(width: 220, height: 30)
                                    .shadow(color: .black, radius: 2, x: 0, y: 1)
                                    .overlay(
                                        Text("Manage Subscription")
                                            .foregroundStyle(.black)
                                    )
                                    .padding(.bottom)
                                
                            }
                        }
                        
                        )
                Spacer()
                    
            }
            
            .navigationTitle("Settings")
            
        }
        
    }
}

#Preview {
    SettingsView()
}
