//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Justin Deal on 5/8/17.
//  Copyright © 2017 J Dub Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableCool: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableCool.dataSource = self
        tableCool.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as!
                            DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😍"
        emoji1.category = "Smiley"
        emoji1.definition = "Dude in love"
        emoji1.birthYear = 2007
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😂"
        emoji2.category = "Smiley"
        emoji2.definition = "LMFAO"
        emoji2.birthYear = 2008
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤡"
        emoji3.category = "Smiley"
        emoji3.definition = "Clown Man"
        emoji3.birthYear = 2010
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👻"
        emoji4.category = "Smiley"
        emoji4.definition = "Boo Dude"
        emoji4.birthYear = 2005
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐸"
        emoji5.category = "Animals"
        emoji5.definition = "Froggy"
        emoji5.birthYear = 2011
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "💩"
        emoji6.category = "Smiley"
        emoji6.definition = "Poo"
        emoji6.birthYear = 2006
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
    }
}

