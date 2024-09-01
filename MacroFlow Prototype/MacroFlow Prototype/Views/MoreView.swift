//
//  MoreView.swift
//  MacroFlow Prototype
//
//  Created by Ryan D'Mello on 1/9/2024.
//

import SwiftUI

/// More view displaying additional settings and options for the user.
struct MoreView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Title
            Text("More")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, -15)

            // Content Sections
            VStack(spacing: 20) {
                // My Profile Option
                Button(action: {
                    // Action for My Profile
                }) {
                    HStack {
                        Image(systemName: "person.crop.circle")
                            .font(.title2)
                            .foregroundColor(.blue)
                        Text("My Profile")
                            .font(.headline)
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                }

                // Goals Option
                Button(action: {
                    // Action for Goals
                }) {
                    HStack {
                        Image(systemName: "target")
                            .font(.title2)
                            .foregroundColor(.blue)
                        Text("Goals")
                            .font(.headline)
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                }

                // Settings Option
                Button(action: {
                    // Action for Settings
                }) {
                    HStack {
                        Image(systemName: "gear")
                            .font(.title2)
                            .foregroundColor(.blue)
                        Text("Settings")
                            .font(.headline)
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                }

                // About Option
                Button(action: {
                    // Action for About
                }) {
                    HStack {
                        Image(systemName: "info.circle")
                            .font(.title2)
                            .foregroundColor(.blue)
                        Text("About")
                            .font(.headline)
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                }

                // Help Option
                Button(action: {
                    // Action for Help
                }) {
                    HStack {
                        Image(systemName: "questionmark.circle")
                            .font(.title2)
                            .foregroundColor(.blue)
                        Text("Help")
                            .font(.headline)
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                }
            }
            .padding(.horizontal, 20)

            Spacer()
        }
        .padding()
    }
}
