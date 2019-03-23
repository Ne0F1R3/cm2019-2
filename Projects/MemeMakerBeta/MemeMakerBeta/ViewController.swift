//
//  ViewController.swift
//  MemeMakerBeta
//
//  Created by Daniel Barcenas on 23/03/19.
//  Copyright © 2019 Erick Barcenas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    var topChoices = [CaptionChoice]()
    var bottomChoices = [CaptionChoice]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let coolChoices = CaptionChoice(emoji: "🕶", caption: "You know what's cool?")
        let madChoices = CaptionChoice(emoji: "💥", caption: "You know what's makes me mad?")
        let loveChoices = CaptionChoice(emoji: "💕", caption: "You know what I love?")
        
        topChoices = [coolChoices, madChoices, loveChoices]
        topCaptionSegmentedControl.removeAllSegments()
        
        for choice in topChoices{
            
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        let catChoice = CaptionChoice(emoji: "😸", caption: "Cats wearing hats")
        let dogChoice = CaptionChoice(emoji: "🐶", caption: "Dogs carrying logs")
        
        let monkeyChoice = CaptionChoice(emoji: "🐵", caption: "Monkey being funky")
    
        bottomChoices = [catChoice, dogChoice, loveChoices]
        bottomCaptionSegmentedControl.removeAllSegments()
        
        for choice in bottomChoices{
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        updateLabels()
    }
    
    
    func updateLabels(){
        let topIndex = topCaptionSegmentedControl.selectedSegmentIndex
        let bottomIndex = bottomCaptionSegmentedControl.selectedSegmentIndex
        
        let topChoice = topChoices[topIndex]
        let bottomChoice = bottomChoices[bottomIndex]
        
        topCaptionLabel.text = topChoice.caption
        bottomCaptionLabel.text = bottomChoice.caption
    
    }
    
    
    @IBAction func choiceSelected(_ sender: Any) {
        updateLabels()
    }
    
    
    
}

