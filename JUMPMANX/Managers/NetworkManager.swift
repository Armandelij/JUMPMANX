//
//  NetworkManager.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 11/15/22.
//

import Foundation

class SneakerStore: ObservableObject {
    @Published var sneakers: [Sneaker]? = [Sneaker]()
    
    func fetchAPI() {
        guard let url = URL(string: "https://my-json-server.typicode.com/Armandelij/mockjson2/db") else {
            fatalError("Invalid URL")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            
            let sneakerResponse = try?
            JSONDecoder().decode(SneakerResponse.self, from: data)
            if let sneakerResponse = sneakerResponse {
                DispatchQueue.main.async {
                    self.sneakers = sneakerResponse.sneakers
                }
            }
            
        }
        .resume()
    }

}
