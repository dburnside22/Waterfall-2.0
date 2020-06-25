//
//  SignUpView.swift
//  WaterfallApp2.0
//
//  Created by Daniel Burnside on 5/19/20.
//  Copyright © 2020 Dan Burnside. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        VStack {
            TitleHeaderView(title: "Create Account", subtitle: "Sign up to get started")
            UsernameAndPasswordView(newUser: true)
            Spacer()
        }.padding(.horizontal, 32)
    }     
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SignUpView()
        }
        
    }
}
