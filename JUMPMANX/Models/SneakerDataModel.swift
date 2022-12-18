//
//  DataModel.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 11/7/22.
//

import Foundation
import SwiftUI

struct SneakerResponse: Decodable {
    let sneakers: [Sneaker]
}

struct Sneaker: Codable, Identifiable, Equatable {
    let id: Int
    let name: String
    let price: Int
    let picture: String
    
    
    
    private enum CodingKeys: String, CodingKey {
        case id, name
        case price = "retail_price_cents"
        case picture = "grid_picture_url"
        
        
    }
    
    static let example = Sneaker(id: 1, name: "Air Jordan 11 Retro 'Space Jam' 2016", price: 200, picture: "https://image.goat.com/375/attachments/product_template_pictures/images/008/654/900/original/52015_00.png.png")
    
    
}






