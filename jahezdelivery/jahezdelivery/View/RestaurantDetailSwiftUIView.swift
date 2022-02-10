//
//  MainSwiftUIView.swift
//  jahezdelivery
//
//  Created by Hussain Anwer on 08/02/2022.
//

import SwiftUI

struct RestaurantDetailSwiftUIView: View {
    
    var  restaurant : RestaurantModel!
    
    
    var body: some View {
        ScrollView{
            VStack (spacing: 1){
                HStack(spacing: 0) {
                    
                    AsyncImage(
                        url: URL(string: restaurant.image),
                        content: { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 300, maxHeight: 100)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                    
                    
                    
                }
                HStack (spacing: 1){
                    Text(restaurant.name).padding().scaledToFit().fixedSize()
                    VStack(spacing: 0) {
                        Text(restaurant.description)
                            .padding(.all).frame(maxWidth: .infinity).fixedSize(horizontal: false, vertical: true)
                    }.border(Color.black)
                }.border(Color.black)
                HStack(spacing: 1){
                    
                    Text(restaurant.hours).frame(maxWidth: .infinity).padding(.all)
                    
                    Text(String(format: "%.1f", restaurant.rating)).frame(maxWidth: .infinity).padding(.all)
                    
                }.border(Color.black)
            } .border(Color.black)
        }.padding()
    }
}

struct MainSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailSwiftUIView()
    }
}
