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
                HStack{
                    Text("DASHBOARD")
                        .font(.bangers(size: 45))
                        .padding(.top, 20)
                        .padding(.bottom)
                        .offset(x: -19)
                    Image(systemName: "house.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                            .foregroundColor(.black)
                            .padding(.leading, 100)
                }
                
                HStack(spacing: 75){
                    VStack(alignment: .leading){
                        Text("Good evening: \(username)!")
                            .font(.smallCaps(size: 21))
                        Text(date)
                            .font(.smallCaps(size: 15))
                            .foregroundColor(.gray)
                    }
                    .offset(x: -8)
                    Text("Last entry: \(lastEntryDate)")
                        .font(.smallCaps(size: 15))
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
                            .foregroundStyle(.blue.opacity(0.7))
                            .overlay(
                                VStack{
                                    Text("\(entriesCount)")
                                        .font(.chalk(size: 70))
                                        .padding(.top)
                                        
                                        
                                    Text("Entries")
                                        .font(.bangers(size: 40))
                                        .padding(.bottom)
                                }
                                )
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 180, height: 180)
                        .foregroundStyle(.purple.opacity(0.7))
                        .overlay(
                            VStack(spacing: 10){
                                HStack{
                                    Text("\(streakDays)")
                                        .font(.chalk(size: 70))
                                        
                                        .offset(x: 11, y: 5)
                                    Text("d")
                                        .font(.chalk(size: 25))
                                        .padding(.top, 30)
                                        .offset(x: -10, y: 6)
                                    
                                }
                                Text("Streak")
                                    .font(.bangers(size: 40))
                                    .offset(y: -5)
                            }
                            )
                }
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 365, height: 180)
                        .foregroundStyle(.orange.opacity(0.7))
                        .overlay(
                            VStack(spacing: 10){
                                Text("Quote of the day:")
                                    .font(.bangers(size: 30))
                                    .bold()
                                    .padding(.top)
                                Text("\(quoteOfTheDay)")
                                    .font(.bangers(size: 20))
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
                        .foregroundStyle(.yellow.opacity(0.7))
                        .overlay(
                            VStack(spacing: 10){
                                HStack{
                                    Text("\(mood)")
                                        .font(.system(size: 70, weight: .bold, design: .rounded))
                                        .fontWeight(.bold)
                                        
                                }
                                Text("Mood")
                                    .font(.bangers(size: 30))
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
                                    .font(.bangers(size: 30))
                                    .bold()
                            }
                            )
                }
                
                
            }
            Spacer()
//                .navigationTitle("Dashboard")
        }
    }
}

#Preview {
    DashboardView()
}
