//
//  ContentView.swift
//  FoodByte
//
//  Created by Pirate-Emperor on 14/08/2023.
//

import SwiftUI

struct FoodByteTabView: View {
    var body: some View {
        TabView {
            FoodByteListView()
                .tabItem {
                    Label(
                        title: { Text("Home")},
                        icon: { Image(systemName: "house") }
                    )
                }
            AccountView()
                .tabItem {
                    Label(
                        title: { Text("Account")},
                        icon: { Image(systemName: "person") }
                    )
                }
            OrderView()
                .tabItem {
                    Label(
                        title: { Text("Order")},
                        icon: { Image(systemName: "bag") }
                    )
                }
        }
        .accentColor(.brandPrimary)
    }
}

#Preview {
    FoodByteTabView()
}
