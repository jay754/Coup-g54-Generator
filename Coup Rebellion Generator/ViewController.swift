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
    
    // init for labels to make sure they're available throughout
    public var labels: [UILabel] = []
    
    // Initiate for data
    let C = Communications()
    let F = Finance()
    let Fo = Force()
    let sp1 = specialInterests()
    let sp2 = specialInterests()
    
    // click button action
    @IBAction func generate() {
        selectItems()
    }
    
    // getting the ui labels
    func getLabels() {
        
        for subview in self.view.subviews as [UIView] {
            if let lab = subview as? UILabel{
                if lab.text! == "Ability" || lab.text! == "Title" {
                    self.labels.append(lab)
                }
            }
        }

    }
    
    // onload method
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectItems()
    }
    
    //random num generator -> returns a tuple
    private func rand() -> (cRoll: Int, fiRoll: Int, foRoll: Int, sp1: Int, sp2: Int) {
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
    private func rSize(lab: UILabel, content: String) {
        lab.text = content
        lab.adjustsFontSizeToFitWidth = true
        lab.sizeToFit()
        lab.textAlignment = .center
    }
    
    // for getting the text and the data
    private func selectItems() {
        let r = rand()
        getLabels()
        var i = 0
        
        let data: [String] = [ String(C.List[r.0]["Title"]!),
                               String(F.List[r.1]["Title"]!),
                               String(Fo.List[r.2]["Title"]!),
                               String(sp1.List[r.3]["Title"]!),
                               String(sp2.List[r.4]["Title"]!),
                               String(C.List[r.0]["Ability"]!),
                               String(F.List[r.1]["Ability"]!),
                               String(Fo.List[r.2]["Ability"]!),
                               String(sp1.List[r.3]["Ability"]!),
                               String(sp2.List[r.4]["Ability"]!) ]
        
        for element in self.labels {
            rSize(lab: element, content: data[i])
            i += 1
        }
    }
    
}

