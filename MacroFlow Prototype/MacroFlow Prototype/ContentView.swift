//
//  ContentView.swift
//  MacroFlow Prototype
//
//  Created by Ryan D'Mello on 29/8/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0

    var body: some View {
        VStack {
            Spacer() // Pushes the Tab Bar to the bottom

            // Main content based on selected tab
            switch selectedTab {
            case 0:
                DashboardView()
            case 1:
                DiaryView()
            case 2:
                ProgressScreenView()
            case 3:
                WorkoutsView()
            default:
                MoreView()
            }

            // Custom Tab Bar
            HStack {
                TabBarButton(imageName: "rectangle.grid.2x2.fill", text: "Dashboard", isSelected: selectedTab == 0) {
                    selectedTab = 0
                }
                Spacer()
                TabBarButton(imageName: "book.fill", text: "Diary", isSelected: selectedTab == 1) {
                    selectedTab = 1
                }
                Spacer()
                TabBarButton(imageName: "chart.line.uptrend.xyaxis", text: "Progress", isSelected: selectedTab == 2) {
                    selectedTab = 2
                }
                Spacer()
                TabBarButton(imageName: "dumbbell.fill", text: "Workouts", isSelected: selectedTab == 3) {
                    selectedTab = 3
                }
                Spacer()
                TabBarButton(imageName: "ellipsis", text: "More", isSelected: selectedTab == 4) {
                    selectedTab = 4
                }
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .background(Color.gray.opacity(0.5))
            .cornerRadius(15)
            .padding(.bottom, -34)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

