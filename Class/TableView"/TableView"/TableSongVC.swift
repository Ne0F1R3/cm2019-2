
import UIKit

var song_array = ["Song_1", "Song_2", "Song_3"]
var description_array = ["lorem1","lorem2","lorem3"]

var image_Array = ["jazz200.jpg"]



var miIndex = 0




class TableSongVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    /*    override func numberOfSections(in tableView: UITableView) -> Int {
     /*Number of sections -> according to the size of the arrangement*/
     
     return song_array.count
     }
     
     597*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 0
        return song_array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ID_Cell_1", for: indexPath)
        
        cell.textLabel?.text = song_array[indexPath.row]
        //cell.imageView?.image = image_Array[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        miIndex = indexPath.row
        performSegue(withIdentifier: "ID_SegueSong", sender: self)
    }
    
    @IBAction func unwindsegue(_ sender: UIStoryboardSegue){}
}
