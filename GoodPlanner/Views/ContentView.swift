//
//  ContentView.swift
//  GoodPlanner
//
//  Created by 이재원 on 3/15/24.
//

import SwiftUI

struct ContentView: View {
    var date = Date()
    var body: some View {
        NavigationView{
                TabView{
                    ScrollView {
                        VStack {
                            Header()
                            Text("Hello, world!")
                                .padding()
                        }
                    }
                        .tabItem {
                            Image(systemName: "house")
                            Text("Home")
                        }
                    Text("Second View")
                        .tabItem {
                            Image(systemName: "calendar")
                            Text("Calendar")
                        }
                    Text("Third View")
                        .tabItem {
                            Image(systemName: "person")
                            Text("Profile")
                        }
                }
                .navigationTitle(date.formatted(date: Date.FormatStyle.DateStyle.numeric, time: Date.FormatStyle.TimeStyle.omitted))
        }
    }
        
}

#Preview {
    ContentView()
}
