//
//  HomeVie.swift
//  WaterfallApp2.0
//
//  Created by Daniel Burnside on 5/26/20.
//  Copyright © 2020 Dan Burnside. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var inputText: String = ""
    @State var showSearchInput: Bool = false
    @State var showFilterInput: Bool = true
    
    
    func toggleSearchInput(){
        showSearchInput = !showSearchInput
    }
    
    
    var amountOfPhotos: Int = 24
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationLink (destination: UserInfoView()){
                        Image(systemName: "person.circle").frame(width: 50, height: 50).font(.largeTitle).foregroundColor(.purple)
                    }
                    Button (action: toggleSearchInput){
                        Image(systemName: "magnifyingglass").frame(width: 50, height: 50).font(.largeTitle).foregroundColor(.purple)
                    }
                    Spacer()
                    Text("Franklin, TN").fontWeight(.semibold)
                    

                    NavigationLink (destination: TermsAndConditionsView()){
                        Image(systemName: "mappin.and.ellipse").frame(width: 50, height: 50).font(.largeTitle).foregroundColor(.purple)
                    }
                    NavigationLink (destination: TermsAndConditionsView()){
                        Image(systemName: "bubble.left").frame(width: 50, height: 50).font(.largeTitle).foregroundColor(.purple)
                    }
                    
                }.padding(.horizontal, 12)
                .navigationBarTitle("", displayMode: .inline)
                
                
                
                if showSearchInput {
                    TextField("Input", text: $inputText).font(.subheadline)
                        .padding(12)
                        .background(RoundedRectangle(cornerRadius: 5)
                        .strokeBorder(Color.gray))
                        .frame(width: 300, height: 30, alignment: .center)
                }
                Spacer()
                ScrollView {
                    HStack {
                        ItemCard(imageName: "milo", price: "30")
                        ItemCard(imageName: "wim", price: "400")
                        ItemCard(imageName: "milo", price: "10")
                    }.padding(.bottom)
                    HStack {
                        ItemCard(imageName: "wim", price: "320")
                        ItemCard(imageName: "milo", price: "40")
                        ItemCard(imageName: "milo", price: "10")
                    }.padding(.bottom)
                    HStack {
                        ItemCard(imageName: "milo", price: "30")
                        ItemCard(imageName: "wim", price: "400")
                        ItemCard(imageName: "milo", price: "10")
                    }.padding(.bottom)
                    HStack {
                        ItemCard(imageName: "milo", price: "30")
                        ItemCard(imageName: "wim", price: "400")
                        ItemCard(imageName: "milo", price: "10")
                    }.padding(.bottom)

                    
                    HStack {
                        ItemCard(imageName: "milo", price: "30")
                        ItemCard(imageName: "wim", price: "400")
                        ItemCard(imageName: "milo", price: "10")
                    }.padding(.bottom)
                    HStack {
                        ItemCard(imageName: "milo", price: "30")
                        ItemCard(imageName: "wim", price: "400")
                        ItemCard(imageName: "milo", price: "10")
                    }.padding(.bottom)
                    
                    
                    }.padding(.top, 50).cornerRadius(30)

                
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink (destination: HomeView()){
                        Image(systemName: "house").frame(width: 50, height: 50).font(.largeTitle).foregroundColor(.purple)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "camera").frame(width: 50, height: 50).font(.largeTitle).foregroundColor(.white)
                        }.padding().background(LinearGradient(gradient: Gradient( colors: [.purple, .blue]), startPoint: .leading, endPoint: .trailing)).cornerRadius(100).shadow(radius: 20)
                    Spacer()
                    NavigationLink (destination: TermsAndConditionsView()){
                        Image(systemName: "arrow.up.circle").frame(width: 50, height: 50).font(.largeTitle).foregroundColor(.purple)
                    }
                    NavigationLink (destination: TermsAndConditionsView()){
                        Image(systemName: "arrow.down.circle").frame(width: 50, height: 50).font(.largeTitle).foregroundColor(.purple)
                    }
                }.padding(.horizontal, 12)
            }.padding(.top, 2)
        }
        
    }
}

struct HomeVie_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
