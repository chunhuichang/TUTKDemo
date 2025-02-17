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
            Tab("List", systemImage: "list.bullet") {
                ListView()
            }
            Tab("Info", systemImage: "info.circle") {
                InfoView()
            }
        }
    }
}

#Preview {
    HomeView()
}
