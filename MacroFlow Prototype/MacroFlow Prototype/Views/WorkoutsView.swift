//
//  WorkoutsView.swift
//  MacroFlow Prototype
//
//  Created by Ryan D'Mello on 1/9/2024.
//

import SwiftUI

/// Workouts view displaying different workout categories with background images.
struct WorkoutsView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Title
            Text("Workouts")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, -15)
            
            // Push Workout Section
            Button(action: {
                // Action for Push workout
            }) {
                ZStack {
                    Image("pushImage") // Replace with your image name
                        .resizable()
                        .scaledToFill()
                        .frame(height: 150)
                        .clipped()
                        .cornerRadius(15)

                    Text("PUSH")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                }
            }
            .buttonStyle(PlainButtonStyle()) // Removes default button style

            // Pull Workout Section
            Button(action: {
                // Action for Pull workout
            }) {
                ZStack {
                    Image("pullImage") // Replace with your image name
                        .resizable()
                        .scaledToFill()
                        .frame(height: 150)
                        .clipped()
                        .cornerRadius(15)

                    Text("PULL")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)

