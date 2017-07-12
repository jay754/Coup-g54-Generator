//
//  ViewController.swift
//  Coup Rebellion Generator
//
//  Created by Jay Engineer on 2017-07-07.
//  Copyright © 2017 Jay Engineer. All rights reserved.
//

import UIKit

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

struct specialInterests {
    let list = [
        [
            "Title": "Foreign Consular",
            "Ability": "Take the two Treaty tokens. Keep one and give the other to another player. You cannot target each other (including with coups)"
        ],
        [
            "Title": "Communist",
            "Ability": "Take up to 3 credits from richest player and give them to poorest player"
        ],
        [
            "Title": "Lawyer",
            "Ability": "When another player is eliminated, you may take all their credits."
        ],
        [
            "Title": "Customs Officer",
            "Ability": "Take the two Tax tokens. Keep one and place the other on a role card. Other players must give you 1 credit before claiming the chosen role"
        ],
        [
            "Title": "Peacekeeper",
            "Ability": "Take 1 credit and the Peacekeeping token. You cannot be targeted while you have the token (coups against you are still possible)"
        ],
        [
            "Title": "Missionary:",
            "Ability": "If you lose a life (except in a coup), you may claim to be a Missionary to take one card from the deck. If successfully challenged, lose another life. If unsuccessfully challenged, challenger loses a life"
        ],
        [
            "Title": "Politician",
            "Ability": "Take up to 2 credits from target."
        ],
        [
            "Title": "Protester",
            "Ability": "Pay 2 credits and choose a target. Another player can then pay 3 credits to make the target lose a life."
        ],
        [
            "Title": "Intellectual",
            "Ability": " If you lose a life, you may claim to be Intellectual to take 5 credits. If successfully challenged, lose another life. If unsuccessfully challenged, challenger loses a life."
        ],
        [
            "Title": "Priest",
            "Ability": "All other players give you 1 credit."
        ]
    ]
}

class ViewController: UIViewController {
    
    @IBOutlet weak var communicationsAbility: UILabel!
    @IBOutlet weak var financeAbility: UILabel!
    @IBOutlet weak var forceAbility: UILabel!
    @IBOutlet weak var sp1Ability: UILabel!
    @IBOutlet weak var sp2Ability: UILabel!
    
    let C = Communications()
    let F = Finance()
    let Fo = Force()
    let sp1 = specialInterests()
    let sp2 = specialInterests()

    override func viewDidLoad() {
        super.viewDidLoad()
        let r = rand()
        
        communicationsAbility.text = String(r.0)
        financeAbility.text = String(r.1)
        forceAbility.text = String(r.2)
        sp1Ability.text = String(r.3)
        sp2Ability.text = String(r.4)
    }
    
    func rand() -> (cRoll: Int, fiRoll: Int, foRoll: Int, sp1: Int, sp2: Int){
        let cRoll = Int(arc4random_uniform(UInt32(4)))
        let fiRoll = Int(arc4random_uniform(UInt32(5)))
        let foRoll = Int(arc4random_uniform(UInt32(5)))
        var sp1 = Int(arc4random_uniform(UInt32(10)))
        var sp2 = Int(arc4random_uniform(UInt32(10)))
        
        while sp1 == sp2 {
            sp1 = Int(arc4random_uniform(UInt32(10)))
            sp2 = Int(arc4random_uniform(UInt32(10)))
        }
        
        return (cRoll, fiRoll, foRoll, sp1, sp2)
    }

}

