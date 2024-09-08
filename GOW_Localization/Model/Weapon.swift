//
//  Weapon.swift
//  GOW_Localization
//
//  Created by Azul Alfaro on 30/08/24.
//

import Foundation

struct Weapon{
    //let id: Int
    let name: String
    let description: String
    let poster: String
    
    init(name: String, description: String, poster: String) {
        //self.id = id
        self.name = name
        self.description = description
        self.poster = poster
    }
}
