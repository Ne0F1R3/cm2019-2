//
//  ViewController.swift
//  ColorMix
//
//  Created by Daniel Barcenas on 19/03/19.
//  Copyright © 2019 Daniel Barcenas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.backgroundColor = .black
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor

    }
    
    @IBAction func colorSwitch(_ sender: UISwitch) {
        updateColor()
    }
    
    @IBAction func percentSlider(_ sender: UISlider) {
         updateColor()
    }
    
    func updateColor(){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red: red, green:green, blue: blue, alpha:1)
        colorView.backgroundColor = color
    }
    
    @IBAction func resetbtn(_ sender: AnyObject) {
        redSlider.value = 0
        greenSlider.value = 0
        blueSlider.value = 0
        
        redSwitch.isOn = true
        greenSwitch.isOn = true
        blueSwitch.isOn = true
    }
    
}

