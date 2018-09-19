//
//  TeamMakerResultViewController.swift
//  BoardgameAssistant
//
//  Created by Đỗ Quỳnh on 9/17/18.
//  Copyright © 2018 Đỗ Quỳnh. All rights reserved.
//

import UIKit

extension MutableCollection {
    /// Shuffles the contents of this collection.
    mutating func shuffle() {
        let c = count
        guard c > 1 else { return }
        
        for (firstUnshuffled, unshuffledCount) in zip(indices, stride(from: c, to: 1, by: -1)) {
            // Change `Int` in the next line to `IndexDistance` in < Swift 4.1
            let d: Int = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            let i = index(firstUnshuffled, offsetBy: d)
            swapAt(firstUnshuffled, i)
        }
    }
}

extension Sequence {
    /// Returns an array with the contents of this sequence, shuffled.
    func shuffled() -> [Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}

class TeamMakerResultViewController: UIViewController {

    @IBOutlet weak var TeamMakerTitle: UILabel!
    
    @IBOutlet weak var TeamMakerScrollView: UIScrollView!
    
    
    var numOfPlayer: Int!
    var numOfTeam: Int!
    var teams : [[Int]] = []
    var numPlayer: [Int] = []
    var currentY = 0
    
    func devideTeam() {
        let shuffledPlayer = numPlayer.shuffled()
        print(numPlayer)
        print(shuffledPlayer)
        var remainder = numOfPlayer % numOfTeam
        var playerIndex = 0
        while playerIndex < numPlayer.count {
            for team in 0..<numOfTeam {
                print("\n")
                let teamLabel = UILabel(frame: CGRect(x: 0, y: currentY, width: 400, height: 40))
                var teamString = "Team \(team + 1): "
                teamLabel.text = teamString
                teamLabel.numberOfLines = 0
                
                TeamMakerScrollView.addSubview(teamLabel)
                currentY += 80
                if remainder > 0 {
                    for _ in 0..<((numOfPlayer / numOfTeam)) {
                        /*teams[team][player] = shuffledPlayer[playerIndex]
                        playerIndex += 1
                        remainder -= 1*/
                        print(shuffledPlayer[playerIndex])
                        teamString += "Player \(shuffledPlayer[playerIndex] + 1), "
                        teamLabel.text = teamString
                        playerIndex += 1
                    }
                    teamString += "Player \(shuffledPlayer[playerIndex] + 1) "
                    teamLabel.text = teamString
                    playerIndex += 1
                    remainder -= 1
                } else {
                    for _ in 0..<((numOfPlayer / numOfTeam) - 1) {
                        /*teams[team][player] = shuffledPlayer[playerIndex]
                        playerIndex += 1*/
                        print(shuffledPlayer[playerIndex])
                        teamString += "Player \(shuffledPlayer[playerIndex] + 1), "
                        teamLabel.text = teamString
                        playerIndex += 1
                    }
                    teamString += "Player \(shuffledPlayer[playerIndex] + 1) "
                    teamLabel.text = teamString
                    playerIndex += 1
                }
                teamLabel.sizeToFit()
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let lastView = TeamMakerScrollView.subviews.last
        let height = lastView?.frame.size.height
        let pos = lastView?.frame.origin.y
        let sizeOfContent = height! + pos!
        TeamMakerScrollView.contentSize = CGSize(width: 360, height: sizeOfContent + 490)
        TeamMakerScrollView.delegate = self as? UIScrollViewDelegate
        devideTeam()
        print(teams)
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
