//
//  ContentView.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 11/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var store: SneakerStore
    
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(store.sneakers ?? [Sneaker](), id: \.id) {
                        sneaker in
                        NavigationLink(destination: ShoeView(image: URLImage(url: sneaker.picture), sneaker: sneaker)) {
                            VStack(){
                                ZStack() {
                                    Rectangle()
                                        .fill(Color("shoe-background"))
                                        .padding(5)
                                        .cornerRadius(25)
        
                                    URLImage(url: sneaker.picture)
                                        .frame(width: 100, height: 100)

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
            .navigationTitle("Jordan Collection")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: SneakerStore())
            
    }
}
