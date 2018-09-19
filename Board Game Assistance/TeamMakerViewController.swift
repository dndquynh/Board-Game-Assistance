//
//  TeamMakerViewController.swift
//  BoardgameAssistant
//
//  Created by Đỗ Quỳnh on 9/16/18.
//  Copyright © 2018 Đỗ Quỳnh. All rights reserved.
//

import UIKit

class TeamMakerViewController: UIViewController {

    @IBOutlet weak var teamMakerTitle: UILabel!
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "TeamMakerResult", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? TeamMakerResultViewController {
            vc.numOfPlayer = Int(numOfPlayerInput.text!)!
            vc.numOfTeam = Int(numOfTeamInput.text!)!
            for i in 0..<Int(numOfPlayerInput.text!)! {
                vc.numPlayer.append(i)
            }
        }
    }
    
    @IBOutlet weak var numOfTeamInput: UITextField!
    
    @IBOutlet weak var numOfTeamLabel: UILabel!
    
    @IBOutlet weak var numOfPlayerLabel: UILabel!
    
    @IBOutlet weak var numOfPlayerInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
