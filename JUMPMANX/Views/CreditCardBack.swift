//
//  CreditCardBack.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 12/17/22.
//

import SwiftUI

struct CreditCardBack: View {
    
    let cvv: String
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 20)
                .background(Color("credit-card-stripe"))
                .padding([.top])
            
            
            Spacer()
            
            HStack {
                
                Text(cvv).foregroundColor(Color.black)
                    .rotation3DEffect(.degrees(180), axis: (x: 0.0, y: 1.0, z: 0.0))
                    .padding(5)
                    .frame(width: 100, height: 20)
                    .background(Color.white)
                
                Spacer()
            }
            .padding()
            
            
        }
        .frame(width: 250, height: 150)
        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.black]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(10)
    }
}

struct CreditCardBack_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardBack(cvv: "123")
    }
}
