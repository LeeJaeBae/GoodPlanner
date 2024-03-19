//
//  ContentView.swift
//  GoodPlanner
//
//  Created by 이재원 on 3/15/24.
//

import SwiftUI

enum Tab {
    case today
    case daily
    case weekly
    case monthly
    case yearly
}

struct ContentView: View {
    @State var selectedTab: Tab = .today
    var body: some View {
        VStack {
          Spacer()
            switch selectedTab {
            case .today:
                Text("today")
            case .daily:
                Text("daily")
            case .weekly:
                Text("weekly")
            case .monthly:
                Text("monthly")
            case .yearly:
                Text("yearly")
            }
            Spacer()
            CustomTabView(selectedTab: $selectedTab)
        }
    }
}

struct CustomTabView: View {
    @Binding var selectedTab: Tab
    var body: some View {
        HStack {
            Spacer()
            Text("today")
                .onTapGesture {
                    selectedTab = .today
                }
                .font(selectedTab == .today ? .caption : .caption2)
            
            Spacer()
            
        }
    }
}

#Preview {
    ContentView()
}
