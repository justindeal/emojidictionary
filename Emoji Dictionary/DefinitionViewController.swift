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
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthYearLabel: UILabel!
    
    
    var emoji = Emoji()


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        definitionLabel.text = "\(emoji.definition)"
        birthYearLabel.text = "Birth Year: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
