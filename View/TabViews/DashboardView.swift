//
//  DashboardView.swift
//  JournalApp
//
//  Created by Goran Saric on 05.08.25.
//

import SwiftUI

struct DashboardView: View {
    
    private let date = Date().formatted(.dateTime.day(.twoDigits).month(.twoDigits).year())
    private let entriesCount: Int = 5
    private let quoteOfTheDay: String = "“The secret of getting ahead is getting started. Don’t wait for the perfect moment, because there never will be one. Take the first step today, no matter how small.”"
    private let streakDays: Int = 7
    private let lastEntryDate: String = "05.06.2025"
    private let mood: String = "😳"
    private let weather: String = "🌤️"
    private var username: String = "Goran"
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack(spacing: 75){
                    VStack(alignment: .leading){
                        Text("Good evening, \(username)!")
                            .font(.title3)
                            .bold()
                            
                                   
                        Text(date)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .offset(x: -8)
                    Text("Last entry: \(lastEntryDate)")
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.gray)
                }
                Divider()
                    .padding(.horizontal, 2)
            }
       
        
            .padding(.horizontal)
            VStack{
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 180, height: 180)
                        .foregroundStyle(.blue.opacity(0.6))
                        .overlay(
                            VStack(spacing: 10){
                                Text("\(entriesCount)")
                                    .font(.system(size: 70, weight: .bold, design: .rounded))
                                    .fontWeight(.bold)
                                Text("Entries")
                                    .font(.system(size: 20, weight: .ultraLight, design: .rounded))
                                    .bold()
                                    
                            }
                                
                            )
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 180, height: 180)
                        .foregroundStyle(.indigo.opacity(0.6))
                        .overlay(
                            VStack(spacing: 10){
                                HStack{
                                    Text("\(streakDays)")
                                        .font(.system(size: 70, weight: .bold, design: .rounded))
                                        .fontWeight(.bold)
                                        .offset(x: 10)
                                    Text("d")
                                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                                        .padding(.top, 30)
                                        .offset(x: -10)
                                    
                                }
                                Text("Streak")
                                    .font(.system(size: 20, weight: .ultraLight, design: .rounded))
                                    .bold()
                                
                    
                            }
                            )
                }
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 365, height: 180)
                        .foregroundStyle(.orange.opacity(0.6))
                        .overlay(
                            VStack(spacing: 10){
                                Text("Quote of the day:")
                                    .font(.title2)
                                    .bold()
                                    .padding(.top)
                                Text("\(quoteOfTheDay)")
                                    .font(.callout)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal)
                                    .padding(.top)
                                Spacer()
                            }
                            )
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 180, height: 180)
                        .foregroundStyle(.yellow.opacity(0.6))
                        .overlay(
                            VStack(spacing: 10){
                                HStack{
                                    Text("\(mood)")
                                        .font(.system(size: 70, weight: .bold, design: .rounded))
                                        .fontWeight(.bold)
                                        
                                }
                                Text("Mood")
                                    .font(.system(size: 20, weight: .ultraLight, design: .rounded))
                                    .bold()
                                
                    
                            }
                            )
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 180, height: 180)
                        .foregroundStyle(.green.opacity(0.6))
                        .overlay(
                            VStack(spacing: 10){
                                HStack{
                                    Text("\(weather)")
                                        .font(.system(size: 70, weight: .bold, design: .rounded))
                                        .fontWeight(.bold)
                                        
                                }
                                Text("Weather")
                                    .font(.system(size: 20, weight: .ultraLight, design: .rounded))
                                    .bold()
                            }
                            )
                }
                
                
            }
            Spacer()
                .navigationTitle("Dashboard")
        }
    }
}

#Preview {
    DashboardView()
}
