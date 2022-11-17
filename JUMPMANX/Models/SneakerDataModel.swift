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

struct Sneaker: Codable, Identifiable {
    let id: Int
    let name: String
    let price: Int
    let picture: String
    
    private enum CodingKeys: String, CodingKey {
        case id, name
        case price = "retail_price_cents"
        case picture = "grid_picture_url"
    }
    
    
}


