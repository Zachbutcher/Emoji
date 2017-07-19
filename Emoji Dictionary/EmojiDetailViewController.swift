//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Zach Butcher on 7/16/17.
//  Copyright © 2017 Zach Butcher. All rights reserved.
//

import UIKit

class EmojiDetailViewController: UIViewController {

    
    var emoji = Emoji()
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var category: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.emoji
        detailsLabel.text = emoji.definition
        year.text = emoji.birthyear
        category.text = emoji.category
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
