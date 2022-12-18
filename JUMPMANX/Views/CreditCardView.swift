//
//  CreditCardView.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 12/17/22.
//

import SwiftUI

struct CreditCardView<Content>: View where Content: View {
    
    var content: () -> Content
    
    var body: some View {
        content()
    }
}


struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView<CreditCardFront>(content: {CreditCardFront(name: "Elijah", expires: "02/28")})
    }
}
