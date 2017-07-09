//
//  ViewController.swift
//  Coup Rebellion Generator
//
//  Created by Jay Engineer on 2017-07-07.
//  Copyright © 2017 Jay Engineer. All rights reserved.
//

import UIKit

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

struct Communiactions {
    let List = [
        [
            "Title": "Director",
            "Ability": "Take two cards from the deck"
        ],
        [
            "Title": "Reporter",
            "Ability": " Take one card from the deck and 1 credit"
        ],
        [
            "Writer": "Take one card from the deck. After looking at the card, may pay 1 credit to take one more card from the deck (repeatable"
        ]
    ]
}

struct Finance {}

class ViewController: UIViewController {
    
//    let CommunicationsList = [Dictionary<String, String>]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

