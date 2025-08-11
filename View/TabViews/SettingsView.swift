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
            VStack(spacing: 25){
                Text("SETTINGS")
                    .font(.bangers(size: 45))
                    .offset(x: -110)
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color.white)
                    .frame(width: 360, height: 180)
                    .shadow(radius: 5)
                    .overlay(
                            VStack(alignment: .leading){
                                    Text("Subscription")
                                    .font(.bangers(size: 30))
                                        .padding()
                                Spacer()
                                
                                HStack{
                                    
                                    Text("Journaly Pro")
                                        .font(.smallCaps(size: 20))
                                    Spacer()
                                    Text("Active")
                                        .foregroundStyle(.green)
                                        .font(.smallCaps(size: 20))
                                }
                                .padding()
                                Spacer()
                              HStack{
                                Spacer()
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(Color.white)
                                        .frame(maxWidth: 200, maxHeight: 40 )
                                        .shadow(radius: 5)
                                        .overlay(
                                            Text("Manage Subscription")
                                                .font(.smallCaps(size: 15))
                                        )
                                        .padding(.bottom)
                                    Spacer()
                                }
                              
                            }
                            
                        
                        
                      
                        )
                    
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color.white)
                    .frame(width: 360, height: 180)
                    .shadow(radius: 5)
                    .overlay(
                        VStack(alignment: .leading){
                                Text("Account")
                                .font(.bangers(size: 30))
                                    .padding()
                           
                            HStack{
                                Text("Name:")
                                    .font(.smallCaps(size: 20))
                                Spacer()
                                Text("John Doe")
                                    .font(.smallCaps(size: 20))
                                   
                            }
                            .padding()
                            HStack{
                                Text("Email:")
                                    .font(.smallCaps(size: 20))
                                Spacer()
                                Text("john@doe.com")
                                    .font(.smallCaps(size: 20))
                               
                            }
                            .padding()
                            
                            Spacer()
                        }
                        )
                Spacer()
                    
            }
            
//            .navigationTitle("Settings")
            
        }
        
    }
}

#Preview {
    SettingsView()
}
