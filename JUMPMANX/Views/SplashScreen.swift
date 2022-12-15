//
//  SplashScreen.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 11/20/22.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive: Bool = false
    @State private var size = 0.8
    
    var body: some View {
        if isActive {
            ContentView(store: SneakerStore())
        } else {
            ZStack {
                Color(.black)
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                    
                    
                    Spacer()
                    Text("JUMPMANX")
                        .foregroundColor(.red)
                    
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
