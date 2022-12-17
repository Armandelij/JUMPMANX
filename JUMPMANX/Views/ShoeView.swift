//
//  ShoeView.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 11/19/22.
//

//Button("Order This") {
//    order.add(item: sneaker)
//}

import SwiftUI

struct ShoeView: View {
    @EnvironmentObject var order: Order
    
    var image: URLImage
    var sneaker: Sneaker
    
    var body: some View {
        //        VStack {
        //            ZStack {
        //                Rectangle()
        //                    .fill(Color("shoe-background"))
        //                URLImage(url: sneaker.picture)
        //                    .frame(width: 450, height: 450)
        //                    .rotationEffect(.degrees(50))
        //            }
        //            .ignoresSafeArea()
        //            .padding(.leading, 50)
        //
        //            Button("Order This") {
        //                order.add(item: sneaker)
        //            }
        //
        //        }
        
        
        
        VStack {
            URLImage(url: sneaker.picture)
                .frame(width: 450, height: 450)
                .rotationEffect(.degrees(50))
                
            
            
            VStack(alignment: .trailing ) {
                Button("Order This") {
                    order.add(item: sneaker)
                }
            }
            .padding(.trailing, 260)
            .padding()
        }
    }
}

struct ShoeView_Previews: PreviewProvider {
    static var previews: some View {
        ShoeView(image: URLImage(url: "https://image.goat.com/375/attachments/product_template_pictures/images/008/654/900/original/52015_00.png.png"), sneaker: Sneaker.example)
            .environmentObject(Order())
    }
}
