//
//  ClassDiscography.swift
//  BandaAppCourse
//
//  Created by Daniel Barcenas on 26/04/19.
//  Copyright © 2019 Erick Barcenas. All rights reserved.
//

import UIKit

class ClassDiscography: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? ClassMoreInfo
        
        if segue.identifier == "snd_image1" {
            destination!.myImage = "hotSpace.jpg"
            destination!.myText = "Título: Hot Space \n Año: 1982 \n Canciones: --- \n Duración por cada canción: --- \n Precio: --- \n Precio por disco: ---"
        }else if segue.identifier == "snd_image2"{
            destination!.myImage = "aKindOfMagic.jpg"
            destination!.myText = "Título: A Kind of Magic \n Año: 1986 \n Canciones: --- \n Duración por cada canción: --- \n Precio: --- \n Precio por disco: ---"
            
        }else {
            destination!.myImage = "jazz.jpg"
            destination!.myText = "Título: Jazz \n Año: 1978 \n Canciones: --- \n Duración por cada canción: --- \n Precio: --- \n Precio por disco: ---"
        }
    }
}
