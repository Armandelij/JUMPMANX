//
//  MainView.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 12/16/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView(store: SneakerStore())
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Order())
    }
}
