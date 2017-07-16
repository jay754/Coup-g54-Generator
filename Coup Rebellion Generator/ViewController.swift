//
//  ViewController.swift
//  Coup Rebellion Generator
//
//  Created by Jay Engineer on 2017-07-07.
//  Copyright © 2017 Jay Engineer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // The Title UI labels
    @IBOutlet weak var communicationsTitle: UILabel!
    @IBOutlet weak var financeTitle: UILabel!
    @IBOutlet weak var forceTitle: UILabel!
    @IBOutlet weak var sp1Title: UILabel!
    @IBOutlet weak var sp2Title: UILabel!
    
    // The ability UI labels
    @IBOutlet weak var communicationsAbility: UILabel!
    @IBOutlet weak var financeAbility: UILabel!
    @IBOutlet weak var forceAbility: UILabel!
    @IBOutlet weak var sp1Ability: UILabel!
    @IBOutlet weak var sp2Ability: UILabel!
    
    // Initiate for data
    let C = Communications()
    let F = Finance()
    let Fo = Force()
    let sp1 = specialInterests()
    let sp2 = specialInterests()

    // onload method
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectItems()
    }
    
    //random num generator -> returns a tuple
    func rand() -> (cRoll: Int, fiRoll: Int, foRoll: Int, sp1: Int, sp2: Int) {
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
    
    // resizing the label to fit text
    func rSize(lab: UILabel, content: String) {
        lab.text = content
        lab.adjustsFontSizeToFitWidth = true
        lab.sizeToFit()
        lab.textAlignment = .center
    }
    
    // click button action
    @IBAction func generate() {
        selectItems()
    }
    
    // for getting the text and the data
    func selectItems() {
        let r = rand()
        
        rSize(lab: communicationsTitle, content: String(C.List[r.0]["Title"]!))
        rSize(lab: financeTitle, content: String(F.List[r.1]["Title"]!))
        rSize(lab: forceTitle, content: String(Fo.List[r.2]["Title"]!))
        rSize(lab: sp1Title, content: String(sp1.List[r.3]["Title"]!))
        rSize(lab: sp2Title, content: String(sp2.List[r.4]["Title"]!))
        
        rSize(lab: communicationsAbility, content: String(C.List[r.0]["Ability"]!))
        rSize(lab: financeAbility, content: String(F.List[r.1]["Ability"]!))
        rSize(lab: forceAbility, content: String(Fo.List[r.2]["Ability"]!))
        rSize(lab: sp1Ability, content: String(sp1.List[r.3]["Ability"]!))
        rSize(lab: sp2Ability, content: String(sp2.List[r.4]["Ability"]!))
    }
    
}

