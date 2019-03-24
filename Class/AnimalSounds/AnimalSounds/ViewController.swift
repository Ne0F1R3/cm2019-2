//
//  ViewController.swift
//  AnimalSounds
//
//  Created by Daniel Barcenas on 23/03/19.
//  Copyright © 2019 Erick Barcenas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let meowSound = SimpleSound(named: "meow")
    let woofSound = SimpleSound(named: "woof")
    let mooSound = SimpleSound(named: "moo")


    @IBOutlet weak var animalSoundLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func catBtnTapped(_ sender: Any) {
        animalSoundLabel.text = "meow!"
        meowSound.play()
    }
    @IBAction func dogBtnTapped(_ sender: Any) {
        animalSoundLabel.text = "wow!"
        woofSound.play()
    }
    
    @IBAction func cowBtnTapped(_ sender: Any) {
        animalSoundLabel.text = "moo!"
        mooSound.play()
    }
    
}

