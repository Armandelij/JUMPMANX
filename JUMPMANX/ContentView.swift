//
//  ContentView.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 11/7/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var manager: CartManager
    @StateObject var cartManager = CartManager()
    @ObservedObject var store: SneakerStore
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(store.sneakers ?? [Sneaker](), id: \.id) {
                        sneaker in
                        NavigationLink(destination: ShoeView(image: URLImage(url: sneaker.picture), sneaker: sneaker)) {
                            VStack{
                                ZStack(alignment: .topTrailing) {
                                    Rectangle()
                                        .fill(Color("shoe-background"))
                                        .padding(5)
                                    // fix backround image
                                    URLImage(url: sneaker.picture)
                                        .frame(width: 200, height: 200)
                                    
                                    Button{
                                        manager.addToCart(sneaker: sneaker)
                                    } label: {
                                        Image(systemName: "plus")
                                            .padding(5)
                                            .foregroundColor(.black)
                                    }
                                }
                                
                                Text(sneaker.name)
                                    .foregroundColor(.primary)
                                Text("$\(sneaker.price)")
                                    .foregroundColor(.green)
                            }
                        }
                    }
                }
                .onAppear{
                    store.fetchAPI()
                }
            }
            .navigationTitle("Sneaker Store")
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                            CartButton(numberOfProducts: manager.sneakers.count )
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: SneakerStore())
            .environmentObject(CartManager())
    }
}
