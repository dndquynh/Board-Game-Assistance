//
//  ViewController.swift
//  BoardgameAssistant
//
//  Created by Đỗ Quỳnh on 9/16/18.
//  Copyright © 2018 Đỗ Quỳnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    


    @IBAction func DiceRollerButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "DiceRoller", sender: nil)
    }
    
    @IBAction func TeamMakerButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "TeamMaker", sender: nil)
    }
    
    @IBAction func RockPaperScissorsButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "RPS", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

