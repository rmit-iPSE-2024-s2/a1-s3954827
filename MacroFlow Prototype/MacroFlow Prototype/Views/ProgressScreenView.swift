//
//  SwiftUIView.swift
//  MacroFlow Prototype
//
//  Created by Ryan D'Mello on 1/9/2024.
//

// NOTE: This view uses a custom layout. I chose to do a custom layout for this view, as it was the most complicated view for the prototype, with a graph on the screen. With this I came to a conclusion that it could benefit the most from a custom layout.
// All other work has been using SwiftUI layouts as specified in the assessment.

import SwiftUI

/// Progress view displaying weight change over time with a graph and list of entries.
struct ProgressScreenView: View {
    @State private var selectedRange = "Weight" // Example state for data type selection

    var body: some View {
        VStack(spacing: 20) {
            // Title
            Text("Progress")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, -15)
                
            // Navigation controls
            HStack {
                Button(action: {
                    // Action to go to the previous screen
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.blue)
                }

                Spacer()

                Button(action: {
                    // Action to add new data
                }) {
                    Image(systemName: "plus")
                        .foregroundColor(.blue)
                    Text("New Entry")
                        .font(.body)
                        .fontWeight(.light)
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)

            // Weight Data Display
            HStack(spacing: 20) { // Adjust spacing as needed
                VStack {
                    Text("55.4 kg")
                        .font(.headline)
                    Text("START")
                        .font(.caption)
                        .foregroundColor(.gray)
                }

                VStack {
                    Text("56.9 kg")
                        .font(.headline)
                    Text("CURRENT")
                        .font(.caption)
                        .foregroundColor(.gray)
                }

                VStack {
                    Text("+1.5 kg")
                        .font(.headline)
                    Text("CHANGE (+2.7%)")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(15)
            .padding(.horizontal, 20)

            // Graph Component
            ProgressGraphView()
                .frame(height: 200) // Adjust height as needed
                .padding(.horizontal, 20)

            // Entries List
            VStack(alignment: .leading, spacing: 15) {
                Text("Entries")
                    .font(.headline)
                    .padding(.leading, 20)

                ForEach(sampleEntries, id: \.self) { entry in
                    HStack {
                        Text(entry)
                            .font(.body)
                            .lineLimit(1)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                        Button(action: {
                            // Action to view/edit entry
                        }) {
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.horizontal, 20)
                }
            }
            .padding(.vertical, 10)

            Spacer()
        }
        .padding()
    }
}

// Sample Data for Entries List
let sampleEntries = [
    "56.9 kg    Friday 15 October 2021",
    "55.8 kg    Wednesday 13 October 2021",
    "58.4 kg    Tuesday 11 February 2020",
    "58.8 kg    Wednesday 11 December 2019"
]

