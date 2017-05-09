//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Justin Deal on 5/8/17.
//  Copyright © 2017 J Dub Apps. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        if emoji == "😍" {
           definitionLabel.text = "Dude in love"
        }
        if emoji == "😂" {
            definitionLabel.text = "LMFAO"
        }
        if emoji == "🤡" {
            definitionLabel.text = "A smiley clown"
        }
        if emoji == "👻" {
            definitionLabel.text = "Boo scary ghost!"
        }
        if emoji == "🐸" {
            definitionLabel.text = "Froggy"
        }
        if emoji == "💩" {
            definitionLabel.text = "Poo"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
