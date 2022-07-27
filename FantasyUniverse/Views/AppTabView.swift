//
//  AppTabView.swift
//  FantasyUniverse
//
//  Created by TarasPeregrinus on 26.07.2022.
//

import SwiftUI

struct AppTabView: View {
    
    @StateObject var user: User
    
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Image(systemName: "line.3.horizontal.circle")
                    Text("Quiz")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
        }
        .accentColor(.blue)
        .environmentObject(user)
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView(user: User(uid: "", displayName: "", email: "", refreshToken: ""))
    }
}