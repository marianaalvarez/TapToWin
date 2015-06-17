//
//  ViewController.swift
//  TapToWin
//
//  Created by Mariana Alvarez on 16/06/15.
//  Copyright (c) 2015 Mariana Alvarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scorePlayer1: UILabel!
    @IBOutlet weak var scorePlayer2: UILabel!
    @IBOutlet weak var textPlayer1: UILabel!
    @IBOutlet weak var textPlayer2: UILabel!
    @IBOutlet weak var player1: UIButton!
    @IBOutlet weak var player2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textPlayer1.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_2))
        textPlayer2.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI_2))
        
        startButton.layer.cornerRadius = 5
        startButton.layer.borderWidth = 2
        startButton.layer.borderColor = UIColor.blackColor().CGColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        textPlayer1.text = "Player 1"
        textPlayer2.text = "Player 2"
        textPlayer2.textColor = UIColor.whiteColor()
        textPlayer2.textColor = UIColor.whiteColor()
        
        scorePlayer1.text = "0"
        scorePlayer2.text = "0"
        
        player1.hidden = true
        player2.hidden = true
    }

    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func startAction(sender: AnyObject) {
        
        textPlayer1.text = ""
        textPlayer2.text = ""
        textPlayer1.textColor = UIColor.whiteColor()
        textPlayer2.textColor = UIColor.whiteColor()
        
        scorePlayer1.text = "0"
        scorePlayer2.text = "0"
        
        startButton.hidden = true
        player1.hidden = false
        player2.hidden = false
    
    }
    
    @IBAction func player1(sender: AnyObject) {
        scorePlayer1.text = "\(scorePlayer1.text!.toInt()! + 1)"
        if (scorePlayer1.text!.toInt()! == 50) {
            textPlayer1.text = "You win!"
            textPlayer2.text = "You lose!"
            textPlayer2.textColor = UIColor.blackColor()
            
            startButton.hidden = false
            player1.hidden = true
            player2.hidden = true
    
        }
    }
    @IBAction func player2(sender: AnyObject) {
        scorePlayer2.text = "\(scorePlayer2.text!.toInt()! + 1)"
        if (scorePlayer2.text!.toInt()! == 50) {
            textPlayer2.text = "You win!"
            textPlayer1.text = "You lose!"
            textPlayer1.textColor = UIColor.blackColor()
            
            startButton.hidden = false
            player1.hidden = true
            player2.hidden = true
        }
    }
}

