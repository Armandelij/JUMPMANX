//
//  JUMPMANXApp.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 11/7/22.
//

import SwiftUI

@main
struct JUMPMANXApp: App {
    @StateObject var store = SneakerStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
                .environmentObject(CartManager())
        }
    }
}
