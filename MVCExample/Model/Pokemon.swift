//
//  Pokemon.swift
//  MVCExample
//
//  Created by OITD on 29/07/23.
//

import Foundation

struct Pokemon {
    let name: String
    let image: String
    let ability: String
    
    init(dict: [String:String]) {
        self.name = dict["name"]!
        self.image = dict["image"]!
        self.ability = dict["ability"]!
    }
}
