//
//  ContentView.swift
//  Notes
//
//  Created by Frank Sera on 26/12/24.
//

import SwiftUI




struct ContentView: View {
    
    @State var appInfo = AppInfo()
    
    // MARK: - Main Body
    var body: some View {
        TabView{
            NListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            NListView(forFavorite: true)
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
        }
            .environmentObject(appInfo)
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}
