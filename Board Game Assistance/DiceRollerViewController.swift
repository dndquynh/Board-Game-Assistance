//
//  DiceRollerViewController.swift
//  BoardgameAssistant
//
//  Created by Đỗ Quỳnh on 9/16/18.
//  Copyright © 2018 Đỗ Quỳnh. All rights reserved.
//

import UIKit

class DiceRollerViewController: UIViewController {

    @IBOutlet weak var rightDiceImage: UIImageView!
    @IBOutlet weak var leftDiceImage: UIImageView!
    @IBAction func rollButtonTapped(_ sender: Any) {
        leftDiceRoll()
        rightDiceRoll()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func leftDiceRoll() {
        let result = Int(arc4random_uniform(6)) + 1
        leftDiceImage.image = UIImage(named: "Dice\(result)")
    }
    
    func rightDiceRoll() {
        let result = Int(arc4random_uniform(6)) + 1
        rightDiceImage.image = UIImage(named: "Dice\(result)")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
