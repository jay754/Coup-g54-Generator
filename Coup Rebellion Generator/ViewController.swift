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

struct Communications {
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
            "Title": "Writer",
            "Ability": "Take one card from the deck. After looking at the card, may pay 1 credit to take one more card from the deck (repeatable"
        ],
        [
            "Title": "Newscaster",
            "Ability": "Pay 1 credit and take three cards from the deck."
        ]
    ]
}

struct Finance {
    let List = [
        [
            "Title": "Speculator",
            "Ability": "Double your credits (max. 5). If successfully challenged, return extra credits to the treasury and pay challenger your initial amount."
        ],
        [
            "Title": "Capitalist",
            "Ability": " Take 4 credits. Other players can then also claim to be a Capitalist. Once all challenges are resolved, pay 1 credit to every other surviving Capitalist."
        ],
        [
            "Title": "Banker",
            "Ability": "Take 3 credits"
        ],
        [
            "Title": "Farmer",
            "Ability": "Take 3 credits and give 1 credit to another player."
        ],
        [
            "Title": "Spy",
            "Ability": "Take 1 credit and another action"
        ]
    ]
}

struct Force {
    let List = [
        [
            "Title": "Guerilla",
            "Ability": " Pay 4 credits to make target lose a life."
        ],
        [
            "Title": "Mercenary",
            "Ability": "Pay 3 credits to place Disappear token on a target. Target loses a life at the end of their next turn."
        ],
        [
            "Title": "Crime Boss",
            "Ability": "Choose a target. Target can give you 2 credits to end turn. Otherwise, pay 5 credits to make target lose a life."
        ],
        [
            "Title": "Judge",
            "Ability": "Give 3 credits to target to make target lose a life. If target counteracts, she keeps the 3 credits"
        ],
        [
            "Title": "General",
            "Ability": "Pay 5 credits to make all other players lose a life"
        ]
    ]
}

class ViewController: UIViewController {
    
    @IBOutlet weak var communicationsAbility: UILabel!
    @IBOutlet weak var financeAbility: UILabel!
    @IBOutlet weak var forceAbility: UILabel!
    let C = Communications()
    let F = Finance()
    let Fo = Force()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(C.List[0]["Ability"] ?? "bob")
        communicationsAbility.text = C.List[0]["Ability"]
        financeAbility.text = F.List[0]["Ability"]
        forceAbility.text = Fo.List[0]["Ability"]
    }
    
    func rand() -> Int{
        let diceRoll = Int(arc4random_uniform(UInt32(6)))
        return diceRoll
    }

}

