//
//  SneakerRow.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 11/18/22.
//

import SwiftUI

struct SneakerRow: View {
    @EnvironmentObject var manager: CartManager
    //@ObservedObject var store: SneakerStore
    var sneaker: Sneaker
    var image: URLImage
    
    
    var body: some View {
        HStack(spacing: 20) {
            URLImage(url: sneaker.picture)
                .frame(width: 100, height: 100)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(sneaker.name)
                    .bold()
                
                Text("$\(sneaker.price)")
            }
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(Color("cart-number-background"))
                .onTapGesture {
                    manager.removeFromCart(sneaker: sneaker)
                }
        }
        
        
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
        //        .task {
        //            store.fetchAPI()
        //        }
    }
}

struct SneakerRow_Previews: PreviewProvider {
    static var previews: some View {
        SneakerRow(sneaker: Sneaker.example, image: URLImage(url: "https://image.goat.com/375/attachments/product_template_pictures/images/008/654/900/original/52015_00.png.png"))
            .environmentObject(CartManager())
    }
}
