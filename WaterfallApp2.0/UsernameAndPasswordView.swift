//
//  UsernameAndPasswordVIew.swift
//  WaterfallApp2.0
//
//  Created by Daniel Burnside on 5/19/20.
//  Copyright © 2020 Dan Burnside. All rights reserved.
//

import SwiftUI

struct UsernameAndPasswordView: View {
        
    @State var email: String = ""
    @State var password: String = ""
    @State var error: String = ""
    @State var termsAndConditionsChecked: Bool = false
    @State var loginSuccess: Bool = false
    
    
    var newUser: Bool
    
    func toggleTermsAndConditions () {
         termsAndConditionsChecked = !termsAndConditionsChecked
    }
    func signIn() {
        print("signin hit")
    }
    
    func signUp() {
        print("Sign up hit!")
    }
    
    var body: some View {
            
                VStack {
                    TextField("Email Address", text: $email)
                        .font(.system(size: 14))
                        .padding(12)
                        .background(RoundedRectangle(cornerRadius: 5)
                        .strokeBorder(Color.gray))
                    SecureField("Password", text: $password)
                        .font(.system(size: 14))
                        .padding(12)
                        .background(RoundedRectangle(cornerRadius: 5)
                        .strokeBorder(Color.gray))
                   
                    if newUser {
                        HStack {
                            Button(action: toggleTermsAndConditions){
                                Image(systemName: termsAndConditionsChecked ? "checkmark.square" : "square").foregroundColor(.black)
                            }
                            NavigationLink(destination: TermsAndConditionsView()){
                                Text("Terms & Conditions")
                                    .font(.system(size:14))
                                    .foregroundColor(.purple)
                            }
                            Spacer()
                        }.padding(12)
                        Button(action: signUp) {
                            Text("Sign Up")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .frame(height: 50)
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .bold))
                                .background(LinearGradient(gradient: Gradient( colors: [.purple, .blue]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(5)
                        }.padding(.top, 40)
                    } else {
                        Button(action: signIn) {
                            Text("Sign In")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .frame(height: 50)
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .bold))
                                .background(LinearGradient(gradient: Gradient( colors: [.purple, .blue]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(5)
                            }.padding(.top, 40)
                    }
                    
                    if (error != ""){
                        Text(error)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.red)
                            .padding()
                    }
                    
                }.padding(.top, 30)
    }
}





struct UsernameAndPasswordVIew_Previews: PreviewProvider {
    static var previews: some View {
        UsernameAndPasswordView(newUser: true)
    }
}
