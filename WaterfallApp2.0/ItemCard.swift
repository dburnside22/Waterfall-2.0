//
//  ItemCard.swift
//  WaterfallApp2.0
//
//  Created by Daniel Burnside on 6/4/20.
//  Copyright © 2020 Dan Burnside. All rights reserved.
//

import SwiftUI

struct ItemCard: View {
    
    var imageName: String = ""
    var price: String = ""
    
    
    var body: some View {
        ZStack {
            Image(imageName).resizable().aspectRatio(contentMode: .fill
                ).frame(width: 100, height: 100).cornerRadius(15).shadow(radius: 10)
            
            VStack {
                Spacer()
                ZStack {
                  Image(systemName: "rectangle.fill").resizable().foregroundColor(.purple).frame(width: 60, height: 30, alignment: .bottom).shadow(radius: 15)
                    Text("$" + price).foregroundColor(.white).fontWeight(.semibold)
                }
               
            }.frame(width: 120, height: 120, alignment: .trailing) 
        }
    }
}

struct ItemCard_Previews: PreviewProvider {
    static var previews: some View {
        ItemCard(imageName: "milo", price: "400")
    }
}
