//
//  TitleHeaderViewNumberTwo.swift
//  WaterfallApp2.0
//
//  Created by Daniel Burnside on 5/26/20.
//  Copyright © 2020 Dan Burnside. All rights reserved.
//

import SwiftUI

struct TitleHeaderView: View {
    var title: String
    var subtitle: String
    var body: some View {
        VStack {
            Text(title).font(.title).fontWeight(.heavy).padding(.top, 100)
            Text(subtitle).font(.body)
        }
    }
}

struct TitleHeaderViewNumberTwo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
          TitleHeaderView(title: "Title", subtitle: "this is a subtitle!")
        }
        
    }
}
