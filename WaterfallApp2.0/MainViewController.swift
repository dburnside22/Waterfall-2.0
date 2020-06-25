//
//  MainViewController.swift
//  WaterfallApp2.0
//
//  Created by Daniel Burnside on 6/16/20.
//  Copyright © 2020 Dan Burnside. All rights reserved.
//

import SwiftUI

struct MainViewController: View {
    
    
   @EnvironmentObject var userData: UserData

    var body: some View {
        VStack {
            if (userData.isLogin) {
                HomeView()
            } else {
                LoginPage()
            }
            Button(action: userData.toggleIsLogin) {
               Text("BUTTON")
            }
        }
    
       
        
    }
    
    
    

}


struct MainViewController_Previews: PreviewProvider {
    static var previews: some View {
        MainViewController()
    }
}
