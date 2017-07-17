//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Zach Butcher on 7/16/17.
//  Copyright © 2017 Zach Butcher. All rights reserved.
//

import UIKit

class EmojiDetailViewController: UIViewController {

    
    var Emoji = ""
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = Emoji

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
