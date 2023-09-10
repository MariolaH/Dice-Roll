//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var diceImageView1: UIImageView!
    @IBOutlet var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //  WHO         WHAT    VALUE
//        diceImageView1.image = UIImage(named: "DiceSix")
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        // .randomElement() and Int.random do the samething
        diceImageView1.image = UIImage(named: diceArray.randomElement() ?? "DiceOne")
        diceImageView2.image = UIImage(named: diceArray[Int.random(in: 0...5)])
    }
}
