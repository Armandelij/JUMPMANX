//
//  OrderView.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 12/16/22.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    @State private var showingPaymentAlert = false
    
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
                                .foregroundColor(.green)
                        }
                        
                    }
                    .onDelete(perform: deleteItems)
                }
                
                CheckOutView()
                
                Section(header: Text("Your total is $\(order.total)").foregroundColor(.green)) {
                    Button("Confirm order") {
                        showingPaymentAlert.toggle()
                    }
                }
                
                
                
            }
            .navigationTitle("Order")
            .listStyle(InsetGroupedListStyle())
            .toolbar {
                EditButton()
            }
            .alert(isPresented: $showingPaymentAlert) {
                Alert(title: Text("Confirm Your Order"), message: Text("Your total is $\(order.total)"), primaryButton: .default(Text("Confirm")), secondaryButton: .destructive(Text("Cancel")))
            }
            
        }
    }
    
    // Function that allows you to delete items
    func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
    
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
            .environmentObject(Order())
    }
}
