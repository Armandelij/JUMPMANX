//
//  CartManager.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 11/18/22.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var sneakers: [Sneaker] = []
    @Published private(set) var total: Int = 0
   
    
    // Adding Sneakers to a cart and updating the total based on the price.
    func addToCart(sneaker: Sneaker) {
        sneakers.append(sneaker)
        total += sneaker.price
    }
    
    func removeFromCart(sneaker: Sneaker) {
        // we only want sneakers that arent the specidied sneaker that is passed in as a parameter
        sneakers = sneakers.filter {$0.id != sneaker.id}
        total -= sneaker.price
    }
    
}
