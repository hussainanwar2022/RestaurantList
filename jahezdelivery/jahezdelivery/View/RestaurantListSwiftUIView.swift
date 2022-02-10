//
//  RestaurantListSwiftUIView.swift
//  jahezdelivery
//
//  Created by Hussain Anwer on 08/02/2022.
//

import SwiftUI

struct RestaurantListSwiftUIView: View {
    
    var  restaurant : RestaurantModel!
    
    var body: some View {
        
        NavigationLink(destination: RestaurantDetailSwiftUIView(restaurant: restaurant)) {
            
            
            
            HStack {
                
                
                
                AsyncImage(
                    url: URL(string: restaurant.image),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit) 
                    },
                    placeholder: {
                        ProgressView()
                    }
                ).frame(width: 60.0, height:60,alignment: .center)
                    .scaledToFit()
                
                
                
                HStack(spacing: 1){
                    
                    Text(restaurant.name).frame(maxWidth: .infinity, alignment: .leading).padding()
                    
                    Text(String(format: "%.2f km", restaurant.distance)).font(.footnote)
                    
                }
                
            }
            
            
            
            
        }
    }
}

struct RestaurantListSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantListSwiftUIView()
    }
}
