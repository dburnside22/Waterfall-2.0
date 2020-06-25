//
//  UserInfoView.swift
//  WaterfallApp2.0
//
//  Created by Daniel Burnside on 5/26/20.
//  Copyright © 2020 Dan Burnside. All rights reserved.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
            VStack {
                Image(systemName: "person.circle").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 200, alignment: .center)
                HStack {
                    Text("Name:").font(.title).fontWeight(.semibold)
                    Text("Dan Burnside").font(.title).fontWeight(.semibold)
                }.padding()
                HStack {
                    Text("Location:").font(.title).fontWeight(.semibold)
                    Text("Franklin, TN").font(.title).fontWeight(.semibold)
                }.padding()
                Text("Transation History").font(.subheadline).fontWeight(.semibold).padding()
                Spacer()
                
            }.padding(.top, 30)
            

    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
