//
//  CardModel.swift
//  Coup Rebellion Generator
//
//  Created by Jay Engineer on 2017-07-11.
//  Copyright © 2017 Jay Engineer. All rights reserved.
//

import Foundation

class Card {
    
    var TypeCard: String
    var Title: String
    var Ability: String
    
    init(TypeCard: String, Title: String, Ability: String){
        self.TypeCard = TypeCard
        self.Title = Title
        self.Ability = Ability
    }
}
