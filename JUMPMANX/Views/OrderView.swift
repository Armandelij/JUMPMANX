//
//  OrderView.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 12/16/22.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            URLImage(url: item.picture)
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                        
                    }
                }
                
                Section {
                    NavigationLink(destination: Text("Check out")) {
                        Text("Place order")
                    }
                }
                
            }
            .navigationTitle("Order")
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
            .environmentObject(Order())
    }
}
