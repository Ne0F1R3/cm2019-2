//
//  DetallesVC.swift
//  AppBanda
//
//  Created by Macbook on 4/29/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class DetallesVC: UIViewController {


    
    //Este va a cambiar
    @IBOutlet weak var cantidadPagar: UILabel!
    
    
    var cantidad = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cantidadPagar.text = cantidad
    }
    


}
