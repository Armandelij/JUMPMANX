//
//  Order.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 12/15/22.
//

import Foundation

class Order: ObservableObject {
    @Published var items = [Sneaker]()
    
    var total: Int {
        if items.count > 0 {
            return items.reduce(0) { $0 + $1.price }
        } else {
            return 0
        }
    }
    
    func add(item: Sneaker) {
        items.append(item)
    }
    
    func remove(item: Sneaker) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }   
}
