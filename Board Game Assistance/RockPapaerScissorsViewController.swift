//
//  RockPapaerScissorsViewController.swift
//  BoardgameAssistant
//
//  Created by Đỗ Quỳnh on 9/17/18.
//  Copyright © 2018 Đỗ Quỳnh. All rights reserved.
//

import UIKit

class RockPapaerScissorsViewController: UIViewController {

    let images = [UIImage(named: "Rock"), UIImage(named: "Paper"), UIImage(named: "Scissors")]
    @IBAction func ScissorButtonTapped(_ sender: Any) {
        setUpImageViewAnimation()
        finalResult.image = UIImage(named: "Scissors")
    }
    
    @IBAction func paperButtonTapped(_ sender: Any) {
        setUpImageViewAnimation()
        finalResult.image = UIImage(named: "Paper")
    }
    
    @IBAction func rockButtonTapped(_ sender: Any) {
        setUpImageViewAnimation()
        finalResult.image = UIImage(named: "Rock")
    }
    
    @IBOutlet weak var finalResult: UIImageView!
    @IBOutlet weak var someText: UILabel!
    @IBOutlet weak var rockPaperScissorsTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpImageViewAnimation()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpImageViewAnimation(){
        finalResult.image = UIImage.animatedImage(with: images as! [UIImage], duration: 1)
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
