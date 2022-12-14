//
//  URLImage.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 11/17/22.
//

import SwiftUI

struct URLImage: View {
    
    let url: String
    let placeholder: String
    
    @ObservedObject var imageLoader = ImageLoader()
    
    init(url: String, placeholder: String = "Placeholder") {
        self.url = url
        self.placeholder = placeholder
        self.imageLoader.downloadImage(url: self.url)
    }
    
    var body: some View {
        if let data = self.imageLoader.downloadedData {
            return Image(uiImage: UIImage(data: data)!).renderingMode(.original).resizable()
        } else {
            return Image("placeholder").renderingMode(.original).resizable()
        }
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(url:"https://image.goat.com/375/attachments/product_template_pictures/images/008/654/900/original/52015_00.png.png")
    }
}
