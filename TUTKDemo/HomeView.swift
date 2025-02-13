//
//  ContentView.swift
//  TUTKDemo
//
//  Created by Jill Chang on 2025/2/13.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            // iOS 13+
            /*
             Text("Device List")
                 .tabItem {
                     Label("List", systemImage: "list.bullet")
                 }
             Text("Info")
                 .tabItem {
                     Label("Info", systemImage: "info.circle")
                 }
             */
            // iOS 17+
            Tab("List", systemImage: "list.bullet") {
                Text("Device List")
            }
            Tab("Info", systemImage: "info.circle") {
                Text("Info")
            }
        }
    }
}

#Preview {
    HomeView()
}
