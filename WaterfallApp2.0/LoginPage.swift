//
//  ContentView.swift
//  WaterfallApp2.0
//
//  Created by Daniel Burnside on 5/18/20.
//  Copyright © 2020 Dan Burnside. All rights reserved.
//

import SwiftUI

struct LoginPage: View {
    

    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
       
            VStack {
                TitleHeaderView(title: "Welcome back!", subtitle: "Sign in to continue")
                UsernameAndPasswordView(newUser: false)
                Spacer()
                NewUserNavbutton()
            }.padding(.horizontal, 32)
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}


