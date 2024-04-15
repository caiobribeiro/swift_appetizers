//
//  ContentView.swift
//  Appetizers
//
//  Created by Caio Beraldi Ribeiro on 05/04/24.
//

import SwiftUI

struct AppetizersTabView: View {
    var body: some View {
        TabView {
            AppetizersListView()
                .tabItem {
                    Image(systemName: "menucard")
                    Text("Menu")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(.brandPrimary)
    }
}

#Preview {
    AppetizersTabView()
}
