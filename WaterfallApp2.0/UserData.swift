//
//  UserData.swift
//  WaterfallApp2.0
//
//  Created by Daniel Burnside on 6/16/20.
//  Copyright © 2020 Dan Burnside. All rights reserved.
//

import SwiftUI


class UserData: ObservableObject {
    @Published var isLogin: Bool = false
    
    
    func toggleIsLogin() {
        isLogin = !isLogin
    }
}


