//
//  DinamicLabelVC.swift
//  TableView"
//
//  Created by Macbook on 5/6/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class DinamicLabelVC: UIViewController {

    @IBOutlet weak var SongName: UILabel!
    
    @IBOutlet weak var Description: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        SongName.text = song[miIndex]
        
        Description.text = description[ miIndex ]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
