//
//  ViewController.swift
//  RPS
//
//  Created by Daniel Barcenas on 23/03/19.
//  Copyright © 2019 Erick Barcenas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var computerLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var rockBtn: UIButton!
    @IBOutlet weak var papperBtn: UIButton!
    @IBOutlet weak var scissorsBtn: UIButton!
    @IBOutlet weak var playAgainBtn: UIButton!
    
    var currentGameState: GameState = GameState.start
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        resetBoard()
    }
    
    func resetBoard(){
        computerLabel.text = "🤖"
        statusLabel.text = "rock, papper, scissors ?"
        rockBtn.isHidden = false
        rockBtn.isEnabled = true
        papperBtn.isHidden = false
        papperBtn.isEnabled = true
        scissorsBtn.isHidden = false
        scissorsBtn.isEnabled = true
        playAgainBtn.isHidden = true
    }
    
    func play(_ playerTurn: Sign){
        rockBtn.isEnabled = false
        papperBtn.isEnabled = false
        scissorsBtn.isEnabled = false
        
        let opponent = randomSign()
        computerLabel.text = opponent.emoji
        
        currentGameState = playerTurn.takeTurn(opponent)
        
        switch currentGameState {
        case .draw:
            statusLabel.text = "It's a draw"
        case .lose:
                statusLabel.text = "Sorry you lose!"
        case .win:
            statusLabel.text = "You win!"
        case .start:
            statusLabel.text = "Rock, Papper, Scissors ?"
        
        }
        
        switch playerTurn {
        case .rock:
            rockBtn.isHidden = false
            papperBtn.isHidden  = true
            scissorsBtn.isHidden  = true
        case .papper:
            rockBtn.isHidden  = true
            papperBtn.isHidden  = false
            scissorsBtn.isHidden = true
        case .scissors:
            rockBtn.isHidden  = true
            papperBtn.isHidden  = true
            scissorsBtn.isHidden = false
        }
        
        playAgainBtn.isHidden = false
        
    }

    @IBAction func playAgainSelected(_ sender: Any) {
        resetBoard()
    }
    
    @IBAction func rockSelected(_ sender: Any) {
        play(Sign.rock)
    }
    
    @IBAction func paperSelected(_ sender: Any) {
        play(Sign.papper)
    }
    
    @IBAction func scissorsSelected(_ sender: Any) {
        play(Sign.scissors)
    }
    
}

