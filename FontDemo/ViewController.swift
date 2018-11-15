//
//  ViewController.swift
//  FontDemo
//
//  Created by Nikoloz Tatunashvili on 11/15/18.
//  Copyright © 2018 Nikoloz TatunaSvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var upperCaseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let topTitle = "ეს არის ჩვეულებრივი ტექსტი"
        let uppercasedTitle = "ეს არის ასომთავრული ტექსტი"
        
        titleLabel.text = topTitle
        titleLabel.font = AppFonts.light.font(for: 16)
        
        upperCaseLabel.text = uppercasedTitle
        upperCaseLabel.font = AppFonts.light.upperCasedFont(for: 16)
        
    }

}

