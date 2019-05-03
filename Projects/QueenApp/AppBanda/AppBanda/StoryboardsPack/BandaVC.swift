//
//  BandaVC.swift
//  AppBanda
//
//  Created by Erick Barcenas on 29/04/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class BandaVC: UIViewController {

    @IBOutlet weak var lbInfoQueen: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.lbInfoQueen.text = "Queen es una banda de rock británica fundada \n en 1970 por su cantante, Freddie Mercury, \nBrian May en la guitarra, Roger Taylor en la batería y John Deacon en el bajo."
    }
    
    

}
