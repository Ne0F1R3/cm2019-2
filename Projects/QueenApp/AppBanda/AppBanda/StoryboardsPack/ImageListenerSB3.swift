//
//  ImageListenerSB3.swift
//  AppBanda
//
//  Created by Erick Barcenas on 19/05/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class ImageListenerSB3: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var images_list: [Image3] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images_list = createArray()
        
        
        //tableView.delegate = self
        //tableView.dataSource = self
    }
    
    func createArray() -> [Image3]{
        
       
        let image1 = Image3(image:  #imageLiteral(resourceName: "aKindOfMagic"), title: "A King of Magic", subtitle: "Beautiful!", año: "Año: 2000", precio: "$3200")
        let image2 = Image3(image:  #imageLiteral(resourceName: "hotSpace"), title: "Hot Space", subtitle: "Beautiful!", año: "Año:  2001", precio: "$3200")
        let image3 = Image3(image:  #imageLiteral(resourceName: "aKindOfMagic"), title: "Jazz", subtitle: "Beautiful!", año: "Año: 2002", precio: "$3200")
       // let image2 = Image3(image: Jazz, title: "jazz", subtitle: "Beautiful!")
        return [image1,image2,image3]
    }
}

extension ImageListenerSB3: UITableViewDataSource, UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return images_list.count
        }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let image_temp = images_list[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "ID_ImageCell3") as! ImageCell3

            cell.setImage(image: image_temp)
            return cell
    }
    //This is for pass info and the image
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let passData = UIStoryboard(name: "TableBandaSB3", bundle: nil)
        let destinationVC = storyboard?.instantiateViewController(withIdentifier: "MasInfoSB3") as! MasInfoSB3
        
       /*destinationVC.getImage = images_list[indexPath.row] as! UIImage*/
        
        /*destinationVC.getTitle = images_list[indexPath.row] as! String*/
       
        destinationVC.getImage = images_list[indexPath.row].image
        
        destinationVC.getTitle = images_list[indexPath.row].title
        
        destinationVC.getAño = images_list[indexPath.row].año
        
        destinationVC.getPrecio = images_list[indexPath.row].precio
        
        self.navigationController?.pushViewController(destinationVC , animated: true)
    }
    
    //With button
   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? MasInfoSB3
        
        if segue.identifier == "snd_image" {
            destination!.myImage = "jazz"
            destination!.titleList = images_list[indexPath.row]
        }
    }*/
    
    
}












