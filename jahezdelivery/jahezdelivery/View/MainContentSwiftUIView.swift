//
//  ContentView.swift
//  jahezdelivery
//
//  Created by Hussain Anwer on 08/02/2022.
//

import SwiftUI



struct MainContentSwiftUIView: View {
    
    @ObservedObject var datas = ReadData()
    
    func sortdata() {
        datas.restaurant = datas.restaurant.sorted(by: {
            $0.distance < $1.distance
        })
    }
    
    var body: some View {
        
        NavigationView {
            
            List(datas.restaurant){ restaurant in
                
                
                
                
                
                RestaurantListSwiftUIView(restaurant: restaurant)
                
                
                
                
            }.navigationTitle("Restuarants").navigationBarItems(  trailing: Button(action: self.sortdata, label: { Text("Sort by Distance") }))
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentSwiftUIView()
    }
}
