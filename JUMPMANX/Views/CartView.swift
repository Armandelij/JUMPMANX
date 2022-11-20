//
//  CartView.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 11/18/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var manager: CartManager
    
    var body: some View {
        ScrollView {
            if manager.sneakers.count > 0 {
                ForEach(manager.sneakers, id: \.id) { sneaker in
                    SneakerRow(sneaker: sneaker, image: URLImage(url: sneaker.picture))
                }
                
                HStack {
                    Text("Your cart total is ")
                    Spacer()
                    Text("$\(manager.total).00")
                        .bold()
                }
                .padding()
                
            } else {
                Text("Your Cart is empty")
            }
            
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
