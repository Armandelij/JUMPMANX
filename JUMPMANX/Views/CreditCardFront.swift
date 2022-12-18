//
//  CreditCardFront.swift
//  JUMPMANX
//
//  Created by Elijah Armande on 12/17/22.
// Beautiful Card User Interface #2 (havent started)

import SwiftUI

struct CreditCardFront: View {
    
    let name: String
    let expires: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack(alignment: .top){
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(Color.white)
                
                
                Spacer()
                
                
                
                Text("VISA")
                    .foregroundColor(Color.white)
                    .font(.system(size: 24))
                    .fontWeight(.bold)
            }
            
            Spacer()
            
            Image("chip")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Text("1111 2222 3333 1234")
                .foregroundColor(Color.white)
                .font(.system(size: 25))
            
            Spacer()
            
            HStack {
                VStack(alignment: .leading) {
                    Text("CARD HOLDER")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                    
                    Text(name)
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                }
                
                Spacer()
                
                VStack {
                    Text("EXPIRES")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                    Text(expires)
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                }
                
            }
            
            
            
            
            
        }
        .frame(width: 250, height: 150)
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.black]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(10)
    }
}

struct CreditCardFront_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardFront(name: "Elijah Armande", expires: "02/28")
    }
}
