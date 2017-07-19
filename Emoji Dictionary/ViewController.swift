//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Zach Butcher on 7/15/17.
//  Copyright © 2017 Zach Butcher. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row].emoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        performSegue(withIdentifier: "moveSegue", sender: emojis[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defvc = segue.destination as! EmojiDetailViewController

            defvc.emoji = sender as! Emoji

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray () -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.emoji = "👑"
        emoji1.birthyear = "2010"
        emoji1.definition = "kings crown"
        emoji1.category = "Things"
        let emoji2 = Emoji()
        emoji2.emoji = "🤓"
        emoji2.birthyear = "2016"
        emoji2.definition = "Nerdy"
        emoji2.category = "Smiley"
        let emoji3 = Emoji()
        emoji3.emoji = "😜"
        emoji3.birthyear = "2010"
        emoji3.definition = "Goober"
        emoji3.category = "Smiley"
        let emoji4 = Emoji()
        emoji4.emoji = "❤️"
        emoji4.birthyear = "2016"
        emoji4.definition = "Heart"
        emoji4.category = "Hearts"
        let emoji7 = Emoji()
        emoji7.emoji = "😍"
        emoji7.birthyear = "2010"
        emoji7.definition = "love Face"
        emoji7.category = "Smiley"
        let emoji5 = Emoji()
        emoji5.emoji = "😘"
        emoji5.birthyear = "2010"
        emoji5.definition = "kiss face"
        emoji5.category = "Smiley"
        let emoji6 = Emoji()
        emoji6.emoji = "💑"
        emoji6.birthyear = "2016"
        emoji6.definition = "In Love"
        emoji6.category = "People"
        
        return [emoji1,emoji2,emoji3,emoji4,emoji7,emoji5,emoji6]
    }
    
}





