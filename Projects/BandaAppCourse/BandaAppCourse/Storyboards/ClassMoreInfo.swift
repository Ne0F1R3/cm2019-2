//
//  ClassMoreInfo.swift
//  BandaAppCourse
//
//  Created by Daniel Barcenas on 26/04/19.
//  Copyright © 2019 Erick Barcenas. All rights reserved.
//

import UIKit

class ClassMoreInfo: UIViewController {

    @IBOutlet weak var imageChange: UIImageView!
    
    @IBOutlet weak var labelMoreInfo: UILabel!
    
    
    var myImage = " "
    var myText = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.imageChange.image = UIImage(named: myImage)
        
        self.labelMoreInfo.text = myText
        
    }
    
    
}
