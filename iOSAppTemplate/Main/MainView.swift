//
//  MainView.swift
//  iOSAppTemplate
//
//  Created by Juan Renato on 18/06/22.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Label("Home",systemImage: "house")
                }
            
            ChatView()
                .tabItem {
                    Label("Chat", systemImage: "message")
                }
            
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.fill")
                }.accentColor(.pink)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
