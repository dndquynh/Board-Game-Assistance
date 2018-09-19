//
//  DiceViewController.swift
//  BoardgameAssistant
//
//  Created by Đỗ Quỳnh on 9/16/18.
//  Copyright © 2018 Đỗ Quỳnh. All rights reserved.
//

import Foundation
import UIKit

class DiceViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var DiceOne: UIImageView!
    
    @IBOutlet weak var DiceTwo: UIImageView!
    
    @IBAction func rollButtonTapped1(_ sender: Any) {
    }
    
    
    func rollLeftDice() {
        let result = Int(arc4random_uniform(6)) + 1
        DiceOne.image = UIImage(named: "Dice\(result)")
    }
    
    func rollRightDice() {
        let result = Int(arc4random_uniform(6)) + 1
        DiceTwo.image = UIImage(named: "Dice\(result)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
