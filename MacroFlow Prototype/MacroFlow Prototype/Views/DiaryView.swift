//
//  DiaryView.swift
//  MacroFlow Prototype
//
//  Created by Ryan D'Mello on 1/9/2024.
//

import SwiftUI

/// Diary view displaying the calories remaining and meal entry options.
struct DiaryView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            // Title
            Text("Diary")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, -15)
            
            // Navigation controls for selecting different days
            HStack {
                Button(action: {
                    // Action to go to the previous day
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.blue)
                }
                .padding(.leading, 20)
                
                Spacer()
                
                Text("TODAY")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {
                    // Action to go to the next day
                }) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.blue)
                }
                .padding(.trailing, 20)
            }
            .padding(.top, 20)
            
            Spacer()
                .frame(height:20)

            // Calories Remaining Section
            VStack(alignment: .leading, spacing: 10) {
                Text("Calories Remaining")
                    .font(.title2)
                    .padding(.leading, 20)
                Spacer()
                    .frame(height:20)
                
                VStack(alignment: .center, spacing: 5) {  // Aligning elements to the center
                    Text("2,397 cals")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                     
                    // Calorie breakdown with icons
                    HStack(spacing: 10) {
                        Text("Goal: 2,397")
                        
                        HStack(spacing: 4) {
                            Image(systemName: "minus")
                                .padding(.trailing, 2)
                            Text("Food: 400")
                        }
                        
                        HStack(spacing: 4) {
                            Image(systemName: "minus")
                                .padding(.trailing, 2)
                            Text("Exercise: 200")
                        }
                        
                        HStack(spacing: 1) {
                            Image(systemName: "equal")
                                .padding(.trailing, 2)
                            Text("Remaining: 2,397")
                        }
                    }
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.leading, 20)
                }
                .padding()
                .background(Color.orange.opacity(0.2))
                .cornerRadius(15)
                .padding(.horizontal, 20)
            }

            // Meal Entries Section
            VStack(spacing: 15) {
                DiaryEntryView(meal: "Breakfast", actionText: "ADD FOOD +")
                DiaryEntryView(meal: "Lunch", actionText: "ADD FOOD +")
                DiaryEntryView(meal: "Dinner", actionText: "ADD FOOD +")
                DiaryEntryView(meal: "Snacks", actionText: "ADD FOOD +")
                DiaryEntryView(meal: "Exercise", actionText: "ADD EXERCISE +")
            }
            .padding(.horizontal, 20)
            
            Spacer()
        }
        
    }
}

