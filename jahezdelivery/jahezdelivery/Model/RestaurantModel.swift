//
//  RestaurantModel.swift
//  jahezdelivery
//
//  Created by Capable on 10/02/2022.
//

struct RestaurantModel: Codable, Identifiable {
    enum CodingKeys: CodingKey {
        case id
        case name
        case description
        case hours
        case image
        case rating
        case distance
        case hasOffer
        
    }
    var id = 0
    var name = ""
    var description = ""
    var hours = ""
    var image = ""
    var rating = 0.0
    var distance = 0.0
    var hasOffer = false
    
}
