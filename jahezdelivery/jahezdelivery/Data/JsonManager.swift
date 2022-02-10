//
//  JsonListSwiftUIView.swift
//  jahezdelivery
//
//  Created by Hussain Anwer on 09/02/2022.
//

import SwiftUI

class ReadData: ObservableObject  {
    @Published var restaurant = [RestaurantModel]()
    
    
    init(){
        loadData()
    }
    
    func loadData()  {
        guard let url = Bundle.main.url(forResource: "restaurants", withExtension: "json")
        else {
            print("Json file not found")
            return
        }
        
        
        let data = try? Data(contentsOf: url)
        let restaurant = try? JSONDecoder().decode([RestaurantModel].self, from: data!)
        self.restaurant = restaurant!
        
    }
}




