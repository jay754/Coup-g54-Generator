//
//  ViewController.swift
//  Coup Rebellion Generator
//
//  Created by Jay Engineer on 2017-07-07.
//  Copyright © 2017 Jay Engineer. All rights reserved.
//

import UIKit

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
        
        communicationsAbility.text = String(C.List[r.0]["Ability"]!)
        financeAbility.text = String(F.List[r.1]["Ability"]!)
        forceAbility.text = String(Fo.List[r.2]["Ability"]!)
        sp1Ability.text = String(sp1.List[r.3]["Ability"]!)
        sp2Ability.text = String(sp2.List[r.4]["Ability"]!)
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

