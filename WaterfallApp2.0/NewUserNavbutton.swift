//
//  NewUserNavbutton.swift
//  WaterfallApp2.0
//
//  Created by Daniel Burnside on 5/19/20.
//  Copyright © 2020 Dan Burnside. All rights reserved.
//

import SwiftUI

struct NewUserNavbutton: View {
    var body: some View {
        VStack {
            
            NavigationLink(destination: SignUpView()){
                HStack {
                    Text("I'm a new user.")
                        .font(.system(size: 14, weight: .light))
                        .foregroundColor(.primary)
                    
                    Text("Create an account")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.purple)
                }
            }
            .padding(.horizontal, 32)
        }
    }
}

struct NewUserNavbutton_Previews: PreviewProvider {
    static var previews: some View {
        NewUserNavbutton()
    }
}
