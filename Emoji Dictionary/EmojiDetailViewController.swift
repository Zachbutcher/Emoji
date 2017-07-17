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
    var details = ""
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = Emoji
        detailsLabel.text = details

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
