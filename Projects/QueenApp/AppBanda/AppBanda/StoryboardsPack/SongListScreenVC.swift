//
//  SongListScreenVC.swift
//  AppBanda
//
//  Created by Erick Barcenas on 19/05/19.
//  Copyright © 2019 Barcenas. All rights reserved.
//

import UIKit

class SongListScreenVC: UIViewController {

    @IBOutlet weak var viewControllerSong: UITableView!
    
    var images_list_song: [SongAlmbum] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images_list_song = createArray()

    }
    func createArray() -> [SongAlmbum]{
        
        let image1 = SongAlmbum(imageSong:  #imageLiteral(resourceName: "dev-setup"), titleSong: "Song 1", timeSong: "11s", precioSong: "Precio: $2")
        let image2 = SongAlmbum(imageSong:  #imageLiteral(resourceName: "dev-setup"), titleSong: "Song 2", timeSong: "12s", precioSong: "Precio: $3")
        let image3 = SongAlmbum(imageSong:  #imageLiteral(resourceName: "dev-setup"), titleSong: "Song 3", timeSong: "13s", precioSong: "Precio: $5")
        let image4 = SongAlmbum(imageSong:  #imageLiteral(resourceName: "dev-setup"), titleSong: "Song 4", timeSong: "14s", precioSong: "Precio: $4")
        return [image1,image2,image3,image4]
    }
}

extension SongListScreenVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images_list_song.count
}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let image_temp = images_list_song[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ID_ImageCell3Song") as! SongTVCell
        
        cell.setImageSong(image: image_temp)
        return cell
    }
    
}

